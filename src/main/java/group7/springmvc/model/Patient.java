package group7.springmvc.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
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
@Table(name = "patients")
public class Patient extends User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;

	String idCard;

	String note;
	
	@ManyToOne
    @JoinColumn(name = "user_id")
	@ToString.Exclude
    User user;
}
