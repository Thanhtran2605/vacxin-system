package group7.springmvc.controller.client;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group7.springmvc.service.PasswordService;

@Controller
public class ChangePassword {
	@Autowired
    private PasswordService passwordService;
	
	@PostMapping("change-password")
    public String changePassword(@RequestParam("oldPassword") String oldPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 Principal principal,
                                 RedirectAttributes redirectAttributes) {
        String username = principal.getName();

        if (!passwordService.checkIfValidOldPassword(username, oldPassword)) {
        	redirectAttributes.addFlashAttribute("errorMessage", true);
            return "redirect:/profile";
        }

        passwordService.changeUserPassword(username, newPassword);
        redirectAttributes.addFlashAttribute("successMessage", true);
        return "redirect:/profile";
    }
}
