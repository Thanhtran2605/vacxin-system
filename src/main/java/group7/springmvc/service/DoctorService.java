/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 10, 2024
 *	@version 1.0
*/
package group7.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import group7.springmvc.model.Doctor;
import group7.springmvc.repository.DoctorRepository;

@Service
public class DoctorService {

	@Autowired
	private DoctorRepository doctorRepository;

	public Doctor save(Doctor doctor) {
		return doctorRepository.save(doctor);
	}

	public List<Doctor> getAllDoctors() {
		return doctorRepository.findAll();
	}

	public Doctor getDoctorById(Long id) {
		return doctorRepository.findById(id).orElse(null);
	}

	public void deleteById(Long id) {
		doctorRepository.deleteById(id);
	}

	public List<Doctor> findByIdOrName(String searchTerm) {
		List<Doctor> receptionists;
		try {
			// Kiểm tra nếu searchTerm có thể chuyển đổi thành Long
			Long id = Long.parseLong(searchTerm);
			// Tìm theo ID
			receptionists = doctorRepository.findById(id).map(receptionist -> List.of(receptionist))
					.orElseGet(List::of); // Trả về danh sách rỗng nếu không tìm thấy
		} catch (NumberFormatException e) {
			// Nếu không phải ID, tìm kiếm theo tên
			receptionists = doctorRepository.findByName(searchTerm);
		}
		return receptionists;
	}
}