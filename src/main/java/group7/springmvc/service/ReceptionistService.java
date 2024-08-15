package group7.springmvc.service;

import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import group7.springmvc.model.Receptionist;
import group7.springmvc.repository.ReceptionistRepository;

@Service
public class ReceptionistService {
	@Autowired
	ReceptionistRepository receptionistRepository;

	public Receptionist save(Receptionist receptionist) {
		return receptionistRepository.save(receptionist);
	}

	public List<Receptionist> findAll() {
		return receptionistRepository.findAll();
	}

	public Optional<Receptionist> findById(Long id) {
		return receptionistRepository.findById(id);
	}

	public void deleteById(Long id) {
		receptionistRepository.deleteById(id);
	}

	public List<Receptionist> findByIdOrName(String searchTerm) {
		List<Receptionist> receptionists;
		try {
			// Kiểm tra nếu searchTerm có thể chuyển đổi thành Long
			Long id = Long.parseLong(searchTerm);
			// Tìm theo ID
			receptionists = receptionistRepository.findById(id).map(receptionist -> List.of(receptionist))
					.orElseGet(List::of); // Trả về danh sách rỗng nếu không tìm thấy
		} catch (NumberFormatException e) {
			// Nếu không phải ID, tìm kiếm theo tên
			receptionists = receptionistRepository.findByName(searchTerm);
		}
		return receptionists;
	}
}
