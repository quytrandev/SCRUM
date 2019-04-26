package com.dwaft.accommodation.controller;

import com.dwaft.accommodation.model.Accommodation;
import com.dwaft.accommodation.service.AccommodationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
import java.util.Optional;

@Controller
public class AccommodationController {

    @Autowired
    AccommodationService accommodationService;

    @RequestMapping("/")
    public String listRoom(Model model){
        model.addAttribute("listRoom", accommodationService.findAllAccommodation());
        return "index";
    }

    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public ModelAndView editArticle(@PathVariable int id) {
        ModelAndView model = new ModelAndView();
        model.addObject("accommodation", accommodationService.getAccommodationById(id));
        model.setViewName("detail");

        return model;
    }
}
