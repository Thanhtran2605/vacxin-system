/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.service;

import java.util.Date;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import group7.springmvc.model.VaccineSchedule;
import group7.springmvc.repository.ScheduleRepository;

@Service
public class ScheduleService {
	@Autowired
	ScheduleRepository scheduleRepository;

	public VaccineSchedule addSchedule(VaccineSchedule vaccineSchedule) {
		return scheduleRepository.save(vaccineSchedule);
	}

	public List<VaccineSchedule> getAllSchedules() {
		return scheduleRepository.findAll();
	}

	public VaccineSchedule updateSchedule(VaccineSchedule vaccineSchedule) {
		return scheduleRepository.save(vaccineSchedule);
	}

	public Optional<VaccineSchedule> getScheduleById(Long id) {
		return scheduleRepository.findById(id);
	}

	public void deleteSchedule(Long id) {
		scheduleRepository.deleteById(id);
	}

	public List<VaccineSchedule> searchSchedulesByDoctor(Long doctorId) {
		return scheduleRepository.findByDoctorId(doctorId);
	}

	public List<VaccineSchedule> searchSchedulesByPatient(Long patientId) {
		return scheduleRepository.findByPatientId(patientId);
	}

	public List<VaccineSchedule> findSchedulesByDate(Date vaccinationDate) {
		return scheduleRepository.findByVaccinationDate(vaccinationDate);
	}

	public List<VaccineSchedule> findSchedulesByVaccine(Long vaccineId) {
		return scheduleRepository.findByVaccineId(vaccineId);
	}

	public List<VaccineSchedule> findByDoctorName(String doctorName) {
		return scheduleRepository.findByDoctorName(doctorName);
	}

	public List<VaccineSchedule> findByPatientName(String patientName) {
		return scheduleRepository.findByPatientName(patientName);
	}

	public List<VaccineSchedule> findByVaccineName(String vaccineName) {
		return scheduleRepository.findByVaccineName(vaccineName);
	}

}
