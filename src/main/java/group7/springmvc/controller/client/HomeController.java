package group7.springmvc.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;

import group7.springmvc.model.User;
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
	
}
