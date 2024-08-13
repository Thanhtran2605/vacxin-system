package group7.springmvc.controller.admin;

import java.time.LocalTime;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group7.springmvc.model.VaccineLocation;
import group7.springmvc.service.VaccineLocationService;

@Controller
@RequestMapping("/admin/vacloc")
public class QLCoSoYTeController {

    @Autowired
    private VaccineLocationService vaccineLocationService;

    @GetMapping("")
    public String getAllVaccineLocations(Model model) {
        model.addAttribute("danhsachvaccineLocation", vaccineLocationService.findAll());
        return "admin/QL_CoSoYTe/index";
    }

    @GetMapping("edit/{id}")
    public String editVaccineLocation(@PathVariable("id") Long id, ModelMap model) {
        Optional<VaccineLocation> optionalLocation = vaccineLocationService.findById(id);
        if (optionalLocation.isPresent()) {
            VaccineLocation location = optionalLocation.get();
            model.addAttribute("editLocation", location);
            return "admin/QL_CoSoYTe/edit";
        } else {
            return "redirect:/admin/vacloc";
        }
    }

    @PostMapping("edit/{id}")
    public String updateVaccineLocation(
            @PathVariable("id") Long id,
            @RequestParam("address") String address,
            @RequestParam("nameLocation") String nameLocation,
            @RequestParam("phone") String phone,
            @RequestParam("email") String email,
            @RequestParam("website") String website,
            @RequestParam("fanpage") String fanpage,
            @RequestParam("imageLink") String imageLink,
            @RequestParam("openingHours") String openingHoursStr,
            @RequestParam("closingHours") String closingHoursStr,
            RedirectAttributes redirectAttributes) {

        LocalTime openingHours = LocalTime.parse(openingHoursStr);
        LocalTime closingHours = LocalTime.parse(closingHoursStr);

        VaccineLocation updatedLocation = VaccineLocation.builder()
                .address(address)
                .nameLocation(nameLocation)
                .phone(phone)
                .email(email)
                .website(website)
                .fanpage(fanpage)
                .imageLink(imageLink)
                .openingHours(openingHours)
                .closingHours(closingHours)
                .build();

        VaccineLocation savedLocation = vaccineLocationService.save(updatedLocation);

        if (savedLocation != null) {
            redirectAttributes.addFlashAttribute("message", "Vaccine location updated successfully!");
        } else {
            redirectAttributes.addFlashAttribute("error", "Vaccine location update failed!");
        }

        return "redirect:/admin/vacloc";
    }

    @PostMapping("/delete")
    public String deleteVaccineLocation(@RequestParam("locationId") Long locationId, RedirectAttributes redirectAttributes) {
        vaccineLocationService.deleteById(locationId);
        redirectAttributes.addFlashAttribute("message", "Vaccine location deleted successfully!");
        return "redirect:/admin/vacloc";
    }

    @GetMapping("add")
    public String addVaccineLocation(Model model) {
        model.addAttribute("addLocation", new VaccineLocation());
        System.out.println("okok");
        return "admin/QL_CoSoYTe/add";
    }

    @PostMapping("/add")
    public String addVaccineLocation(
            @RequestParam("nameLocation") String nameLocation,
            @RequestParam("address") String address,
            @RequestParam("phone") String phone,
            @RequestParam("email") String email,
            @RequestParam("website") String website,
            @RequestParam("fanpage") String fanpage,
            @RequestParam("imageLink") String imageLink,
            @RequestParam("openingHours") LocalTime openingHours,
            @RequestParam("closingHours") LocalTime closingHours,
            RedirectAttributes redirectAttributes) {
    	System.out.println(address + nameLocation+ phone+ 
    			email+ website+ fanpage);
        VaccineLocation newLocation = VaccineLocation.builder()
                .nameLocation(nameLocation)
                .address(address)
                .phone(phone)
                .email(email)
                .website(website)
                .fanpage(fanpage)
                .imageLink(imageLink)
                .openingHours(openingHours)
                .closingHours(closingHours)
                .build();

        VaccineLocation savedLocation = vaccineLocationService.save(newLocation);

        if (savedLocation != null) {
            redirectAttributes.addFlashAttribute("message", "Địa điểm tiêm được thêm mới thành công!");
        } else {
            redirectAttributes.addFlashAttribute("error", "Thêm địa điểm tiêm không thành công!");
        }

        return "redirect:/admin/vacloc";
    }
}
