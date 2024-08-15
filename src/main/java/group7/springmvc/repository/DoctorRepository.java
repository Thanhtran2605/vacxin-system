/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Long> {
	@Query("SELECT r FROM Doctor r WHERE r.employee.id = :id")
	Optional<Doctor> findById(@Param("id") Long id);

	@Query("SELECT r FROM Doctor r WHERE r.employee.user.fullName LIKE %:name%")
	List<Doctor> findByName(@Param("name") String name);
}
