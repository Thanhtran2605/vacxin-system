/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.controller.admin;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import group7.springmvc.model.VaccineSchedule;
import group7.springmvc.service.DoctorService;
import group7.springmvc.service.PatientService;
import group7.springmvc.service.ScheduleService;
import group7.springmvc.service.VaccineLocationService;
import group7.springmvc.service.VaccineService;

@Controller
@RequestMapping("/admin/schedules")
public class ScheduleController {

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

	@GetMapping("")
	public String listSchedules(Model model) {
		List<VaccineSchedule> schedules = scheduleService.getAllSchedules();
		model.addAttribute("schedules", schedules);
		return "admin/QL_schedule/list";
	}

	@GetMapping("/add")
	public String showAddForm(Model model) {
		model.addAttribute("schedule", new VaccineSchedule());

		model.addAttribute("patients", patientService.getAllPatients());
		model.addAttribute("doctors", doctorService.getAllDoctors());
		model.addAttribute("vaccines", vaccineService.findAll());
		model.addAttribute("locations", vaccineLocationService.findAll());

		return "admin/QL_schedule/add";
	}

	@PostMapping("/add")
	public String addSchedule(@ModelAttribute VaccineSchedule schedule, BindingResult result) {
		scheduleService.addSchedule(schedule);
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
			return "redirect:/admin/schedules";
		}
	}

	@PostMapping("/edit")
	public String updateSchedule(@ModelAttribute VaccineSchedule schedule) {
		scheduleService.updateSchedule(schedule);
		return "redirect:/admin/schedules";
	}

	@PostMapping("/delete/{id}")
	public String deleteSchedule(@PathVariable("id") Long id) {
		scheduleService.deleteSchedule(id);
		return "redirect:/admin/schedules";
	}

	/*
	 * @PostMapping("/search") public String searchSchedules(@RequestParam(required
	 * = false) String searchType,
	 * 
	 * @RequestParam(required = false) Long doctorId, @RequestParam(required =
	 * false) Long patientId,
	 * 
	 * @RequestParam(required = false) @DateTimeFormat(iso =
	 * DateTimeFormat.ISO.DATE) Date vaccinationDate,
	 * 
	 * @RequestParam(required = false) Long vaccineId, Model model) {
	 * 
	 * List<VaccineSchedule> schedules;
	 * 
	 * if (searchType == null || searchType.isEmpty()) { schedules =
	 * scheduleService.getAllSchedules(); } else { switch (searchType) { case
	 * "doctor": schedules = scheduleService.searchSchedulesByDoctor(doctorId);
	 * break; case "patient": schedules =
	 * scheduleService.searchSchedulesByPatient(patientId); break; case "date":
	 * schedules = scheduleService.findSchedulesByDate(vaccinationDate); break; case
	 * "vaccine": schedules = scheduleService.findSchedulesByVaccine(vaccineId);
	 * break; default: schedules = scheduleService.getAllSchedules(); break; } }
	 * 
	 * model.addAttribute("schedules", schedules); return
	 * "admin/QL_schedule/schedule/list"; }
	 */

	@PostMapping("/search")
	public String searchSchedules(@RequestParam(required = false) String searchType,
			@RequestParam(required = false) Long doctorId, @RequestParam(required = false) Long patientId,
			@RequestParam(required = false) @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) Date vaccinationDate,
			@RequestParam(required = false) Long vaccineId, @RequestParam(required = false) String doctorName,
			@RequestParam(required = false) String patientName, @RequestParam(required = false) String vaccineName,
			Model model) {

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
				if (patientId != null) {
					schedules = scheduleService.searchSchedulesByPatient(patientId);
				} else if (patientName != null) {
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
			default:
				schedules = scheduleService.getAllSchedules();
				break;
			}
		}

		model.addAttribute("schedules", schedules);
		return "admin/QL_schedule/list";
	}

}
