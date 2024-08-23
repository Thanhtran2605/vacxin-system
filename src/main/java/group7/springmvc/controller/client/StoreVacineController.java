package group7.springmvc.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import group7.springmvc.model.Vaccine;
import group7.springmvc.service.VaccineService;

@Controller
public class StoreVacineController {
	@Autowired
	VaccineService vacxinService;
	
	@GetMapping("/store")
	public String store(Model model) {
	  List<Vaccine> vacxins;       
	  vacxins = vacxinService.findAll();      
      model.addAttribute("listVacxin", vacxins);
      return "client/store";
	}
}
