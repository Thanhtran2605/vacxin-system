
package group7.springmvc.model;

import java.time.LocalDateTime;

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
@Table(name = "payment")
public class Payment {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	Long id;

	@ManyToOne
	@JoinColumn(name = "schedule_id")
	@ToString.Include
	VaccineSchedule schedule;

	@ManyToOne
	@JoinColumn(name = "receptionist_id")
	@ToString.Include
	Receptionist receptionist;

	double totalAmount;
	
	String numberBank;
	String bankName;
	LocalDateTime paymentDate;
	
	@Enumerated(EnumType.STRING)
	@Column(name = "status")
	Status status;
	
	public enum Status {
		PAYMENT, NON_PAYMENT;

		@Override
		public String toString() { 
			switch (this) {
			case PAYMENT:
				return "Đã thanh toán";
			case NON_PAYMENT:
				return "Chưa thanh toán";
			default:
				throw new IllegalArgumentException();
			}
		}
	}
	
	@Enumerated(EnumType.STRING)
	@Column(name = "payment_method")
	PaymentMethod payment_method;

	public enum PaymentMethod {
		ATM, CASH;

		@Override
		public String toString() {
			switch (this) {
			case ATM:
				return "Tiền mặt";
			case CASH:
				return "ATM";
			default:
				throw new IllegalArgumentException();
			}
		}
	}
}
