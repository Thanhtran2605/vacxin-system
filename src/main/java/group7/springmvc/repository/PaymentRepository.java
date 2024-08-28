package group7.springmvc.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import group7.springmvc.model.Payment;
import group7.springmvc.model.VaccineSchedule;

@Repository
public interface PaymentRepository extends JpaRepository<Payment, Long>{

	Payment findBySchedule(VaccineSchedule schedule);
}
