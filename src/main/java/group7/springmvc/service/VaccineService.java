package group7.springmvc.service;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
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

	public Page<Vaccine> findAll(String name, String type, String country, Pageable pageable) {
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

	public Page<Vaccine> findAll(Optional<String> countryList, Optional<String> diseaseList, Pageable pageable) {
		
		return vaccineRepository.findAll((root, query, criteriaBuilder) -> {
			List<Predicate> predicates = new ArrayList<>();
			// Initialize lists
			List<String> countries = new ArrayList<>();
			List<String> diseases = new ArrayList<>();

			// Split and assign the countries list if present
			if (countryList.isPresent()) {
				countries = Arrays.asList(countryList.get().split(","));
			}

			// Split and assign the diseases list if present
			if (diseaseList.isPresent()) {
				diseases = Arrays.asList(diseaseList.get().split(","));
			}
			// Add LIKE predicates for each type in the types list
			if (diseases != null && !diseases.isEmpty()) {
				List<Predicate> typePredicates = new ArrayList<>();
				for (String disease : diseases) {
					typePredicates.add(criteriaBuilder.like(root.get("disease"), "%" + disease + "%"));
				}
				// Combine type predicates with OR, as any match should be sufficient
				predicates.add(criteriaBuilder.or(typePredicates.toArray(new Predicate[0])));
			}

			// Add LIKE predicates for each country in the countries list
			if (countries != null && !countries.isEmpty()) {
				List<Predicate> countryPredicates = new ArrayList<>();
				for (String country : countries) {
					countryPredicates.add(criteriaBuilder.like(root.get("country"), "%" + country + "%"));
				}
				// Combine country predicates with OR, as any match should be sufficient
				predicates.add(criteriaBuilder.or(countryPredicates.toArray(new Predicate[0])));
			}

			// Combine all predicates with AND
			return criteriaBuilder.and(predicates.toArray(new Predicate[0]));
		}, pageable);
	}

	public Optional<Vaccine> findById(Long id) {
		return vaccineRepository.findById(id);
	}

	public void deleteById(Long id) {
		vaccineRepository.deleteById(id);
	}

	public Map<String, Long> getCountPatientsByVaccine() {
		List<Object[]> results = vaccineRepository.countPatientsByVaccine();
		Map<String, Long> vaccineStats = new HashMap<>();
		for (Object[] result : results) {
			String vaccineName = (String) result[0];
			Long count = (Long) result[1];
			vaccineStats.put(vaccineName, count);
		}
		return vaccineStats;
	}

	public List<String> getDistinctCountries() {
		return vaccineRepository.findDistinctCountries();
	}

}