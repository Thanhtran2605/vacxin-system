package group7.springmvc.controller.client;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import group7.springmvc.model.Vaccine;
import group7.springmvc.service.VaccineService;

@Controller
public class StoreVacineController {
	@Autowired
	VaccineService vaccineService;
	
	@GetMapping("/store")
	public String store(Model model, @RequestParam(name = "page", defaultValue = "1") int page,
			@RequestParam(name = "sort", defaultValue = "id,asc") String sort,
			@RequestParam(name = "country") Optional<String> country,
			@RequestParam(name = "disease") Optional<String> disease,
			HttpServletRequest request) {
		String[] sortParams = sort.split(",");
		String sortField = sortParams[0];
		String sortDirection = sortParams[1];
		Pageable pageable = PageRequest.of(page - 1, 12, Sort.by(Sort.Direction.fromString(sortDirection), sortField));
		String queryString = request.getQueryString();
		if(queryString != null && !queryString.isBlank())
		{
			queryString = queryString.replace("page=" + page, "");
		}
		Page<Vaccine> vaccines = vaccineService.findAll(country, disease, pageable);
		model.addAttribute("danhsachVaccine", vaccines.getContent().size() > 0 ? vaccines.getContent() : new ArrayList<Vaccine>());
		model.addAttribute("soluongVaccine", vaccineService.findAll().size());
		model.addAttribute("currentPage", page);
		model.addAttribute("totalPages", vaccines.getTotalPages());
		model.addAttribute("queryString", queryString);
		model.addAttribute("currentSort", sort);
		List<String> commonKeywords = Arrays.asList(
	            "Viêm gan", "Ung thư", "Sởi", "Uốn ván", "Bạch hầu", "Lao", "Cúm", "Dại", "Viêm não Nhật Bản"
	        );
		model.addAttribute("danhsachLoaibenh", commonKeywords);
		
      return "client/store";
	}
	
}
