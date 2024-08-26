package group7.springmvc.config;

import static org.springframework.security.config.Customizer.withDefaults;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.builders.WebSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

// Đầu tiên là file SecurityConfig 
@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	CustomUserDetailService customUserDetailService;

	@Bean
	AuthenticationSuccessHandler authenticationSuccessHandler() {
		return new SuccessHandler();
	}

	// Hàm này giúp xử lý các yêu cầu HTTP và bảo mật ứng dụng web
	// cấu hình các quy tắc phân quyền cho các đường dẫn URL
	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests(requests -> requests
				// được phép truy cập bởi bất kỳ ai mà không cần xác thực (public).
				.antMatchers("/", "/home", "/register", "/store").permitAll()
				// chỉ cho phép người dùng có vai trò (role) ADMIN truy cập
				.antMatchers("/admin/", "/admin/profile", "/admin/schedules/**",
						"/admin/statistic/statistic-by-vaccine", "/admin/my-schedule")
				.hasAnyRole("ADMIN", "DOCTOR", "RECEPTIONIST").antMatchers("/admin/**").hasRole("ADMIN")
				// .antMatchers("/admin/my-schedule").hasRole("DOCTOR")

				// Mọi yêu cầu khác ngoài những cái trên đều yêu cầu người dùng phải xác thực
				// (login)
				.anyRequest().authenticated()).httpBasic(withDefaults())
				.formLogin(login -> login.loginPage("/login").successHandler(authenticationSuccessHandler()) // Liên
																												// quan
																												// tới
																												// file
																												// SuccessHandler.java
						.failureUrl("/login?error=true").permitAll())

				.csrf(csrf -> csrf.disable())
				.logout(logout -> logout.logoutSuccessUrl("/login?logout=true").permitAll());
	}

	// Hàm này giúp thiết lập cách Spring Security sẽ lấy thông tin người dùng để
	// xác thực.
	@Override
	protected void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
		authenticationManagerBuilder.userDetailsService(customUserDetailService); // Liên quan tới file
																					// CustomUserDetailService.java
	}

	@Override
	public void configure(WebSecurity web) throws Exception {
		web.ignoring().antMatchers("/resources/**", "/static/**", "/css/**", "/js/**", "/images/**");
	}

	@Bean
	public PasswordEncoder passwordEncoder() {
		return new BCryptPasswordEncoder();
	}
}
