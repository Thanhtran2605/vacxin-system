package group7.springmvc.controller.admin;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import group7.springmvc.model.User;
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
	public String profile(Model model) {
		return "admin/auth/profile";
	}

}
