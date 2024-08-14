/*
 *	(C) Copyright 2024. All Rights Reserved.
 *	@author DELL
 * 	@date Aug 9, 2024
 *	@version 1.0
*/
package group7.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name="vaccine")
public class Vaccine {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long id;
	
	@NotBlank(message = "Tên vaccine không được trống")
    private String name;

    @NotNull(message = "Giá is không được trống")
    private Double price;

    @NotBlank(message = "Nơi sản xuất is không được trống")
    private String country;

    @NotBlank(message = "Bệnh is không được trống")
    private String disease;

    @NotBlank(message = "Mô tả is không được trống")
    private String description;

    @NotBlank(message = "URL Hình ảnh is không được trống")
    private String image;

}
