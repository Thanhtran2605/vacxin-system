package group7.springmvc.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {
	
	@GetMapping("/home")
	public String home() {
		return "client/home";
	}
	
	@GetMapping("/")
    public String root() {
        return "redirect:/home";
    }
	
	@GetMapping("/about")
	public String about() {
		return "client/about";
	}
	
	@GetMapping("/contact")
	public String contact() {
		return "client/contact";
	}
	
}
