package group7.springmvc.controller.admin;

import java.security.Principal;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group7.springmvc.service.PasswordService;

@Controller
@RequestMapping("/admin")
public class PasswordController {
	
	@Autowired
    private PasswordService passwordService;
	
	@PostMapping("/change-password")
    public String changePassword(@RequestParam("oldPassword") String oldPassword,
                                 @RequestParam("newPassword") String newPassword,
                                 Principal principal,
                                 RedirectAttributes redirectAttributes) {
        String username = principal.getName();

        if (!passwordService.checkIfValidOldPassword(username, oldPassword)) {
//            redirectAttributes.addFlashAttribute("errorMessage", "Mật khẩu cũ không đúng.");
        	redirectAttributes.addFlashAttribute("errorMessage", true);
            return "redirect:/admin/profile";
        }

        passwordService.changeUserPassword(username, newPassword);
//        redirectAttributes.addFlashAttribute("successMessage", "Mật khẩu đã được thay đổi thành công.");
        redirectAttributes.addFlashAttribute("successMessage", true);
        return "redirect:/admin/profile";
    }
}
