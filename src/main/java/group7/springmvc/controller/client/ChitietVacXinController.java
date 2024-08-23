package group7.springmvc.controller.client;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ChitietVacXinController {
	@GetMapping("chitietvacxin")
	public String index() {
		return "client/ChitietVacxin/index";
	}
}
