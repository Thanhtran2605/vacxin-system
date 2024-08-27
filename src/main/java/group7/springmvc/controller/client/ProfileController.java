package group7.springmvc.controller.client;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import group7.springmvc.model.Doctor;
import group7.springmvc.model.Employee;
import group7.springmvc.model.Patient;
import group7.springmvc.model.Receptionist;
import group7.springmvc.model.User;
import group7.springmvc.service.DoctorService;
import group7.springmvc.service.EmployeeService;
import group7.springmvc.service.PatientService;
import group7.springmvc.service.ReceptionistService;
import group7.springmvc.service.ScheduleService;
import group7.springmvc.service.UserService;
import group7.springmvc.service.VaccineService;

@Controller
public class ProfileController {

    @Autowired
    UserService userService;

    @Autowired
    VaccineService vaccineService;

    @Autowired
    ScheduleService scheduleService;
    
    @Autowired
    EmployeeService employeeService;
    
    @Autowired
    DoctorService doctorService;
    
    @Autowired
    ReceptionistService receptionistService;
    
    @Autowired
    PatientService patientService;

    @GetMapping("profile")
    public String profile(Model model, HttpSession session) {
    	if(!session.getAttribute("role").equals("PATIENT")) {
    		return "redirect:/admin/profile";
    	}
        String loginUserName = (String) session.getAttribute("username");
        User currentUser = userService.findByUsername(loginUserName);
        Employee currentEmployee = employeeService.findByUser(currentUser);
        Doctor currentDoctor = doctorService.findByEmployee(currentEmployee);
        Receptionist currentReceptionist = receptionistService.findByEmployee(currentEmployee);
        Patient currentPatient = patientService.findByUser(currentUser);

        model.addAttribute("currentUser", currentUser);
        if (currentDoctor != null) {
            model.addAttribute("currentEmployee", currentDoctor);
        } else if (currentReceptionist != null) {
            model.addAttribute("currentEmployee", currentReceptionist);
        } else if (currentPatient != null) {
            model.addAttribute("currentPatient", currentPatient);
        } else if (currentEmployee != null) {
            model.addAttribute("currentEmployee", currentEmployee);
        }
        
        return "client/profile";
    }
    
    @PostMapping("update-user")
    public String updateUser(
            @RequestParam("username") String username,
            @RequestParam("email") String email,
            @RequestParam("phone") String phone,
            @RequestParam("fullName") String fullName,
            @RequestParam("gender") String gender,
            @RequestParam("address") String address,
            HttpSession session,
            Model model) {

        String loginUserName = (String) session.getAttribute("username");
        User currentUser = userService.findByUsername(loginUserName);

        if (currentUser != null) {
            currentUser.setUsername(username);
            currentUser.setEmail(email);
            currentUser.setPhone(phone);
            currentUser.setFullName(fullName);
            currentUser.setGender(gender);
            currentUser.setAddress(address);

            userService.save(currentUser);

            model.addAttribute("successMessage", true);
        } else {
            model.addAttribute("errorMessage", true);
        }

        return "redirect:/profile";
    }
}
