package group7.springmvc.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group7.springmvc.model.Employee;
import group7.springmvc.model.Receptionist;
import group7.springmvc.model.User;
import group7.springmvc.service.EmployeeService;
import group7.springmvc.service.ReceptionistService;
import group7.springmvc.service.UserService;

@Controller
@RequestMapping("/admin/receptionist")
public class ReceptionistController {

	@Autowired
	private ReceptionistService receptionistService;

	@Autowired
	private EmployeeService employeeService;

	@Autowired
	private UserService userService;

	@GetMapping("")
	public String listReceptionists(@RequestParam(value = "search", required = false) String search, ModelMap model) {
		List<Receptionist> receptionists;

		if (search != null && !search.trim().isEmpty()) {
			// Tìm kiếm bằng cách sử dụng search term
			receptionists = receptionistService.findByIdOrName(search);
		} else {
			// Nếu không có tìm kiếm, lấy tất cả receptionists
			receptionists = receptionistService.findAll();
		}

		model.addAttribute("receptionists", receptionists);
		return "admin/QL_receptionist/index";
	}

	@GetMapping("/edit/{id}")
	public String editReceptionist(@PathVariable("id") Long id, ModelMap model) {
		Receptionist receptionist = receptionistService.findById(id).orElse(null);
		if (receptionist != null) {
			model.addAttribute("receptionist", receptionist);
			return "admin/QL_receptionist/edit";
		} else {
			return "redirect:/admin/receptionist";
		}
	}

	@PostMapping("/edit/{id}")
	public String updateReceptionist(@PathVariable("id") Long id, @RequestParam("shift") String shift,
			@RequestParam("languagesSpoken") String languagesSpoken, RedirectAttributes redirectAttributes) {
		Receptionist receptionist = receptionistService.findById(id).orElse(null);
		if (receptionist != null) {
			receptionist.setShift(shift);
			receptionist.setLanguagesSpoken(languagesSpoken);
			receptionistService.save(receptionist);
			redirectAttributes.addFlashAttribute("message", "Receptionist updated successfully!");
		} else {
			redirectAttributes.addFlashAttribute("error", "Receptionist not found!");
		}
		return "redirect:/admin/receptionist";
	}

	@PostMapping("/delete")
	public String deleteReceptionist(@RequestParam("receptionistId") Long receptionistId,
			RedirectAttributes redirectAttributes) {
		receptionistService.deleteById(receptionistId);
		redirectAttributes.addFlashAttribute("message", "Receptionist deleted successfully!");
		return "redirect:/admin/receptionist";
	}

	@PostMapping("/add")
	public String addReceptionist(@RequestParam Long userId, @RequestParam String shift, @RequestParam String language,
			@RequestParam double salary, @RequestParam String department, RedirectAttributes redirectAttributes) {

		// Kiểm tra xem userId đã tồn tại trong bảng Employee chưa
		if (employeeService.findByUserId(userId).isPresent()) {
			redirectAttributes.addFlashAttribute("error", "User ID already exists in Employee table.");
			return "redirect:/admin/receptionist/add";
		}

		// Fetch user details
		User user = userService.findById(userId).orElseThrow(() -> new IllegalArgumentException("Invalid user ID"));

		// Add employee
		Employee employee = new Employee();
		employee.setUser(user);
		employee.setSalary(salary);
		employee.setDepartment(department);
		employeeService.save(employee);

		// Add receptionist
		Receptionist receptionist = new Receptionist();
		receptionist.setEmployee(employee);
		receptionist.setShift(shift);
		receptionist.setLanguagesSpoken(language);
		receptionistService.save(receptionist);

		redirectAttributes.addFlashAttribute("message", "Receptionist added successfully");
		return "redirect:/admin/receptionist";
	}

	@GetMapping("/add")
	public String showAddReceptionistForm(Model model) {
		byte roleId = 2;
		List<User> users = userService.findUsersByRoleId(roleId);
		model.addAttribute("users", users);
		return "admin/QL_receptionist/add";
	}

}
