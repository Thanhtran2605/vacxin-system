package group7.springmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.Employee;
import group7.springmvc.model.User;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {
	Employee findByUser(User user);
}
