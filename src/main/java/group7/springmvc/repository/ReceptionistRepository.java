package group7.springmvc.repository;

import java.util.List;
import java.util.Optional;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.Employee;
import group7.springmvc.model.Receptionist;

@Repository
public interface ReceptionistRepository extends JpaRepository<Receptionist, Long> {
	@Query("SELECT r FROM Receptionist r WHERE r.employee.id = :id")
	Optional<Receptionist> findById(@Param("id") Long id);

	@Query("SELECT r FROM Receptionist r WHERE r.employee.user.fullName LIKE %:name%")
	List<Receptionist> findByName(@Param("name") String name);
	
	Receptionist findByEmployee(Employee employee);
}
