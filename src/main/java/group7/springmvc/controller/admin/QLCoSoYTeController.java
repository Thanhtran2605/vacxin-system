package group7.springmvc.controller.admin;

import java.time.LocalTime;
import java.util.ArrayList;
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
@RequestMapping("/admin/qlvaccinelocation")
public class QLCoSoYTeController {

	@Autowired
	private VaccineLocationService vaccineLocationService;

	@GetMapping("/")
	public String getAllVaccineLocations(Model model ,@RequestParam("nameLocation") Optional<String> nameLocation) {
		List<VaccineLocation> listVaccineLocation= new ArrayList<>();
		if(nameLocation.isPresent()) {
			listVaccineLocation =  vaccineLocationService.findAll(nameLocation.get());
		} else {
			listVaccineLocation =  vaccineLocationService.findAll();
		}
		
		model.addAttribute("listVaccineLocation", listVaccineLocation);
		return "admin/QL_CoSoYTe/index";
	}
	
	
	@GetMapping("/add")
    public String showAddVaccineLocationForm(Model model) {
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
            @RequestParam("openingHours") String openingHoursStr,
            @RequestParam("closingHours") String closingHoursStr,
            RedirectAttributes redirectAttributes) {

        // Convert strings to LocalTime
        LocalTime openingHours = LocalTime.parse(openingHoursStr);
        LocalTime closingHours = LocalTime.parse(closingHoursStr);

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
            redirectAttributes.addFlashAttribute("message", "New vaccine location added successfully!");
        } else {
            redirectAttributes.addFlashAttribute("error", "Failed to add new vaccine location!");
        }

        return "redirect:/admin/qlvaccinelocation/";
    }
    

	@GetMapping("edit/{id}")
public String editVaccineLocation(@PathVariable("id") Long id, ModelMap model) {
		Optional<VaccineLocation> optionalLocation = vaccineLocationService.findById(id);
		if (optionalLocation.isPresent()) {
			VaccineLocation location = optionalLocation.get();
			model.addAttribute("editLocation", location);
			return "admin/QL_CoSoYTe/edit";
		} else {
			return "redirect:/admin/qlvaccinelocation/";
		}
	}

	@PostMapping("edit/{id}")
	public String updateVaccineLocation(@PathVariable("id") Long id, @RequestParam("address") String address,
			@RequestParam("nameLocation") String nameLocation, @RequestParam("phone") String phone,
			@RequestParam("email") String email, @RequestParam("website") String website,
			@RequestParam("fanpage") String fanpage, @RequestParam("imageLink") String imageLink,
			@RequestParam("openingHours") String openingHoursStr, @RequestParam("closingHours") String closingHoursStr,
			RedirectAttributes redirectAttributes) {

		// Convert strings to LocalTime
		LocalTime openingHours = LocalTime.parse(openingHoursStr);
		LocalTime closingHours = LocalTime.parse(closingHoursStr);

		// Fetch existing location by id
		Optional<VaccineLocation> optionalLocation = vaccineLocationService.findById(id);
		if (optionalLocation.isPresent()) {
			VaccineLocation existingLocation = optionalLocation.get();

			// Update the existing location's details
			existingLocation.setAddress(address);
			existingLocation.setNameLocation(nameLocation);
			existingLocation.setPhone(phone);
			existingLocation.setEmail(email);
			existingLocation.setWebsite(website);
			existingLocation.setFanpage(fanpage);
			existingLocation.setImageLink(imageLink);
			existingLocation.setOpeningHours(openingHours);
			existingLocation.setClosingHours(closingHours);

			// Save updated location
			VaccineLocation savedLocation = vaccineLocationService.save(existingLocation);

			if (savedLocation != null) {
				redirectAttributes.addFlashAttribute("message", "Vaccine location updated successfully!");
			} else {
				redirectAttributes.addFlashAttribute("error", "Vaccine location update failed!");
			}
		} else {
			redirectAttributes.addFlashAttribute("error", "Vaccine location not found!");
		}

		return "redirect:/admin/qlvaccinelocation/";
	}

	@PostMapping("/delete")
	public String deleteVaccineLocation(@RequestParam("locationId") Long locationId,
			RedirectAttributes redirectAttributes) {
		vaccineLocationService.deleteById(locationId);
		redirectAttributes.addFlashAttribute("message", "Vaccine location deleted successfully!");
		return "redirect:/admin/qlvaccinelocation/";
	}
	

}