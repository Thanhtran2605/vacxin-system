package group7.springmvc.controller.client;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import group7.springmvc.model.User;
import group7.springmvc.service.PatientService;
import group7.springmvc.service.UserService;

@Controller
public class PatientController {
	
	@Autowired
	PatientService patientService;
	@Autowired
	UserService userService;
	
	@GetMapping("/info")
	public String info(HttpSession session, Model model) {
		User user = userService.findByUsername(session.getAttribute("username").toString());
		System.out.println(user.toString());
		return "client/infoUser";
	}
}
