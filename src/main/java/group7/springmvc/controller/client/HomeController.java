package group7.springmvc.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import group7.springmvc.model.Vaccine;
import group7.springmvc.service.VaccineService;

@Controller
public class HomeController {
	@Autowired
	VaccineService vacxinService;

	@GetMapping("/home")
	public String home(ModelMap model) {
		List<Vaccine> vacxins;
		vacxins = vacxinService.findAll();
		model.addAttribute("listVacxin", vacxins);
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

	@GetMapping("/news")
	public String news() {
		return "client/news";
	}

	@GetMapping("/news_details")
	public String news_details() {
		return "client/news_details";
	}
	
	@GetMapping("/access-dine")
    public String lock() {
        return "/error/405";
    }
}
