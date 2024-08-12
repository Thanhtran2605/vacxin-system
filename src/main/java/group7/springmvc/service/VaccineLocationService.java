package group7.springmvc.service;

import org.springframework.stereotype.Service;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;

import group7.springmvc.model.VaccineLocation;
import group7.springmvc.repository.VaccineLocationRepository;

@Service
public class VaccineLocationService {
	@Autowired 
	VaccineLocationRepository vaccineLocationRepository;

	public <S extends VaccineLocation> S save(S entity) {
		return vaccineLocationRepository.save(entity);
	}

	public List<VaccineLocation> findAll() {
		return vaccineLocationRepository.findAll();
	}

	public Optional<VaccineLocation> findById(Long id) {
		return vaccineLocationRepository.findById(id);
	}

	public void deleteById(Long id) {
		vaccineLocationRepository.deleteById(id);
	}

	
}
