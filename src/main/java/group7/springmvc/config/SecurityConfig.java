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

@Configuration
@EnableWebSecurity
public class SecurityConfig extends WebSecurityConfigurerAdapter {

	@Autowired
	CustomUserDetailService customUserDetailService;

	@Bean
	AuthenticationSuccessHandler authenticationSuccessHandler() {
		return new SuccessHandler();
	}

	@Override
	protected void configure(HttpSecurity http) throws Exception {
		http.authorizeRequests(requests -> requests
				
				.antMatchers("/", "/home", "/register", "/store", "/gioithieu", "/news", "/news_details", "/price_list", "/camnang", "/location").permitAll()
			    .antMatchers("/admin/schedules/**", "/admin/qlvaccinelocation/**").hasAnyRole("ADMIN", "RECEPTIONIST")
			    .antMatchers("/admin/my-schedule/**", "/admin/vaccines/**").hasAnyRole("ADMIN", "DOCTOR")
			    .antMatchers("/admin/profile", "/admin/", "/admin/contact", "/admin/statistic/**").hasAnyRole("ADMIN", "DOCTOR", "RECEPTIONIST")
			    .antMatchers("/admin/**").hasRole("ADMIN")
			    
				.anyRequest().authenticated()).httpBasic(withDefaults())
				.formLogin(login -> login.loginPage("/login").successHandler(authenticationSuccessHandler())
						.failureUrl("/login?error=true").permitAll())
				.csrf(csrf -> csrf.disable())
				.logout(logout -> logout.logoutSuccessUrl("/login?logout=true").permitAll());
	}

	@Override
	protected void configure(AuthenticationManagerBuilder authenticationManagerBuilder) throws Exception {
		authenticationManagerBuilder.userDetailsService(customUserDetailService);
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
