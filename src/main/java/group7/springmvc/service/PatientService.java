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

import group7.springmvc.model.Patient;
import group7.springmvc.model.User;
import group7.springmvc.repository.PatientRepository;

@Service
public class PatientService {
    @Autowired
     PatientRepository patientRepository;
    

    public List<Patient> getAllPatients() {
        return patientRepository.findAll();
    }

    public Patient getPatientById(Long id) {
        return patientRepository.findById(id).orElse(null);
    }
    
    public Patient findByUser(User user) {
        return patientRepository.findByUser(user);
    }
}
