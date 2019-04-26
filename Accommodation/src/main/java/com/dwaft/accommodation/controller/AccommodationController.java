package com.dwaft.accommodation.controller;

import com.dwaft.accommodation.model.Accommodation;
import com.dwaft.accommodation.model.User;
import com.dwaft.accommodation.service.AccommodationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
@RequestMapping(value="/accommodation")
public class AccommodationController {
    @Autowired
    AccommodationService accommodationService;
    @RequestMapping("/")
    public String listRoom(Model model){
        model.addAttribute("listRoom", accommodationService.findAllAccommodation());
        return "index";
    }

    @RequestMapping(value="/addAccommodation", method=RequestMethod.GET)
    public ModelAndView addProduct() {
        ModelAndView model = new ModelAndView();

        Accommodation accommodation = new Accommodation();
        model.addObject("accommodation_add", accommodation);
        model.setViewName("addAccom_form");

        return model;
    }

    @RequestMapping(value="/saveAccommodation", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute ("accommodation_update") Accommodation accommodation) {
        accommodationService.saveOrUpdateAccommodation(accommodation);

        return new ModelAndView("redirect:/");
    }
}
