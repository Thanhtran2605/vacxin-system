package group7.springmvc.service;

import java.util.ArrayList;
import java.util.List;
import java.util.Optional;

import javax.persistence.criteria.Predicate;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
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
	
	public Page<Vaccine> findAll(Pageable pageable) {
		return vaccineRepository.findAll(pageable);
	}
	
	public Page<Vaccine> findAllByCriteria(String name, String type, String country, Pageable pageable) {
	    return vaccineRepository.findAll((root, query, criteriaBuilder) -> {
	        List<Predicate> predicates = new ArrayList<>();

	        if (name != null && !name.isEmpty()) {
	            predicates.add(criteriaBuilder.like(root.get("name"), "%" + name + "%"));
	        }

	        if (type != null && !type.isEmpty()) {
	            predicates.add(criteriaBuilder.like(root.get("disease"), "%" + type + "%"));
	        }

	        if (country != null && !country.isEmpty()) {
	            predicates.add(criteriaBuilder.like(root.get("country"), "%" + country + "%"));
	        }

	        return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
	    }, pageable);
	}

	public Optional<Vaccine> findById(Long id) {
		return vaccineRepository.findById(id);
	}

	public void deleteById(Long id) {
		vaccineRepository.deleteById(id);
	}

	
}