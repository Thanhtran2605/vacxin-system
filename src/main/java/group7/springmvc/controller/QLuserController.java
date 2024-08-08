package group7.springmvc.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import group7.springmvc.model.User;
import group7.springmvc.service.UserService;

@Controller
@RequestMapping("/admin")
public class QLuserController {
    @Autowired
    private UserService userService; 

    @GetMapping("/qluser")
    public String QLuser(ModelMap model) {
        List<User> users = userService.findAll();
        model.addAttribute("listUser", users);
        System.out.println("user: " + users);
        return "admin/dashboard/QLuser";
    }
}
