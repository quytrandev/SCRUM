package com.quanlycuahang.controller;


import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.UUID;

import com.quanlycuahang.form.CustomerForm;
import com.quanlycuahang.repository.UserRepository;
import com.quanlycuahang.service.BillDetailService;
import com.quanlycuahang.service.BillService;
import com.quanlycuahang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.quanlycuahang.models.*;
import com.quanlycuahang.utils.utils;
import com.quanlycuahang.service.ProductService;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@Controller
public class HomeController {
    @Autowired
    ProductService productService;

    @RequestMapping(value="/", method=RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("main");
        List<Product> productsList = productService.getAllProduct();
        model.addObject("productsList", productsList);

        return model;
    }

    @RequestMapping(value="/manager", method=RequestMethod.GET)
    public ModelAndView listForManager() {
        ModelAndView model = new ModelAndView("index");
        List<Product> productsList = productService.getAllProduct();
        model.addObject("productsList", productsList);

        return model;
    }

    @RequestMapping({ "/login" })
    public String login()
    {
        return "login";
    }

    @RequestMapping({ "/contact" })
    public String contact()
    {
        return "contact";
    }

    @RequestMapping({ "/addCart" })
    public String listProductHandler(HttpServletRequest request, Model model, //
                                     @RequestParam("id") int id) {

        Product product = null;
        product = productService.getProductById(id);

        if(product==null)
            return "login";

        if (product != null) {

            //
            CartInfo cartInfo = utils.getCartInSession(request);

            ProductInfo productInfo = new ProductInfo(product);

            cartInfo.addProduct(productInfo, 1);

        }

        return "redirect:/shoppingCart";
    }

    @RequestMapping(value = { "/shoppingCart" }, method = RequestMethod.GET)
    public String shoppingCartHandler(HttpServletRequest request, Model model) {
        CartInfo myCart = utils.getCartInSession(request);

        model.addAttribute("cartForm", myCart);
        return "shoppingCart";
    }

    @RequestMapping({ "/shoppingCartRemoveProduct" })
    public String removeProductHandler(HttpServletRequest request, Model model, //
                                       @RequestParam(value = "id", defaultValue = "") int id) {
        Product product = null;

        product = productService.getProductById(id);

        if (product != null) {

            CartInfo cartInfo = utils.getCartInSession(request);

            ProductInfo productInfo = new ProductInfo(product);

            cartInfo.removeProduct(productInfo);

        }

        return "redirect:/shoppingCart";
    }

    @RequestMapping(value = "/shoppingCart",method = RequestMethod.POST)
    public String shoppingCartUpdateQty(HttpServletRequest request, //
                                        Model model, //
                                        @ModelAttribute("cartForm") CartInfo cartForm) {
        CartInfo cartInfo = utils.getCartInSession(request);
        cartInfo.updateQuantity(cartForm);
        return "redirect:/shoppingCart";
    }

    // GET: Nhập thông tin khách hàng.
    @RequestMapping(value = { "/shoppingCartCustomer" }, method = RequestMethod.GET)
    public String shoppingCartCustomerForm(HttpServletRequest request, Model model) {

        CartInfo cartInfo = utils.getCartInSession(request);

        if (cartInfo.isEmpty()) {
            return "redirect:/shoppingCart";
        }
        CustomerInfo customerInfo = cartInfo.getCustomerInfo();

        CustomerForm customerForm = new CustomerForm(customerInfo);

        model.addAttribute("customerForm", customerForm);

        return "shoppingCartCustomer";
    }

    // POST: Save thông tin khách hàng.
    @RequestMapping(value = { "/shoppingCartCustomer" }, method = RequestMethod.POST)
    public String shoppingCartCustomerSave(HttpServletRequest request, //
                                           Model model, //
                                           @ModelAttribute("customerForm") @Validated CustomerForm customerForm, //
                                           BindingResult result, //
                                           final RedirectAttributes redirectAttributes) {

        if (result.hasErrors()) {
            customerForm.setValid(false);
            // Forward tới trang nhập lại.
            return "shoppingCartCustomer";
        }

        customerForm.setValid(true);
        CartInfo cartInfo = utils.getCartInSession(request);
        CustomerInfo customerInfo = new CustomerInfo(customerForm);
        cartInfo.setCustomerInfo(customerInfo);

        return "redirect:/shoppingCartConfirmation";
    }

