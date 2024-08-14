package group7.springmvc.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group7.springmvc.model.Doctor;
import group7.springmvc.service.DoctorService;
import group7.springmvc.service.EmployeeService;
import group7.springmvc.service.UserService;

@Controller
@RequestMapping("/admin/doctor")
public class DoctorController {

	@Autowired
	private DoctorService doctorService;
	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private UserService userService;

//	@GetMapping("")
//	public String listDoctors(ModelMap model) {
//		List<Doctor> doctors = doctorService.findAll();
//		model.addAttribute("doctors", doctors);
//		return "admin/QL_doctor/index";
//	}

	@GetMapping("")
	public String listDoctors(@RequestParam(value = "search", required = false) String search, ModelMap model) {
		List<Doctor> doctors;

		if (search != null && !search.trim().isEmpty()) {
			// Tìm kiếm bằng cách sử dụng search term
			doctors = doctorService.findByIdOrName(search);
		} else {
			// Nếu không có tìm kiếm, lấy tất cả bác sĩ
			doctors = doctorService.getAllDoctors();
		}

		model.addAttribute("doctors", doctors);
		return "admin/QL_doctor/index";
	}

	@GetMapping("/edit/{id}")
	public String editDoctor(@PathVariable("id") Long id, ModelMap model) {
		Doctor doctor = doctorService.getDoctorById(id);
		if (doctor != null) {
			model.addAttribute("doctor", doctor);
			return "admin/QL_doctor/edit";
		} else {
			return "redirect:/admin/doctor";
		}
	}

	@PostMapping("/edit/{id}")
	public String updateDoctor(@PathVariable("id") Long id, @RequestParam("specialization") String specialization,
			@RequestParam("licenseNumber") String licenseNumber,
			@RequestParam("yearsOfExperience") int yearsOfExperience, RedirectAttributes redirectAttributes) {

		Doctor doctor = doctorService.getDoctorById(id);
		if (doctor != null) {
			doctor.setSpecialization(specialization);
			doctor.setLicenseNumber(licenseNumber);
			doctor.setYearsOfExperience(yearsOfExperience);
			doctorService.save(doctor);
			redirectAttributes.addFlashAttribute("message", "Doctor updated successfully!");
		} else {
			redirectAttributes.addFlashAttribute("error", "Doctor not found!");
		}
		return "redirect:/admin/doctor";
	}

	@PostMapping("/delete")
	public String deleteDoctor(@RequestParam("doctorId") Long doctorId, RedirectAttributes redirectAttributes) {
		doctorService.deleteById(doctorId);
		redirectAttributes.addFlashAttribute("message", "Doctor deleted successfully!");
		return "redirect:/admin/doctor";
	}

//	@GetMapping("/add")
//	public String showAddDoctorForm(ModelMap model) {
//		model.addAttribute("doctor", new Doctor());
//		return "admin/QL_doctor/add";
//	}

}