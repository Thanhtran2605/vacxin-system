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

@Component
public class SuccessHandler implements AuthenticationSuccessHandler {
	
	@Autowired
	UserService userService;

    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication authentication) throws IOException, ServletException {
        String redirectUrl = null;
        Collection<? extends GrantedAuthority> authorities = authentication.getAuthorities();
        for (GrantedAuthority grantedAuthority : authorities) {
            if (grantedAuthority.getAuthority().equals("ROLE_ADMIN")) {
                redirectUrl = "/vacxin-system/admin/";
                break;
            } else if (grantedAuthority.getAuthority().equals("ROLE_USER")) {
                redirectUrl = "/vacxin-system/";
                break;
            }
        }

        if (redirectUrl == null) {
            throw new IllegalStateException("Role not found for user: " + authentication.getName());
        }

        response.sendRedirect(redirectUrl);
        
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
			session.setAttribute("username", user.getUsername());
			session.setAttribute("email", user.getEmail());
			session.setAttribute("id", user.getId());
			session.setAttribute("role", user.getRole().getValue());			
		}
	}
}