    // GET: Xem lại thông tin để xác nhận.
    @RequestMapping(value = { "/shoppingCartConfirmation" }, method = RequestMethod.GET)
    public String shoppingCartConfirmationReview(HttpServletRequest request, Model model) {
        CartInfo cartInfo = utils.getCartInSession(request);

        if (cartInfo == null || cartInfo.isEmpty()) {

            return "redirect:/shoppingCart";
        }

        model.addAttribute("myCart", cartInfo);

        return "shoppingCartConfirmation";
    }

    BillService billService;
    BillDetailService billDetailService;

    // POST: Gửi đơn hàng (Save).
    @RequestMapping(value = { "/shoppingCartConfirmation" }, method = RequestMethod.POST)
    public String shoppingCartConfirmationSave(HttpServletRequest request, Model model) {
        CartInfo cartInfo = utils.getCartInSession(request);

        Date today=new Date(System.currentTimeMillis());
//        SimpleDateFormat timeFormat= new SimpleDateFormat("yyyy/MM/dd");

        Bill bill = new Bill();
        //bill.setId(Integer.parseInt(UUID.randomUUID().toString()));
        bill.setORDER_NUM(3);
        bill.setAmount(cartInfo.getAmountTotal());

        CustomerInfo customerInfo= cartInfo.getCustomerInfo();
        bill.setCustomer_name(customerInfo.getName());
        bill.setCustomer_email(customerInfo.getEmail());
        bill.setCustomer_address(customerInfo.getAddress());
        bill.setCustomer_phone(customerInfo.getPhone());

        //billService.saveOrUpdate(bill);
        billService.save(2,cartInfo.getAmountTotal(),customerInfo.getAddress(),customerInfo.getName(),customerInfo.getEmail(),customerInfo.getPhone(),3);

//        try {
//
//            //int orderNUM= billService.Count()+1;
//
//
//
//            List<CartLineInfo> lines = cartInfo.getCartLines();
//            for(CartLineInfo line:lines)
//            {
//                BillDetails detail = new BillDetails();
//                //detail.setId(Integer.parseInt(UUID.randomUUID().toString()));
//                detail.setBill(bill);
//                detail.setAmount(line.getAmount());
//                detail.setPrice(line.getProductInfo().getPrice());
//                detail.setQuanity(line.getQuantity());
//
//                int id = line.getProductInfo().getId();
//                Product product = this.productService.getProductById(id);
//                detail.setProduct(product);
//
//                billDetailService.saveOrUpdate(detail);
//            }
//        } catch (Exception e) {
//
//            return "shoppingCartConfirmation";
//        }
//
//        // Xóa giỏ hàng khỏi session.
//        utils.removeCartInSession(request);
//
//        // Lưu thông tin đơn hàng cuối đã xác nhận mua.
//        utils.storeLastOrderedCartInSession(request, cartInfo);
//
        return "redirect:/shoppingCartFinalize";
    }


    @RequestMapping(value = { "/shoppingCartFinalize" }, method = RequestMethod.GET)
    public String shoppingCartFinalize(HttpServletRequest request, Model model) {

        CartInfo lastOrderedCart = utils.getLastOrderedCartInSession(request);

        if (lastOrderedCart == null) {
            return "redirect:/shoppingCart";
        }
        model.addAttribute("lastOrderedCart", lastOrderedCart);
        return "shoppingCartFinalize";
    }

    @Autowired
    UserService userService;
    @RequestMapping(value = { "/loginUser" },method=RequestMethod.POST)
    public String login(HttpServletRequest request, @RequestParam("username") String username,
                         @RequestParam("password") String password,
                         @RequestParam("id") int id){

       User user = new User();
       user=userService.getUserById(id);
       if(user==null)
       {
           return "login";
       }
       else
       {
           if(user.getUsername().equals(username) && user.getPassword().equals(password))
           {
               HttpSession session= request.getSession();
               session.setAttribute("role",user.getRole());
               session.setAttribute("username",user.getUsername());
               return "redirect:/manager";
           }
           else {
               return "login";
           }
       }
    }

    @RequestMapping(value = "/logout", method = RequestMethod.GET)
    public String logout(HttpSession session) {
        session.removeAttribute("role");
        session.removeAttribute("username");
        return "redirect:/product/list";
    }



}
