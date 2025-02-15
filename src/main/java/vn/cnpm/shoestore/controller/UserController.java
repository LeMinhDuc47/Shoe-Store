package vn.cnpm.shoestore.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;

import vn.cnpm.shoestore.domain.User;
import vn.cnpm.shoestore.service.UserService;

import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class UserController {
    private final UserService userService;

    public UserController(UserService userService) {
        this.userService = userService;
    }

    @RequestMapping("/")
    public String getHomePage(Model model) {
        return new String();
    }

    @RequestMapping("/admin/user")
    public String getUserPage(Model model) {
        model.addAttribute("newUser", new User());
        return "admin/user/create";
    }

    @RequestMapping(value = "/admin/user/create1", method = RequestMethod.POST)
    public String createUserPage(Model model, @ModelAttribute("newUser") User minhduc) {
        System.out.println(minhduc);
        return "hello";
    }
}
