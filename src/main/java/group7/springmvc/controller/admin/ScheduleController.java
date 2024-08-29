/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.controller.admin;

import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group7.springmvc.model.Payment;
import group7.springmvc.model.Receptionist;
import group7.springmvc.model.Vaccine;
import group7.springmvc.model.VaccineSchedule;
import group7.springmvc.service.DoctorService;
import group7.springmvc.service.EmployeeService;
import group7.springmvc.service.PatientService;
import group7.springmvc.service.PaymentService;
import group7.springmvc.service.ReceptionistService;
import group7.springmvc.service.ScheduleService;
import group7.springmvc.service.UserService;
import group7.springmvc.service.VaccineLocationService;
import group7.springmvc.service.VaccineService;

@Controller
@RequestMapping("/admin/schedules")
public class ScheduleController {

	@Autowired
	UserService userService;
	
	@Autowired
	ScheduleService scheduleService;

	@Autowired
	PatientService patientService;

	@Autowired
	DoctorService doctorService;

	@Autowired
	VaccineService vaccineService;

	@Autowired
	VaccineLocationService vaccineLocationService;
	
	@Autowired
	PaymentService paymentService;
	
	@Autowired
	EmployeeService employeeService;
	
	@Autowired
	ReceptionistService receptionistService;

	@GetMapping("")
	public String listSchedules(Model model, HttpSession session, RedirectAttributes redirectAttributes) {
		if(session.getAttribute("role").equals("DOCTOR")) {
			
			redirectAttributes.addFlashAttribute("message", "Bác sĩ không có quyền truy cập!");
			return "redirect:/access-dine";
		}
		System.out.println();
		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		Date startOfDay = calendar.getTime();

		calendar.set(Calendar.HOUR_OF_DAY, 23);
		calendar.set(Calendar.MINUTE, 59);
		calendar.set(Calendar.SECOND, 59);
		Date endOfDay = calendar.getTime();

		List<VaccineSchedule> todaySchedules = scheduleService.getSchedulesByDateRange(startOfDay, endOfDay);
		model.addAttribute("todaySchedules", todaySchedules);

		List<VaccineSchedule> allSchedules = scheduleService.getAllSchedulesAfterToday();
		model.addAttribute("allSchedules", allSchedules);

		List<Object[]> schedulesWithoutDoctor = scheduleService.findAllScheduleWithoutDoctor();
		model.addAttribute("schedulesWithoutDoctor", schedulesWithoutDoctor);

		return "admin/QL_schedule/list";
	}

	@GetMapping("/add")
	public String showAddForm(Model model, HttpSession session, RedirectAttributes redirectAttributes) {
		
		if(session.getAttribute("role").equals("DOCTOR")) {
			
			redirectAttributes.addFlashAttribute("message", "Bác sĩ không có quyền truy cập!");
			return "redirect:/access-dine";
		}
		model.addAttribute("schedule", new VaccineSchedule());

		model.addAttribute("patients", patientService.getAllPatients());
		model.addAttribute("doctors", doctorService.getAllDoctors());
		model.addAttribute("vaccines", vaccineService.findAll());
		model.addAttribute("locations", vaccineLocationService.findAll());

		return "admin/QL_schedule/add";
	}

	@PostMapping("/add")
	public String addSchedule(@ModelAttribute VaccineSchedule schedule, BindingResult result, HttpSession session) {
		if (result.hasErrors()) {
			return "admin/QL_schedule/add";
		}

		
		Optional<Vaccine> optionalVaccine = vaccineService.findById(schedule.getVaccine().getId());

		if (optionalVaccine.isPresent()) {
			Vaccine vaccine = optionalVaccine.get();

			if (vaccine.getQuantity() > 0) {
				vaccine.setQuantity(vaccine.getQuantity() - 1);
				vaccineService.save(vaccine);
			} else {
				result.rejectValue("vaccine", "error.vaccine", "Số lượng vaccine không đủ.");
				return "admin/QL_schedule/add";
			}
		} else {
			result.reject("error", "Vaccine không tồn tại.");
			return "admin/QL_schedule/add";
		}
		
		schedule.setStatus(VaccineSchedule.Status.NOT_DUE);
		schedule = scheduleService.addSchedule(schedule);
		
		Payment payment = new Payment();
		Receptionist receptionist = receptionistService.findByEmployee(employeeService.findByUser(userService.findByUsername((String)session.getAttribute("username"))));
		payment.setReceptionist(receptionist);
		payment.setSchedule(schedule);
		payment.setTotalAmount(optionalVaccine.get().getPrice());
		payment.setPaymentDate(LocalDateTime.now());
		payment.setPayment_method(Payment.PaymentMethod.CASH);
		payment.setStatus(Payment.Status.PAYMENT);
		paymentService.save(payment);

		return "redirect:/admin/schedules/";
	}

