package com.quanlycuahang.controller;

import com.quanlycuahang.models.User;
import com.quanlycuahang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;


@Controller
@RequestMapping(value = "account")
public class LoginController {
    UserService userService;
    @RequestMapping(value = "/login",method = RequestMethod.GET)
    public String index() {
        return "login";
    }
    @RequestMapping(value = "/account/login", method = RequestMethod.POST)
    public String login(
            @RequestParam("username") String userName,
            @RequestParam("password") String pass,
            HttpSession session,
            ModelMap modelMap) {

        User user = new User();
        user.setUsername(userName);
        user.setPassword(pass);
        String username = user.getUsername();
        String password = user.getPassword();
        if(userName.equalsIgnoreCase("tuan") && pass.equalsIgnoreCase("123")) {
            session.setAttribute("username", userName);
            return "/";
        } else {
            modelMap.put("error", "Invalid Account");
            return "/abc";
        }
    }

    @RequestMapping(value = "logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("username");
        return "redirect:/account";
    }
}

