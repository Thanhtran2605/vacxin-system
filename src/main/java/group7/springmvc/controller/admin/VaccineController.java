package group7.springmvc.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;


import group7.springmvc.model.Vaccine;
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
	
	@GetMapping("create")
	public String createVaccine(Model model) {
		model.addAttribute("newVaccine", new Vaccine());
		return "admin/QL_vaccine/create";
	}
	
//	@PostMapping("/product/save")
//	public String post_save_product(@ModelAttribute("product") @Valid Product product, BindingResult bindingResult,
//			@RequestParam("productFile") MultipartFile file) throws IOException {
//		
//		if (bindingResult.hasErrors()) {
//			return "/admin/product/create";
//		}
//		
//		String productImg = uploadService.handleSaveUploadFile(file, "product");
//		product.setImage(productImg);
//		productService.save(product);
//		return "redirect:/admin/product";
//	}
	
	@PostMapping("/save")
	public String saveVaccine(@ModelAttribute("vaccine") Vaccine vaccine) {
		vaccineService.save(vaccine);
		return "redirect:/admin/vaccines";
	}

	@GetMapping("delete/{id}")
	public String deleteVaccine(@PathVariable("id") long id) {
		vaccineService.deleteById(id);
		return "redirect:/admin/vaccines";
	}
}
