package com.quanlycuahang.controller;

import com.quanlycuahang.models.Bill;
import com.quanlycuahang.models.BillDetails;
import com.quanlycuahang.repository.DetailBillRepository;
import com.quanlycuahang.service.BillDetailService;
import com.quanlycuahang.service.BillService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.quanlycuahang.models.Product;
import com.quanlycuahang.service.ProductService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping(value="/billDetail")
public class BillDetailController {

    @Autowired
    BillDetailService billDetailService;

    @Autowired
    BillService billService;


    @RequestMapping(value="/list", method=RequestMethod.GET)
    public ModelAndView listDetail() {
        ModelAndView model = new ModelAndView("billDetail");
        List<BillDetails> billDetails = billDetailService.getAllBillDetail();
        model.addObject("billDetails", billDetails);

        return model;
    }

    @RequestMapping(value="/list/{id}", method=RequestMethod.GET)
    public ModelAndView list(@PathVariable int id,
                       HttpServletRequest request) {

        HttpSession session = request.getSession();
        session.setAttribute("id_bill",id);
        listDetail();
        ModelAndView model = new ModelAndView("billDetail");
        List<BillDetails> billDetails = billDetailService.getAllBillDetail();
        model.addObject("billDetails", billDetails);

        return model;
    }

}
