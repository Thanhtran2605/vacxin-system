package group7.springmvc.model;

import java.time.LocalDate;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;
import javax.validation.constraints.Email;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.ToString;

@Entity
@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
@Table(name = "user")
public class User {

	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	long id;

	
	@NotBlank(message = "Email không được trống")
    @Email(message = "Email không hợp lệ")
    private String email;

    @NotBlank(message = "Tên đăng nhập không được trống")
    private String username;

    @NotBlank(message = "Mật Khẩu không được trống")
    @Size(min = 6, message = "Mật khẩu phải trên 6 ký tự")
    private String password;
    
    @NotBlank(message = "Số điện thoại không được trống")
    @Pattern(regexp = "^\\+?[0-9]*$", message = "Số điện thoại không đúng định dạng")
	String phone;
    @NotBlank(message = "Địa chỉ không được trống")
	String address;
    @NotNull(message = "Ngày sinh không được trống")
    LocalDate birthday;

	String fullName;
	String gender;
	
	byte status;

	@ManyToOne
	@JoinColumn(name = "role_id")
	@ToString.Include
	Role role;
}