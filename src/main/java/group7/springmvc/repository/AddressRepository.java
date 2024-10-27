/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Oct 20, 2024
 *	@version 1.0
*/
package group7.springmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;

import group7.springmvc.model.Address;

public interface AddressRepository extends JpaRepository<Address, String>{

	
	
}
