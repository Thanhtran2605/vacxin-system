package group7.springmvc.controller.client;

import java.time.LocalDateTime;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;

import group7.springmvc.model.Payment;
import group7.springmvc.model.Receptionist;
import group7.springmvc.model.User;
import group7.springmvc.model.Vaccine;
import group7.springmvc.model.VaccineSchedule;
import group7.springmvc.service.PatientService;
import group7.springmvc.service.PaymentService;
import group7.springmvc.service.ReceptionistService;
import group7.springmvc.service.ScheduleService;
import group7.springmvc.service.UserService;
import group7.springmvc.service.VaccineLocationService;
import group7.springmvc.service.VaccineService;

@Controller
public class DangKyTiemController {

	@Autowired
	private VaccineService vaccineService;
	
	@Autowired
	private UserService userService;
	
	@Autowired
	private PatientService patientService;
	
	@Autowired
	private VaccineLocationService vaccineLocationService;
	
	@Autowired
	private ScheduleService scheduleService;
	
	@Autowired
	private PaymentService paymentService;
	
	@Autowired
	private ReceptionistService receptionistService;

	@GetMapping("/dangkytiem/{id}")
	public String dangkytiem(@PathVariable("id") long id, Model model, HttpSession session) {
		if(!session.getAttribute("role").toString().equals("PATIENT")) {
			return "redirect:/access-dine";
		}
		User user = userService.findByUsername(session.getAttribute("username").toString());
		model.addAttribute("locations", vaccineLocationService.findAll());
		model.addAttribute("patient", patientService.findByUser(user));
		model.addAttribute("vaccine", vaccineService.findById(id).get());
		
		return "client/dangkytiem/index";
	}
	
	@PostMapping("/xacnhantiem")
	public String xacnhantiem(@ModelAttribute VaccineSchedule schedule,
			@RequestParam("bankName") String bankName,
			@RequestParam("numberBank") String numberBank,
			@RequestParam("paymentMethod") String paymentMethod
			) {
		
		
		Vaccine vaccine  = vaccineService.findById(schedule.getVaccine().getId()).get();
		vaccine.setQuantity(vaccine.getQuantity() - 1);
		vaccineService.save(vaccine);
		schedule.setStatus(VaccineSchedule.Status.NOT_DUE);
		schedule = scheduleService.addSchedule(schedule);
		
		Payment payment = new Payment();
		payment.setTotalAmount(vaccine.getPrice());
		payment.setSchedule(schedule);
		payment.setReceptionist(receptionistService.findById((long)1).get());
		
		
		
		if(paymentMethod.equals("PAY_ONLINE")) {
				payment.setPayment_method(Payment.PaymentMethod.ATM);
				payment.setNumberBank(numberBank);
				payment.setBankName(bankName);
				payment.setStatus(Payment.Status.PAYMENT);
		} else {
			payment.setPayment_method(Payment.PaymentMethod.CASH);
			payment.setStatus(Payment.Status.NON_PAYMENT);
		}
		payment.setPaymentDate(LocalDateTime.now());
		paymentService.save(payment);
		return "redirect:/home";
	}
}
