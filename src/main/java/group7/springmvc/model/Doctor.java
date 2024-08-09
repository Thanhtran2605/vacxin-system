/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 9, 2024
 *	@version 1.0
*/
package group7.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.EqualsAndHashCode;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

@Entity
@Data
@NoArgsConstructor
@SuperBuilder
@EqualsAndHashCode(callSuper = true)
@Table(name = "doctors")
public class Doctor extends Employee {

	String specialization;

	String licenseNumber;

	int yearsOfExperience;

	@ManyToOne
	@JoinColumn(name = "employee_id")
	@ToString.Exclude
	Employee employee;

}
