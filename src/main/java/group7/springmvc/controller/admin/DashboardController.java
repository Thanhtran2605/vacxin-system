package group7.springmvc.controller.admin;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import group7.springmvc.model.Doctor;
import group7.springmvc.model.Employee;
import group7.springmvc.model.Payment;
import group7.springmvc.model.Receptionist;
import group7.springmvc.model.User;
import group7.springmvc.model.VaccineSchedule;
import group7.springmvc.service.DoctorService;
import group7.springmvc.service.EmployeeService;
import group7.springmvc.service.PaymentService;
import group7.springmvc.service.ReceptionistService;
import group7.springmvc.service.ScheduleService;
import group7.springmvc.service.UserService;
import group7.springmvc.service.VaccineService;

@Controller
@RequestMapping("/admin")
public class DashboardController {

	@Autowired
	UserService userService;

	@Autowired
	VaccineService vaccineService;

	@Autowired
	ScheduleService scheduleService;

	@Autowired
	EmployeeService employeeService;

	@Autowired
	DoctorService doctorService;

	@Autowired
	ReceptionistService receptionistService;
	
	@Autowired
	PaymentService paymentService;

	@GetMapping("/")
	public String dashboard(Model model) {
		List<User> listUser = userService.findAll();
		model.addAttribute("sizeUser", listUser.size());
		model.addAttribute("sizeVaccine", vaccineService.findAll().size());
		model.addAttribute("sizeSchedule", scheduleService.getAllSchedules().size());
		int numberADMIN = 0;
		int numberDOCTOR = 0;
		int numberRECEPTIONIST = 0;
		int numberPATIENT = 0;
		for (User user : listUser) {
			String roleValue = user.getRole().getValue().toString();
			if (roleValue.equals("ADMIN")) {
				++numberADMIN;
			} else if (roleValue.equals("DOCTOR")) {
				++numberDOCTOR;
			} else if (roleValue.equals("RECEPTIONIST")) {
				++numberRECEPTIONIST;
			} else if (roleValue.equals("PATIENT")) {
				++numberPATIENT;
			}

		}
		model.addAttribute("numberADMIN", numberADMIN);
		model.addAttribute("numberDOCTOR", numberDOCTOR);
		model.addAttribute("numberRECEPTIONIST", numberRECEPTIONIST);
		model.addAttribute("numberPATIENT", numberPATIENT);

		return "admin/dashboard/index";
	}

	@GetMapping("/profile")
	public String profile(Model model, HttpSession session) {
		String loginUserName = (String) session.getAttribute("username");
		User currentUser = userService.findByUsername(loginUserName);
		Employee currentEmployee = employeeService.findByUser(currentUser);
		Doctor currentDoctor = doctorService.findByEmployee(currentEmployee);
		Receptionist currentReceptionist = receptionistService.findByEmployee(currentEmployee);
		if (currentEmployee != null) {
			if (currentDoctor != null) {
				model.addAttribute("currentEmployee", currentDoctor);
				return "admin/auth/profile";
			} else if (currentReceptionist != null) {
				model.addAttribute("currentEmployee", currentReceptionist);
				return "admin/auth/profile";
			}
		}
		model.addAttribute("currentUser", currentUser);
		return "admin/auth/profile";
	}

	@GetMapping("/my-schedule")
	public String viewMySchedule(Model model, HttpSession session) {

		String loginUserName = (String) session.getAttribute("username");
		User currentUser = userService.findByUsername(loginUserName);
		Employee currentEmployee = employeeService.findByUser(currentUser);
		Doctor currentDoctor = doctorService.findByEmployee(currentEmployee);

		if (currentDoctor != null) {
			model.addAttribute("currentEmployee", currentDoctor);
			List<VaccineSchedule> schedules = scheduleService.searchSchedulesByDoctor(currentDoctor.getId());
			model.addAttribute("schedules", schedules);
		} else {
			model.addAttribute("schedules", new ArrayList<>());
		}

		model.addAttribute("currentUser", currentUser);
		List<VaccineSchedule> allSchedules = scheduleService.getAllSchedulesAfterToday();
		model.addAttribute("allSchedules", allSchedules);

		return "admin/QL_schedule/my-schedule";

	}

	@GetMapping("/my-schedule/{id}")
	public String updatedatiem(@PathVariable("id") long id, @RequestParam("status") String status) {
		VaccineSchedule schedule = scheduleService.findById(id).get();
		Payment payment = paymentService.findBySchedule(schedule);
		if (status.equals("COMPLETED")) {
			schedule.setStatus(VaccineSchedule.Status.COMPLETED);
			payment.setStatus(Payment.Status.PAYMENT);
			paymentService.save(payment);
		}
		if (status.equals("LATE")) {
			schedule.setStatus(VaccineSchedule.Status.LATE);
		}
		scheduleService.addSchedule(schedule);

		return "redirect:/admin/my-schedule";
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "admin/Contact/index";
	}
}
