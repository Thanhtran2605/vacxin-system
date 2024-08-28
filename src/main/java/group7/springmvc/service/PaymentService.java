package group7.springmvc.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import group7.springmvc.model.Payment;
import group7.springmvc.model.VaccineSchedule;
import group7.springmvc.repository.PaymentRepository;

@Service
public class PaymentService {
		@Autowired
		private PaymentRepository paymentRepository;

		public Payment save(Payment payment) {
			return paymentRepository.save(payment);
		}

		public List<Payment> findAll() {
			return paymentRepository.findAll();
		}

		public Payment findBySchedule(VaccineSchedule schedule) {
			return paymentRepository.findBySchedule(schedule);
		}
		
		
		
}
