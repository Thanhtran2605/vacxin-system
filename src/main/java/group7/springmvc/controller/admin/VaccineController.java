package group7.springmvc.controller.admin;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import group7.springmvc.model.Vaccine;
import group7.springmvc.service.VaccineService;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;

@Controller
@RequestMapping("/admin/vaccines")
public class VaccineController {
	@Autowired
	private VaccineService vaccineService;

	@GetMapping("")
	public String getAllVaccine(Model model, @RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "name", required = false) String name,
            @RequestParam(name = "type", required = false) String type,
            @RequestParam(name = "country", required = false) String country,
            @RequestParam(name = "sort", defaultValue = "id,asc") String sort,
            HttpServletRequest request) {
	
		String[] sortParams = sort.split(",");
		String sortField = sortParams[0];
		String sortDirection = sortParams[1];
		Pageable pageable = PageRequest.of(page - 1, 5, Sort.by(Sort.Direction.fromString(sortDirection), sortField));
		String queryString = request.getQueryString();
		if(queryString != null && !queryString.isBlank())
		{
			queryString = queryString.replace("page=" + page, "").replaceAll("&sort=[^&]*", "");
		}
		Page<Vaccine> vaccine = vaccineService.findAllByCriteria(name, type, country, pageable);
		model.addAttribute("danhsachVaccine", vaccine.getContent().size() > 0 ? vaccine.getContent() : new ArrayList<Vaccine>());
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", vaccine.getTotalPages());
		model.addAttribute("queryString", queryString);
		model.addAttribute("currentSort", sort);
		return "admin/QL_vaccine/index";
	}

	@GetMapping("/create")
	public String createVaccine(Model model) {
		model.addAttribute("newVaccine", new Vaccine());
		return "admin/QL_vaccine/create";
	}

	@PostMapping("/create")
	public String saveVaccine(@ModelAttribute("newVaccine") @Valid Vaccine vaccine, BindingResult result) {
		if (result.hasErrors()) {
	        return "admin/QL_vaccine/create";
	    }
		vaccineService.save(vaccine);
		return "redirect:/admin/vaccines";
	}

	@GetMapping("/edit/{id}")
	public String editVaccine(@PathVariable("id") long id, Model model) {
		model.addAttribute("editVaccine", vaccineService.findById(id));
		return "admin/QL_vaccine/edit";
	}

	@PostMapping("/edit")
	public String updateVaccine(@ModelAttribute("editVaccine") @Valid Vaccine vaccine, BindingResult result) {
		if (result.hasErrors()) {
	        return "redirect:edit/" + vaccine.getId();
	    }
		vaccineService.save(vaccine);
		return "redirect:/admin/vaccines";
	}

	@GetMapping("delete/{id}")
	public String deleteVaccine(@PathVariable("id") long id) {
		System.out.println("id : " + id);
		vaccineService.deleteById(id);
		return "redirect:/admin/vaccines";
	}
}
