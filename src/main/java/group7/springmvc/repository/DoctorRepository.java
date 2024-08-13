/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.Doctor;

@Repository
public interface DoctorRepository extends JpaRepository<Doctor, Long> {
	
}
