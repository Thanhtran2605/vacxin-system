package group7.springmvc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import group7.springmvc.model.Employee;
import group7.springmvc.model.User;
import group7.springmvc.repository.EmployeeRepository;

@Service
public class EmployeeService {
	@Autowired
	EmployeeRepository employeeRepository;

	public Employee save(Employee employee) {
		return employeeRepository.save(employee);
	}

	public List<Employee> findAll() {
		return employeeRepository.findAll();
	}

	public Employee findById(Long id) {
		return employeeRepository.findById(id).orElse(null);
	}

	public void deleteById(Long id) {
		employeeRepository.deleteById(id);
	}

	public Employee findByUser(User user) {
		return employeeRepository.findByUser(user);
	}

	public Optional<Employee> findByUserId(Long userId) {
		return employeeRepository.findByUserId(userId);
	}
	
}
