package group7.springmvc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import group7.springmvc.model.Vaccine;
import group7.springmvc.repository.VaccineRepository;

@Service
public class VaccineService {
	@Autowired
	VaccineRepository vaccineRepository;

	public Vaccine save(Vaccine vaccine) {
		return vaccineRepository.save(vaccine);
	}

	public List<Vaccine> findAll() {
		return vaccineRepository.findAll();
	}

	public Optional<Vaccine> findById(Long id) {
		return vaccineRepository.findById(id);
	}

	public void deleteById(Long id) {
		vaccineRepository.deleteById(id);
	}

	
}