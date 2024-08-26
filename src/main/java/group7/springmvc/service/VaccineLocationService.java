package group7.springmvc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.criteria.Predicate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import group7.springmvc.model.VaccineLocation;
import group7.springmvc.repository.VaccineLocationRepository;

@Service
public class VaccineLocationService {
	@Autowired
	VaccineLocationRepository vaccineLocationRepository;

	public VaccineLocation save(VaccineLocation vaccineLocation) {
		return vaccineLocationRepository.save(vaccineLocation);
	}
	
	public List<VaccineLocation> findAll() {
		return vaccineLocationRepository.findAll();
	}



	public List<VaccineLocation> findAll(String nameLocation) {
	    return vaccineLocationRepository.findAll((root, query, criteriaBuilder) -> {
	        List<Predicate> predicates = new ArrayList<>();

	        if (nameLocation != null && !nameLocation.isEmpty()) {
	            predicates.add(criteriaBuilder.like(root.get("nameLocation"), "%" + nameLocation + "%"));
	        }

	        return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
	    });
	}

	public Optional<VaccineLocation> findById(Long id) {
		return vaccineLocationRepository.findById(id);
	}

	public void deleteById(Long id) {
		vaccineLocationRepository.deleteById(id);
	}

	public List<VaccineLocation> findByNameLocationContaining(String keyword) {
		return vaccineLocationRepository.findByNameLocationContaining(keyword);
	}

	public VaccineLocation updateVaccineLocation(Long id, VaccineLocation updatedLocation) {
		Optional<VaccineLocation> existingLocationOptional = vaccineLocationRepository.findById(id);
		if (existingLocationOptional.isPresent()) {
			VaccineLocation existingLocation = existingLocationOptional.get();
			existingLocation.setNameLocation(updatedLocation.getNameLocation());
			existingLocation.setAddress(updatedLocation.getAddress());
			existingLocation.setPhone(updatedLocation.getPhone());
			existingLocation.setEmail(updatedLocation.getEmail());
			existingLocation.setWebsite(updatedLocation.getWebsite());
			existingLocation.setFanpage(updatedLocation.getFanpage());
			existingLocation.setImageLink(updatedLocation.getImageLink());
			existingLocation.setOpeningHours(updatedLocation.getOpeningHours());
			existingLocation.setClosingHours(updatedLocation.getClosingHours());

			return vaccineLocationRepository.save(existingLocation);
		}
		return null;
	}

}
