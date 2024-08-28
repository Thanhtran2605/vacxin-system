package group7.springmvc.controller.admin;

import java.time.LocalDate;
import java.util.List;
import java.util.Optional;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import group7.springmvc.model.Employee;
import group7.springmvc.model.Role;
import group7.springmvc.model.User;
import group7.springmvc.service.EmployeeService;
import group7.springmvc.service.RoleService;
import group7.springmvc.service.UserService;

@Controller
@RequestMapping("/admin/qluser")
public class QLuserController {
    @Autowired
    private UserService userService; 
    @Autowired 
    private RoleService roleService;
    @Autowired
    private PasswordEncoder passwordEncoder;
    @Autowired
    private EmployeeService employeeService;
    
    @GetMapping("/")
    public String QLuser(@RequestParam(value = "username", required = false) String username, ModelMap model) {
        List<User> users;
        if (username != null && !username.isEmpty()) {
            users = userService.findByUsernameContaining(username);
        } else {
            users = userService.findAll();
        }
        model.addAttribute("listUser", users);
        return "admin/QL_user/index";
    }
//---------------------------
    @GetMapping("/add")
    public String addUserForm(ModelMap model) {
        User newUser = new User();
        List<Role> roles = roleService.findAll(); 
        model.addAttribute("newUser", newUser);
        model.addAttribute("roles", roles);
        return "admin/QL_user/create";
    }

    @PostMapping("/add")
    public String saveNewUser(
            @RequestParam("username") String username,
            @RequestParam("email") String email,
            @RequestParam("fullName") String fullName,
            @RequestParam("gender") String gender,
            @RequestParam("phone") String phone,
            @RequestParam("address") String address,
            @RequestParam("password") String password,
            @RequestParam("birthday") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate birthday,
            @RequestParam("role") byte roleId,
            RedirectAttributes redirectAttributes) {
        
        // Kiểm tra ngày sinh
        if (birthday.isAfter(LocalDate.now())) {
            redirectAttributes.addFlashAttribute("error", "Ngày sinh không được vượt quá ngày hiện tại!");
            return "redirect:/admin/qluser/add";
        }

        Role role = roleService.findById(roleId);
        String hashedPassword = passwordEncoder.encode(password); // Hash the password
        User newUser = User.builder()
            .username(username)
            .email(email)
            .phone(phone)
            .fullName(fullName)
            .gender(gender)
            .password(hashedPassword) // Set the hashed password
            .address(address)
            .birthday(birthday)
            .role(role)
            .build();

        // Lưu người dùng mới
        User savedUser = userService.save(newUser);
//        Employee SaveEmployee = employeeService.save(savedUser);
        		
        if (savedUser != null) {
            redirectAttributes.addFlashAttribute("message", "User added successfully!");
        } else {
            redirectAttributes.addFlashAttribute("error", "User addition failed!");
        }
        return "redirect:/admin/qluser/";
    }
  //---------------------------
    @GetMapping("edit/{id}")
    public String editUser(@PathVariable("id") Long id, ModelMap model) {
        Optional<User> optionalUser = userService.findById(id);
        if (optionalUser.isPresent()) {
            User user = optionalUser.get();
            model.addAttribute("editUser", user);
            // Giả sử bạn có một phương thức để lấy danh sách các vai trò
            List<Role> roles = roleService.findAll(); 
            model.addAttribute("roles", roles);
            return "admin/QL_user/edit";
        } else {
            // Xử lý nếu không tìm thấy người dùng
            return "redirect:/admin/qluser";
        }
    }        
    
    @PostMapping("edit/{id}")
    public String updateUser(
            @PathVariable("id") Long id, 
            @RequestParam("username") String username,
            @RequestParam("email") String email,
            @RequestParam("phone") String phone,
            @RequestParam("address") String address,
            @RequestParam("birthday") @DateTimeFormat(iso = DateTimeFormat.ISO.DATE) LocalDate birthday,
            @RequestParam("role") byte roleId,
            RedirectAttributes redirectAttributes) {
    	
    	// Kiểm tra ngày sinh
        if (birthday.isAfter(LocalDate.now())) {
            redirectAttributes.addFlashAttribute("error", "Ngày sinh không được vượt quá ngày hiện tại!");
            return "redirect:/admin/qluser/edit/" + id;
        }
    
        Role role = roleService.findById(roleId);    
        User updatedUser = User.builder()
            .username(username)
            .email(email)
            .phone(phone)
            .address(address)
            .birthday(birthday)
            .role(role)
            .build();
        
        System.out.println("Role ID from form: " + roleId);

        System.out.println("Role retrieved from DB: " + role);

        // Cập nhật User
        User savedUser = userService.updateUser(id, updatedUser);

        if (savedUser != null) {
            redirectAttributes.addFlashAttribute("message", "User updated successfully!");
        } else {
            redirectAttributes.addFlashAttribute("error", "User update failed!");
        }

        return "redirect:/admin/qluser/";
    }        
    
    @PostMapping("/delete")
    public String deleteUser(@RequestParam("userId") Long userId, RedirectAttributes redirectAttributes) {
        userService.deleteById(userId);
        redirectAttributes.addFlashAttribute("message", "User deleted successfully!");
        return "redirect:/admin/qluser/";
    }   
}