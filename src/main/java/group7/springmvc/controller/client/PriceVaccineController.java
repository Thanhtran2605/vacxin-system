/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 25, 2024
 *	@version 1.0
*/
package group7.springmvc.controller.client;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import group7.springmvc.model.Vaccine;
import group7.springmvc.service.VaccineService;

@Controller
public class PriceVaccineController {

	@Autowired
	VaccineService vacxinService;

	@GetMapping("/price_list")
	public String getVaccinePrice(Model model) {
		List<Vaccine> vacxins;
		vacxins = vacxinService.findAll();
		model.addAttribute("listVacxin", vacxins);
		return "client/price_list/index";
	}
}