	@GetMapping("/view/{id}")
	public String viewSchedule(@PathVariable("id") Long id, Model model) {
		Optional<VaccineSchedule> schedule = scheduleService.getScheduleById(id);
		if (schedule.isPresent()) {
			model.addAttribute("schedule", schedule.get());
			return "admin/QL_schedule/view";
		} else {
			return "redirect:/admin/schedules/";
		}
	}

	@GetMapping("/edit/{id}")
	public String showEditForm(@PathVariable("id") Long id, Model model) {
		Optional<VaccineSchedule> schedule = scheduleService.getScheduleById(id);
		if (schedule.isPresent()) {
			model.addAttribute("schedule", schedule.get());
			model.addAttribute("patients", patientService.getAllPatients());
			model.addAttribute("doctors", doctorService.getAllDoctors());
			model.addAttribute("vaccines", vaccineService.findAll());
			model.addAttribute("locations", vaccineLocationService.findAll());
			return "admin/QL_schedule/edit";
		} else {
			return "redirect:/admin/schedules/";
		}
	}

	@PostMapping("/edit")
	public String updateSchedule(@ModelAttribute VaccineSchedule schedule) {
		scheduleService.updateSchedule(schedule);
		return "redirect:/admin/schedules/";
	}

	@PostMapping("/delete/{id}")
	public String deleteSchedule(@PathVariable("id") Long id) {
		scheduleService.deleteSchedule(id);
		return "redirect:/admin/schedules";
	}

	@PostMapping("/search")
	public String searchSchedules(@RequestParam(required = false) String searchType,
			@RequestParam(required = false) Long doctorId, @RequestParam(required = false) Long patientId,
			@RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date vaccinationDate,
			@RequestParam(required = false) Long vaccineId, @RequestParam(required = false) String doctorName,
			@RequestParam(required = false) String patientName, @RequestParam(required = false) String vaccineName,
			@RequestParam(required = false) VaccineSchedule.Status status,
			@RequestParam(required = false) String patientIdCard, Model model) {

		Calendar calendar = Calendar.getInstance();
		calendar.set(Calendar.HOUR_OF_DAY, 0);
		calendar.set(Calendar.MINUTE, 0);
		calendar.set(Calendar.SECOND, 0);
		Date startOfDay = calendar.getTime();

		calendar.set(Calendar.HOUR_OF_DAY, 23);
		calendar.set(Calendar.MINUTE, 59);
		calendar.set(Calendar.SECOND, 59);
		Date endOfDay = calendar.getTime();

		List<VaccineSchedule> todaySchedules = scheduleService.getSchedulesByDateRange(startOfDay, endOfDay);
		List<VaccineSchedule> schedules;

		if (searchType == null || searchType.isEmpty()) {
			schedules = scheduleService.getAllSchedules();
		} else {
			switch (searchType) {
			case "doctor":
				if (doctorId != null) {
					schedules = scheduleService.searchSchedulesByDoctor(doctorId);
				} else if (doctorName != null) {
					schedules = scheduleService.findByDoctorName(doctorName);
				} else {
					schedules = scheduleService.getAllSchedules();
				}
				break;
			case "patient":
				System.out.println(patientName);
				if (patientId != null) {
					schedules = scheduleService.searchSchedulesByPatient(patientId);
				} else if (patientIdCard != null && !patientIdCard.isEmpty()) {
					schedules = scheduleService.findByPatientIdCard(patientIdCard);
				} else if (patientName != null && !patientName.isEmpty()) {
					schedules = scheduleService.findByPatientName(patientName);
				} else {
					schedules = scheduleService.getAllSchedules();
				}
				break;
			case "date":
				if (vaccinationDate != null) {
					schedules = scheduleService.findSchedulesByDate(vaccinationDate);
				} else {
					schedules = scheduleService.getAllSchedules();
				}
				break;
			case "vaccine":
				if (vaccineId != null) {
					schedules = scheduleService.findSchedulesByVaccine(vaccineId);
				} else if (vaccineName != null) {
					schedules = scheduleService.findByVaccineName(vaccineName);
				} else {
					schedules = scheduleService.getAllSchedules();
				}
				break;
			case "status":
				if (status != null) {
					schedules = scheduleService.findByStatus(status);
				} else {
					schedules = scheduleService.getAllSchedules();
				}
				break;
			default:
				schedules = scheduleService.getAllSchedules();
				break;
			}
		}

		model.addAttribute("allSchedules", schedules);
		model.addAttribute("todaySchedules", todaySchedules);

		return "admin/QL_schedule/list";
	}
}
