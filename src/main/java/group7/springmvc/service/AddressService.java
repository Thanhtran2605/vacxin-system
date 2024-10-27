/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Oct 20, 2024
 *	@version 1.0
*/
package group7.springmvc.service;

import java.util.List;

import javax.persistence.EntityNotFoundException;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import group7.springmvc.model.Address;
import group7.springmvc.repository.AddressRepository;

@Service
public class AddressService {

	@Autowired
	private AddressRepository addressRepository;

	public List<Address> getAllAddress() {
		return addressRepository.findAll();
	}

	public Address searchAddressById(String addressId) {
	    return addressRepository.findById(addressId)
	                            .orElseThrow(() -> new EntityNotFoundException("Address not found"));
	}
	
	public void updateAddress(Address address) {
	    addressRepository.save(address);
	}

}