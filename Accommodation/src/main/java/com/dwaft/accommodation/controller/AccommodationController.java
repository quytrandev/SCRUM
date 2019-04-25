package com.dwaft.accommodation.controller;

import com.dwaft.accommodation.service.AccommodationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AccommodationController {
    @Autowired
    AccommodationService accommodationService;
    @RequestMapping("/")
    public String listRoom(Model model){
        model.addAttribute("listRoom", accommodationService.findAllAccommodation());
        return "index";
    }
}
