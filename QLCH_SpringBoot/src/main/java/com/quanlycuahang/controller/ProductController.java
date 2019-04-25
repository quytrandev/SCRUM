package com.quanlycuahang.controller;

import java.io.IOException;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.quanlycuahang.models.Product;
import com.quanlycuahang.service.ProductService;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@Controller
@RequestMapping(value="/product")
public class ProductController {

    @Autowired
    ProductService productService;

    @RequestMapping(value="/list", method=RequestMethod.GET)
    public ModelAndView list() {
        ModelAndView model = new ModelAndView("product_list");
        List<Product> productsList = productService.getAllProduct();
        model.addObject("productsList", productsList);

        return model;
    }

    @RequestMapping(value="/detail/{id}", method=RequestMethod.GET)
    public ModelAndView productDetail(@PathVariable int id) {

        ModelAndView model = new ModelAndView();

        Product product = productService.getProductById(id);
        model.addObject("product_detail", product);
        model.setViewName("productDetail");

        return model;
    }


    @RequestMapping(value = { "/ProductImage" }, method = RequestMethod.GET)
    public void productImage(HttpServletRequest request, HttpServletResponse response, Model model,
                             @RequestParam("id") int id) throws IOException {
        Product product = null;
        product = productService.getProductById(id);

        if (product != null && product.getImage() != null) {
            response.setContentType("image/jpeg, image/jpg, image/png, image/gif");
            response.getOutputStream().write(product.getImage());
        }
        response.getOutputStream().close();
    }

//    @Autowired
//    ProductDAO productDAO;
    @RequestMapping(value="/addProduct/", method=RequestMethod.GET)
    public ModelAndView addProduct() {
        ModelAndView model = new ModelAndView();

        Product product = new Product();
        model.addObject("product_add", product);
        model.setViewName("addProduct");

        return model;
    }

//    @RequestMapping(value="/saveProduct", method=RequestMethod.POST)
//    public ModelAndView save(@ModelAttribute("product_update") Product product) {
//        productService.saveOrUpdate(product);
//
//        return new ModelAndView("redirect:/");
//    }

    @RequestMapping(value="/updateProduct/{id}", method=RequestMethod.GET)
    public ModelAndView editProduct(@PathVariable int id) {
        ModelAndView model = new ModelAndView();

        Product product = productService.getProductById(id);
        model.addObject("product_update", product);
        model.setViewName("updateProduct");

        return model;
    }

    @RequestMapping(value="/saveProduct", method=RequestMethod.POST)
    public ModelAndView save(@ModelAttribute("product_update") Product product) {
        productService.saveOrUpdate(product);

        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value="/deleteProduct/{id}", method=RequestMethod.GET)
    public ModelAndView delete(@PathVariable("id") int id) {
        productService.deleteProduct(id);

        return new ModelAndView("redirect:/");
    }

    @RequestMapping(value="/man", method=RequestMethod.GET)
    public ModelAndView fashion() {
        ModelAndView model = new ModelAndView("man");
        List<Product> productsList = productService.getAllProduct();
        model.addObject("productsList", productsList);

        return model;
    }

    @RequestMapping(value="/footwear", method=RequestMethod.GET)
    public ModelAndView tech() {
        ModelAndView model = new ModelAndView("footwear");
        List<Product> productsList = productService.getAllProduct();
        model.addObject("productsList", productsList);

        return model;
    }

    @RequestMapping(value="/bag", method=RequestMethod.GET)
    public ModelAndView food() {
        ModelAndView model = new ModelAndView("bag");
        List<Product> productsList = productService.getAllProduct();
        model.addObject("productsList", productsList);

        return model;
    }

    @RequestMapping(value="/woman", method=RequestMethod.GET)
    public ModelAndView drink() {
        ModelAndView model = new ModelAndView("woman");
        List<Product> productsList = productService.getAllProduct();
        model.addObject("productsList", productsList);

        return model;
    }
}
