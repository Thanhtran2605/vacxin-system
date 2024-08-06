package group7.springmvc.config;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
import org.springframework.stereotype.Component;
import org.springframework.security.core.authority.AuthorityUtils;
import org.springframework.security.core.userdetails.User;

import group7.springmvc.service.UserService;

@Component
public class CustomUserDetailService implements UserDetailsService {

	@Autowired
	UserService userService;

	@Override
	public UserDetails loadUserByUsername(String username) throws UsernameNotFoundException {
		group7.springmvc.model.User userDetail = userService.findByUsername(username);
		return new User(userDetail.getUsername(), userDetail.getPassword(),
				AuthorityUtils.createAuthorityList("ROLE_" + userDetail.getRole().getValue()));
	}

}
