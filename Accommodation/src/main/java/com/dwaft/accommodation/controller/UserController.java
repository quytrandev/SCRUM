package com.dwaft.accommodation.controller;

import com.dwaft.accommodation.model.User;
import com.dwaft.accommodation.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
@RequestMapping(value="/user")
public class UserController {
    @Autowired
    UserService userService;

    @RequestMapping("/listUser")
    public String listUser(Model model){
        model.addAttribute("listUser", userService.findAllUser());
        return "home";
    }

    @RequestMapping(value="/addUser", method=RequestMethod.GET)
    public ModelAndView addProduct() {
        ModelAndView model = new ModelAndView();

        User user = new User();
        model.addObject("user_add", user);
        model.setViewName("register");

        return model;
    }

    @RequestMapping(value="/saveUser", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute ("user_update") User user) {
        userService.saveOrUpdate(user);

        return new ModelAndView("redirect:/user/listUser");
    }
}
