/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Oct 20, 2024
 *	@version 1.0
*/
package group7.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "address")
public class Address {

	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	String id;

	String address;
	
	String district;
}
