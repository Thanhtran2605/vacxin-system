package group7.springmvc.controller.util;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ModelAttribute;

import group7.springmvc.service.VaccineService;

@ControllerAdvice
public class GlobalControllerAdvice {

    @Autowired
    private VaccineService vaccineService;

    @ModelAttribute("danhsachQuocgia")
    public List<String> populateCountries() {
        return vaccineService.getDistinctCountries();
    }
}
