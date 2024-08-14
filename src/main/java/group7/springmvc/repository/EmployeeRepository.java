package group7.springmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.Employee;

@Repository
public interface EmployeeRepository extends JpaRepository<Employee, Long> {

}
