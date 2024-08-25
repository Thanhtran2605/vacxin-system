package group7.springmvc.controller.client;

import java.security.Principal;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import group7.springmvc.model.Doctor;
import group7.springmvc.model.Employee;
import group7.springmvc.model.Patient;
import group7.springmvc.model.Receptionist;
import group7.springmvc.model.User;
import group7.springmvc.model.VaccineSchedule;
import group7.springmvc.service.DoctorService;
import group7.springmvc.service.EmployeeService;
import group7.springmvc.service.PatientService;
import group7.springmvc.service.ReceptionistService;
import group7.springmvc.service.ScheduleService;
import group7.springmvc.service.UserService;
import group7.springmvc.service.VaccineService;

@Controller
public class HistoryController {

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

    @GetMapping("/lichsutiem")
    public String profile(Model model, HttpSession session) {
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
            // Thêm lịch sử tiêm chủng của bệnh nhân
            List<VaccineSchedule> schedules = scheduleService.searchSchedulesByPatient(currentPatient.getId());
            model.addAttribute("schedules", schedules);
        } else if (currentEmployee != null) {
            model.addAttribute("currentEmployee", currentEmployee);
            // Thêm lịch sử tiêm chủng của nhân viên
            List<VaccineSchedule> schedules = scheduleService.searchSchedulesByDoctor(currentEmployee.getId());
            model.addAttribute("schedules", schedules);
        }
        return "client/history";
    }
}
