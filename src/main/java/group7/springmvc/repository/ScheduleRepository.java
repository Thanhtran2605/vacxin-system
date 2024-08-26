/*
*	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.repository;

import java.util.Date;
import java.util.List;
import java.util.Map;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.VaccineSchedule;

@Repository
public interface ScheduleRepository extends JpaRepository<VaccineSchedule, Long> {

	List<VaccineSchedule> findByDoctorId(Long doctorId);

	List<VaccineSchedule> findByPatientId(Long patientId);

	List<VaccineSchedule> findByVaccinationDate(Date vaccinationDate);

	List<VaccineSchedule> findByVaccineId(Long vaccineId);
	
	@Query("SELECT vs FROM VaccineSchedule vs WHERE vs.patient.idCard LIKE %:idCard%")
	List<VaccineSchedule> findByPatientIdCard(@Param("idCard") String idCard);

	@Query("SELECT vs FROM VaccineSchedule vs WHERE vs.doctor.employee.user.fullName LIKE %:doctorName%")
	List<VaccineSchedule> findByDoctorName(@Param("doctorName") String doctorName);

	@Query("SELECT vs FROM VaccineSchedule vs WHERE vs.patient.user.fullName LIKE %:patientName%")
	List<VaccineSchedule> findByPatientName(@Param("patientName") String patientName);

	@Query("SELECT vs FROM VaccineSchedule vs WHERE vs.vaccine.name LIKE %:vaccineName%")
	List<VaccineSchedule> findByVaccineName(@Param("vaccineName") String vaccineName);

	@Query("SELECT vs FROM VaccineSchedule vs WHERE vs.status = :status")
	List<VaccineSchedule> findByStatus(@Param("status") VaccineSchedule.Status status);

	@Query("SELECT vs FROM VaccineSchedule vs ORDER BY vs.vaccinationDate DESC")
	List<VaccineSchedule> findAllSchedulesAfterToday(@Param("today") Date today);

	@Query("SELECT vl.nameLocation AS locationName, COUNT(vs.id) AS count " + "FROM VaccineSchedule vs "
			+ "JOIN vs.location vl " + "WHERE vs.status = 'COMPLETED' " + "GROUP BY vl.nameLocation")
	List<Object[]> countVaccinationsByLocation();

	@Query(value = "SELECT v.name AS vaccine_name, " + "CASE "
			+ "WHEN TIMESTAMPDIFF(YEAR, u.birthday, CURDATE()) BETWEEN 0 AND 9 THEN '0-9' "
			+ "WHEN TIMESTAMPDIFF(YEAR, u.birthday, CURDATE()) BETWEEN 10 AND 19 THEN '10-19' "
			+ "WHEN TIMESTAMPDIFF(YEAR, u.birthday, CURDATE()) BETWEEN 20 AND 29 THEN '20-29' "
			+ "WHEN TIMESTAMPDIFF(YEAR, u.birthday, CURDATE()) BETWEEN 30 AND 39 THEN '30-39' "
			+ "WHEN TIMESTAMPDIFF(YEAR, u.birthday, CURDATE()) BETWEEN 40 AND 49 THEN '40-49' "
			+ "WHEN TIMESTAMPDIFF(YEAR, u.birthday, CURDATE()) BETWEEN 50 AND 59 THEN '50-59' " + "ELSE '60+' "
			+ "END AS age_group, " + "COUNT(*) AS patient_count " + "FROM vaccine_schedule vs "
			+ "JOIN vaccine v ON vs.vaccine_id = v.id " + "JOIN patient p ON vs.patient_id = p.id "
			+ "JOIN user u ON p.user_id = u.id " + "WHERE v.id = :vaccineId AND vs.status = 'COMPLETED' "
			+ "GROUP BY v.name, age_group " + "ORDER BY age_group", nativeQuery = true)
	List<Map<String, Object>> findVaccineStatistics(@Param("vaccineId") long vaccineId);

	@Query("SELECT FUNCTION('hour', vs.vaccinationTime) AS hour, COUNT(vs) AS count " + "FROM VaccineSchedule vs "
			+ "GROUP BY FUNCTION('hour', vs.vaccinationTime)")
	List<Object[]> countByHour();

	@Query("SELECT FUNCTION('DATE', v.vaccinationDate) AS date, COUNT(v) AS count " + "FROM VaccineSchedule v "
			+ "WHERE FUNCTION('DATE', v.vaccinationDate) = :date " + "GROUP BY FUNCTION('DATE', v.vaccinationDate) "
			+ "ORDER BY date")
	List<Object[]> findStatisticsByDay(@Param("date") Date date);

	@Query("SELECT DATE_FORMAT(v.vaccinationDate, '%d') AS day, COUNT(v) AS count " + "FROM VaccineSchedule v "
			+ "WHERE EXTRACT(YEAR FROM v.vaccinationDate) = :year "
			+ "AND EXTRACT(MONTH FROM v.vaccinationDate) = :month " + "GROUP BY DATE_FORMAT(v.vaccinationDate, '%d') "
			+ "ORDER BY day")
	List<Object[]> findStatisticsByDayInMonth(@Param("year") int year, @Param("month") int month);

	@Query("SELECT FUNCTION('MONTH', v.vaccinationDate) AS month, COUNT(v) AS count " + "FROM VaccineSchedule v "
			+ "WHERE EXTRACT(YEAR FROM v.vaccinationDate) = :year " + "GROUP BY FUNCTION('MONTH', v.vaccinationDate) "
			+ "ORDER BY month")
	List<Object[]> findStatisticsByMonthInYear(@Param("year") int year);

	@Query("SELECT v.status, COUNT(v) * 100.0 / (SELECT COUNT(vs) FROM VaccineSchedule vs) AS percentage "
			+ "FROM VaccineSchedule v " + "GROUP BY v.status")
	List<Object[]> findStatusPercentage();

	List<VaccineSchedule> findByVaccinationDateBetween(Date startDate, Date endDate);

	@Query("SELECT vs, p FROM VaccineSchedule vs LEFT JOIN Payment p ON vs.id = p.schedule.id WHERE vs.doctor IS NULL")
	List<Object[]> findSchedulesWithoutDoctor();
}
