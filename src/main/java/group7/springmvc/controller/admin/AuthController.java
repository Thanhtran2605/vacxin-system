package group7.springmvc.controller.admin;

import java.beans.PropertyEditorSupport;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;

import javax.servlet.http.HttpSession;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import group7.springmvc.model.Patient;
import group7.springmvc.model.User;
import group7.springmvc.service.PatientService;
import group7.springmvc.service.RoleService;
import group7.springmvc.service.UserService;

@Controller
public class AuthController {

	@Autowired
	RoleService roleService;

	@Autowired
	UserService userService;
	
	@Autowired
	PatientService patientService;

	@Autowired
	PasswordEncoder passwordEncoder;

	@InitBinder
    public void initBinder(WebDataBinder binder) {
        binder.registerCustomEditor(LocalDate.class, new PropertyEditorSupport() {
            @Override
            public void setAsText(String text) throws IllegalArgumentException {
                if (text == null || text.trim().isEmpty()) {
                    setValue(null); // Handle empty input gracefully
                } else {
                    setValue(LocalDate.parse(text, DateTimeFormatter.ISO_LOCAL_DATE));
                }
            }

            @Override
            public String getAsText() {
                LocalDate date = (LocalDate) getValue();
                return (date != null ? date.format(DateTimeFormatter.ISO_LOCAL_DATE) : "");
            }
        });
    }

	@GetMapping("/login")
	public String login(HttpSession session) {
		if (session.getAttribute("username") != null) {
			return "redirect:/home";
		} else {
			return "admin/auth/login";
		}
	}

	@GetMapping("/register")
	public String register(Model model, HttpSession session) {

		if (session.getAttribute("username") != null) {
			return "redirect:/home";
		} else {
			model.addAttribute("newUser", new User());
			return "admin/auth/register";
		}
	}

	@PostMapping("/register")
	public String register_post(@ModelAttribute("newUser") @Valid User user, BindingResult bindingResult, Model model) {
		if (bindingResult.hasErrors()) {
			return "admin/auth/register";
		}
		if (userService.findByEmail(user.getEmail()) != null
				|| userService.findByUsername(user.getUsername()) != null) {
			model.addAttribute("message", "Email hoặc tên đăng nhập đã tồn tại");
			return "admin/auth/register";
		}
		String hassPassword = passwordEncoder.encode(user.getPassword());
		user.setPassword(hassPassword);
		user.setRole(roleService.findByValue("PATIENT"));
		user.setStatus((byte)0);
		
		Patient patient = new Patient();
		patient.setUser(userService.save(user));
		patientService.save(patient);
		return "redirect:/login";
	}
}
