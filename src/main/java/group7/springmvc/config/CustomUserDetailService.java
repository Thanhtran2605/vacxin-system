package group7.springmvc.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.security.core.authority.AuthorityUtils;
import group7.springmvc.service.UserService;

import org.springframework.security.core.userdetails.User;

//Tiếp theo là file CustomUserDetailService.java
@Component
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	UserService userService;

	// Hàm này giúp Spring Security sử dụng để tải thông tin người dùng từ nguồn dữ liệu (thường là cơ sở dữ liệu) khi người dùng đăng nhập
	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		group7.springmvc.model.User userDetail = userService.findByUsername(username); // Đây là model tụi mình định nghĩa
		// Khi ở trang login nhập username = "admin"
		// Thì User trả vể { User [ username = "admin" , password = "12345" , role = "ADMIN" ] }
		return new User(userDetail.getUsername(), userDetail.getPassword(),
				AuthorityUtils.createAuthorityList("ROLE_" + userDetail.getRole().getValue()));
		// Còn new User này là của ( import org.springframework.security.core.userdetails.User; ) 
		// là một lớp User của spring security định nghĩa sẳn để xác thực login contructor gồm new User(username, password , authorities)
		// Model của mình tạo bao nhiêu thuộc tính không cần biết khi gắn cho User của spring security thì chỉ quan tâm ( username, password , authorities )
		// có nghĩa là từ lớp User của mình sẽ gắn dữ liệu cho User của spring security
		
	}

}
