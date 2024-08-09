package group7.springmvc.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import group7.springmvc.service.VaccineService;

@Controller
@RequestMapping("/admin/vaccines")
public class VaccineController {
		@Autowired
		private VaccineService vaccineService;
		
		@GetMapping("")
		public String getAllVaccine(Model model) {
			model.addAttribute("danhsachVaccine", vaccineService.findAll());
			 return "admin/QL_vaccine/index";
		}
}
