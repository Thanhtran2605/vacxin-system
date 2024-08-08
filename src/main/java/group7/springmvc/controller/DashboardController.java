package group7.springmvc.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import group7.springmvc.service.UserService;

@Controller
@RequestMapping("/admin")
public class DashboardController {

	@GetMapping("/")
	public String dashboard() {
		return "admin/dashboard/index";
	}
	
	@Autowired
	UserService userService;
	
	@GetMapping("/profile")
	public String profile(Model model) {
		//model.addAttribute("newUser" ,new User());
		return "admin/auth/profile";
	}

}
