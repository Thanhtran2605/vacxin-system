/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.service;

import java.util.Date;
import java.util.List;
import java.util.Map;
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

	public List<VaccineSchedule> findByPatientIdCard(String idCard) {
		return scheduleRepository.findByPatientIdCard(idCard);
	}

	public List<VaccineSchedule> findByPatientName(String patientName) {
		return scheduleRepository.findByPatientName(patientName);
	}

	public List<VaccineSchedule> findByVaccineName(String vaccineName) {
		return scheduleRepository.findByVaccineName(vaccineName);
	}

	public List<VaccineSchedule> findByStatus(VaccineSchedule.Status status) {
		return scheduleRepository.findByStatus(status);
	}

	public List<Map<String, Object>> findVaccineStatistics(Long vaccineId) {
		return scheduleRepository.findVaccineStatistics(vaccineId);
	}

	public List<VaccineSchedule> getAllSchedulesAfterToday() {
		Date today = new Date();
		return scheduleRepository.findAllSchedulesAfterToday(today);
	}

	public List<VaccineSchedule> getSchedulesByDateRange(Date startDate, Date endDate) {
		return scheduleRepository.findByVaccinationDateBetween(startDate, endDate);
	}

	public List<Object[]> getStatisticsByHour() {
		return scheduleRepository.countByHour();
	}

	public List<Object[]> getStatisticsByDay(Date date) {
		return scheduleRepository.findStatisticsByDay(date);
	}

	public List<Object[]> getStatisticsByMonth(int year, int month) {
		return scheduleRepository.findStatisticsByDayInMonth(year, month);
	}

	public List<Object[]> getStatisticsByYear(int year) {
		return scheduleRepository.findStatisticsByMonthInYear(year);
	}

	public List<Object[]> getStatusPercentage() {
		return scheduleRepository.findStatusPercentage();
	}

	public List<Object[]> findAllScheduleWithoutDoctor() {
		return scheduleRepository.findSchedulesWithoutDoctor();
	}

	public void updateScheduleStatus(long id, VaccineSchedule.Status status) {
		VaccineSchedule schedule = scheduleRepository.findById(id)
				.orElseThrow(() -> new IllegalArgumentException("Không tìm thấy lịch tiêm với ID: " + id));
		schedule.setStatus(status);
		scheduleRepository.save(schedule);
	}

	public Optional<VaccineSchedule> findById(Long id) {
		return scheduleRepository.findById(id);
	}
	
	
}
