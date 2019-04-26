package com.dwaft.accommodation.controller;

import com.dwaft.accommodation.model.Accommodation;
<<<<<<< HEAD
=======
import com.dwaft.accommodation.model.User;
>>>>>>> 27d73fdd59d7f6197d8e2588f684a81b54b89fa2
import com.dwaft.accommodation.service.AccommodationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
<<<<<<< HEAD
import org.springframework.web.bind.annotation.PathVariable;
=======
import org.springframework.web.bind.annotation.ModelAttribute;
>>>>>>> 27d73fdd59d7f6197d8e2588f684a81b54b89fa2
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;
<<<<<<< HEAD
import java.util.Optional;
=======
>>>>>>> 27d73fdd59d7f6197d8e2588f684a81b54b89fa2

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

<<<<<<< HEAD
    @RequestMapping(value = "/detail/{id}", method = RequestMethod.GET)
    public ModelAndView editArticle(@PathVariable int id) {
        ModelAndView model = new ModelAndView();
        model.addObject("accommodation", accommodationService.getAccommodationById(id));
        model.setViewName("detail");

        return model;
    }
=======
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
>>>>>>> 27d73fdd59d7f6197d8e2588f684a81b54b89fa2
}
