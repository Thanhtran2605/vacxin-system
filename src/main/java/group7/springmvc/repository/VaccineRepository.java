package group7.springmvc.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.JpaSpecificationExecutor;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.Vaccine;

@Repository
public interface VaccineRepository extends JpaRepository<Vaccine, Long>, JpaSpecificationExecutor<Vaccine> {
	@Query("SELECT vs.vaccine.name, COUNT(vs.patient.id) FROM VaccineSchedule vs WHERE vs.status = 'COMPLETED' GROUP BY vs.vaccine.name")
	List<Object[]> countPatientsByVaccine();


	@Query("SELECT DISTINCT v.country FROM Vaccine v")
	List<String> findDistinctCountries();
	
}
