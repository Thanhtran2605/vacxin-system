package group7.springmvc.controller.admin;

import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import group7.springmvc.model.Doctor;
import group7.springmvc.model.Employee;
import group7.springmvc.model.Receptionist;
import group7.springmvc.model.User;
import group7.springmvc.service.DoctorService;
import group7.springmvc.service.EmployeeService;
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
		String loginUserName = (String)session.getAttribute("username");
		User currentUser = userService.findByUsername(loginUserName);
		Employee currentEmployee = employeeService.findByUser(currentUser);
		Doctor currentDoctor = doctorService.findByEmployee(currentEmployee);
		Receptionist currentReceptionist = receptionistService.findByEmployee(currentEmployee);
		if(currentEmployee != null) {
			if(currentDoctor != null) {
				model.addAttribute("currentEmployee", currentDoctor);
				return "admin/auth/profile";
			} else if(currentReceptionist != null) {
				model.addAttribute("currentEmployee", currentReceptionist);
				return "admin/auth/profile";
			}
		}
		model.addAttribute("currentUser", currentUser);
		return "admin/auth/profile";
	}

}
