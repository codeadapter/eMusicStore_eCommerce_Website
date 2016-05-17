package com.emusicstore.controller;

import com.emusicstore.dao.CartDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ajeasyvaio on 05/06/2016.
 */

@Controller
@RequestMapping("/cart")
public class CartItemController {

    @Autowired
    private CartDao cartDao;

@RequestMapping // This will represent the "/" path as taken from the base class
public String get(HttpServletRequest request){
    System.out.println("IN CART .............");
    return "redirect:/cart/"+request.getSession(true).getId();
}


@RequestMapping(value="/{cartId}",method = RequestMethod.GET)
    public String getCart(@PathVariable(value="cartId")String cartId,Model model){

        model.addAttribute("cartId",cartId);
        //model.addAttribute("cart",cartDao.getCart(cartId));
    return "cart";
}


}
