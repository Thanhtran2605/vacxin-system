/*
*	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.repository;

import java.util.Date;
import java.util.List;

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

	@Query("SELECT vs FROM VaccineSchedule vs WHERE vs.doctor.employee.user.fullName LIKE %:doctorName%")
	List<VaccineSchedule> findByDoctorName(@Param("doctorName") String doctorName);

	@Query("SELECT vs FROM VaccineSchedule vs WHERE vs.patient.user.fullName LIKE %:patientName%")
	List<VaccineSchedule> findByPatientName(@Param("patientName") String patientName);

	@Query("SELECT vs FROM VaccineSchedule vs WHERE vs.vaccine.name LIKE %:vaccineName%")
	List<VaccineSchedule> findByVaccineName(@Param("vaccineName") String vaccineName);


}
