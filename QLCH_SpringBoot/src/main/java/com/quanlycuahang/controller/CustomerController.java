package com.quanlycuahang.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.quanlycuahang.models.Customer;
import com.quanlycuahang.service.CustomerService;

@Controller
@RequestMapping(value="/customer")
public class CustomerController {

    @Autowired
    CustomerService customerService;

    @RequestMapping(value="/list", method=RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("customer_list");
        List<Customer> customerList = customerService.getAllCustomer();
        model.addObject("customerList", customerList);

        return model;
    }

    @RequestMapping(value="/addCustomer/", method=RequestMethod.GET)
    public ModelAndView addCustomer() {
        ModelAndView model = new ModelAndView();

        Customer customer = new Customer();
        model.addObject("customer_update", customer);
        model.setViewName("updateCustomer");

        return model;
    }

    @RequestMapping(value="/updateCustomer/{id}", method=RequestMethod.GET)
    public ModelAndView editProduct(@PathVariable int id) {
        ModelAndView model = new ModelAndView();

        Customer customer = customerService.getCustomerById(id);
        model.addObject("customer_update", customer);
        model.setViewName("updateCustomer");

        return model;
    }

    @RequestMapping(value="/saveCustomer", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("customer_update") Customer customer) {
        customerService.saveOrUpdate(customer);

        return new ModelAndView("redirect:/customer/list");
    }

    @RequestMapping(value="/deleteCustomer/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        customerService.deleteCustomer(id);

        return new ModelAndView("redirect:/customer/list");
    }

}
