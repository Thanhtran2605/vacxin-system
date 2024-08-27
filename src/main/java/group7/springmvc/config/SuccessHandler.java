package group7.springmvc.config;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.WebAttributes;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import group7.springmvc.model.User;
import group7.springmvc.service.UserService;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.io.IOException;
import java.util.Collection;

//Cuối cùng là file SuccessHandler.java
@Component
public class SuccessHandler implements AuthenticationSuccessHandler {
	
	@Autowired
	UserService userService;
	
	// Hàm này giúp điều hướng người dùng khi sử lý đăng nhập thành công
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
    	// Khởi tạo đường dẫn sẽ đến 
        String redirectUrl = null;
        // Đây là một loại collection đặc biệt của authorities trong lớp User xem trong file CustomUserDetailService.java
        // Như đã nói thì sau gắn dữ liệu cho User của spring security là new User(username, password , authorities)  tui ví dụ thì authorities = "ROLE_ADMIN"
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities(); // cái này là authorities nè
        // So sánh 
        for (GrantedAuthority grantedAuthority : authorities) {
            if (grantedAuthority.getAuthority().equals("ROLE_ADMIN") || grantedAuthority.getAuthority().equals("ROLE_RECEPTIONIST")
            		|| grantedAuthority.getAuthority().equals("ROLE_DOCTOR")) {
                redirectUrl = "/vacxin-system/admin/";
                break;
            } else if (grantedAuthority.getAuthority().equals("ROLE_PATIENT")) {
                redirectUrl = "/vacxin-system/";
                break;
            }
        }
        // Túi hôm trước cậu Đức in ra dòng này nè =))))
        if (redirectUrl == null) {
            throw new IllegalStateException("Role not found for user: " + authentication.getName());
        }
        // Thực thi nè như Servlet JSP
        response.sendRedirect(redirectUrl);
        
        // Cái này là hàm dưới thôi chủ yếu lưu session
        clearAuthenticationAttributes(request, authentication);
    }

	private void clearAuthenticationAttributes(HttpServletRequest request, Authentication authentication) {
		HttpSession session = request.getSession(false);
		if (session == null) {
			return;
		}
		session.removeAttribute(WebAttributes.AUTHENTICATION_EXCEPTION);

		User user = userService.findByUsername(authentication.getName());

		if (user != null) {
			session.setAttribute("fullname", user.getFullName());
			session.setAttribute("username", user.getUsername());
			session.setAttribute("email", user.getEmail());
			session.setAttribute("id", user.getId());
			session.setAttribute("role", user.getRole().getValue());			
		}
	}
}
