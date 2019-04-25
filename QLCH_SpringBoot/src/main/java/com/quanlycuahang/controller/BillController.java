package com.quanlycuahang.controller;

import com.quanlycuahang.models.*;
import com.quanlycuahang.repository.BillRepository;
import com.quanlycuahang.service.BillDetailService;
import com.quanlycuahang.service.BillService;
import com.quanlycuahang.service.ProductService;
import com.quanlycuahang.utils.utils;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.security.auth.login.AppConfigurationEntry;
import javax.security.auth.login.Configuration;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;
import java.util.List;


@Controller
@RequestMapping(value="/bill")
public class BillController {

    @Autowired
    BillService billService;

    @Autowired
    BillDetailService billDetailService;

    @Autowired
    ProductService productService;

    @RequestMapping(value="/list", method=RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("billList");
        List<Bill> billList = billService.getAllBill();
        model.addObject("billList", billList);

        return model;
    }

    @RequestMapping (value="/addBill/", method= RequestMethod.GET)
    public ModelAndView addBill() {
        ModelAndView model = new ModelAndView();

        Bill bill = new Bill();
        model.addObject("addBill", bill);
        model.setViewName("addBill");

        return model;
    }


    @Autowired
    BillRepository billRepository;
    @RequestMapping(value="/saveBill", method=RequestMethod.POST)
    public ModelAndView save( @ModelAttribute("bill_update") Bill bill,
                              HttpServletRequest request,
                              HttpSession req) {
        billService.saveOrUpdate(bill);




        int id_bill= bill.getId();

        Bill bills = billService.getBillById(id_bill);

        CartInfo cartInfo = utils.getCartInSession(request);
        List<CartLineInfo> lines = cartInfo.getCartLines();
        for (CartLineInfo line : lines)
        {
            BillDetails detail = new BillDetails();
            detail.setBill(bills);
            detail.setAmount(line.getAmount());
            detail.setPrice(line.getProductInfo().getPrice());
            detail.setQuanity(line.getQuantity());

            int id = line.getProductInfo().getId();
            Product product = this.productService.getProductById(id);
            detail.setProduct(product);

            int id1 = bills.getId();
            double amount = line.getAmount();
            int price= line.getProductInfo().getPrice();
            int quantity=line.getQuantity();

            billDetailService.saveOrUpdate(detail);

//            billDetailService.save(amount,price,quantity,id1,product.getId());

        }
        // Xóa giỏ hàng khỏi session.
        utils.removeCartInSession(request);

        // Lưu thông tin đơn hàng cuối đã xác nhận mua.
        utils.storeLastOrderedCartInSession(request, cartInfo);

        return new ModelAndView("redirect:/");
    }
}
