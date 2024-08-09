/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 9, 2024
 *	@version 1.0
*/
package group7.springmvc.model;

import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;
import lombok.experimental.SuperBuilder;

@Entity
@Data
@NoArgsConstructor
@SuperBuilder
@Table(name = "diagnosis_forms")
public class DiagnosisForm {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	@ManyToOne
	@JoinColumn(name = "patient_id")
	@ToString.Exclude
	Patient patient;

	@ManyToOne
	@JoinColumn(name = "doctor_id")
	@ToString.Exclude
	Doctor doctor;

	Date date;

	String description;

}
