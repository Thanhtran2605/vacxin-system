package group7.springmvc.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import group7.springmvc.model.User;
import group7.springmvc.repository.UserRepository;

@Service
public class PasswordService {
	@Autowired
	private UserRepository userRepository;

	@Autowired
	private PasswordEncoder passwordEncoder;

	public boolean checkIfValidOldPassword(String username, String oldPassword) {
		User user = userRepository.findByUsername(username);
		return passwordEncoder.matches(oldPassword, user.getPassword());
	}

	public void changeUserPassword(String username, String newPassword) {
		User user = userRepository.findByUsername(username);
		user.setPassword(passwordEncoder.encode(newPassword));
		userRepository.save(user);
	}
}
