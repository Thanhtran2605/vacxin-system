package group7.springmvc.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import group7.springmvc.model.User;
import group7.springmvc.service.RoleService;
import group7.springmvc.service.UserService;

@Controller
public class AuthController {
	
	@Autowired
	RoleService roleService;
	
	@Autowired
	UserService userService;
	
	@Autowired
	PasswordEncoder passwordEncoder;
	
	@GetMapping("/login")
	public String login() {
		return "admin/auth/login";
	}
	
	@GetMapping("/register")
	public String register(Model model) {
		model.addAttribute("newUser" ,new User());
		return "admin/auth/register";
	}
	
	@PostMapping("/register")
	public String register_post(@ModelAttribute("newUser") User user, BindingResult bindingResult,
			Model model) {
		String hassPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(hassPassword);
		user.setRole(roleService.findByValue("USER"));
		userService.save(user);
		return "redirect:/login";
	}
	
	
}
