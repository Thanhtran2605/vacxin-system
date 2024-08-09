package group7.springmvc.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import group7.springmvc.model.Role;
import group7.springmvc.repository.RoleRepository;

@Service
public class RoleService {
	@Autowired
	RoleRepository roleRepository;

	public List<Role> findAll() {
		return roleRepository.findAll();
	}
	
	public Role findByValue(String value) {
		return roleRepository.findByValue(value);
	}
	
	 public Role findById(Long id) {
	        return roleRepository.findById(id).orElse(null);
	    }	
}
