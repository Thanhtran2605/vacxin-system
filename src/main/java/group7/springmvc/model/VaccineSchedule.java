package group7.springmvc.model;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.EnumType;
import javax.persistence.Enumerated;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

import group7.springmvc.model.VaccineSchedule.Status;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "vaccine_schedule")
public class VaccineSchedule {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long id;

	@ManyToOne
	@JoinColumn(name = "doctor_id")
	@ToString.Exclude
	Doctor doctor;

	@ManyToOne
	@JoinColumn(name = "patient_id")
	@ToString.Exclude
	Patient patient;

	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "yyyy-MM-dd")
	Date vaccinationDate;

	@Temporal(TemporalType.TIME)
	@DateTimeFormat(pattern = "HH:mm")
	Date vaccinationTime;

	@ManyToOne
	@JoinColumn(name = "location_id")
	@ToString.Exclude
	VaccineLocation location;

	@ManyToOne
	@JoinColumn(name = "vaccine_id")
	@ToString.Exclude
	Vaccine vaccine;

	@Enumerated(EnumType.STRING)
	@Column(name = "status")
	Status status;

	public enum Status {
		COMPLETED, NOT_DUE, CANCELLED, LATE;

		@Override
		public String toString() {
			switch (this) {
			case COMPLETED:
				return "Đã tiêm";
			case NOT_DUE:
				return "Chưa tới lịch hẹn";
			case CANCELLED:
				return "Hủy tiêm";
			case LATE:
				return "Trễ hẹn";
			default:
				throw new IllegalArgumentException();
			}
		}
	}
}
