package group7.springmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.Role;

@Repository
public interface RoleRepository extends JpaRepository<Role, Byte>{
	Role findByValue(String value);
}
