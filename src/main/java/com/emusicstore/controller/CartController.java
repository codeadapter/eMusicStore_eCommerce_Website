package com.emusicstore.controller;

import com.emusicstore.dao.CartDao;
import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import com.emusicstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

/**
 * Created by ajeasyvaio on 05/06/2016.
 */
@Controller
@RequestMapping("/rest/cart") //REST Services Path
public class CartController {

    @Autowired
    private CartDao cartDao;

    @Autowired
    private ProductDao productDao;

    @RequestMapping(value="/{cartId}",method = RequestMethod.GET)
    //ResponseBody is to return a model object in format of JSON
    //ResponseEntity option will gve us more options to control the header Http Response status
    public @ResponseBody  Cart read(@PathVariable(value="cartId")String cartId ){
        System.out.println("The cart to Angular in ResponseBody is :"+ cartDao.read(cartId));
        return cartDao.read(cartId);
    }

    @RequestMapping(value="/{cartId}",method = RequestMethod.PUT)
    @ResponseStatus(value= HttpStatus.NO_CONTENT)
    public void update(@PathVariable(value="cartId")String cartId,@RequestBody Cart cart ){

        cartDao.update(cartId, cart);
    }

    @RequestMapping(value="/{cartId}",method = RequestMethod.DELETE)
    @ResponseStatus(value= HttpStatus.NO_CONTENT)
    public void delete(@PathVariable(value="cartId")String cartId){

        cartDao.delete(cartId);
    }

    @RequestMapping(value="/add/{productId}",method = RequestMethod.PUT)
    @ResponseStatus(value= HttpStatus.NO_CONTENT)
    public void addItem(@PathVariable(value="productId")String productId, HttpServletRequest request){

        String sessionId = request.getSession(true).getId();
        Cart cart = cartDao.read(sessionId);   // We are using sessionId as cartId here to retrieve the cart details

        if(cart==null) {
            cart = cartDao.create(new Cart(sessionId));
        }
        Product product = productDao.getProductById(productId);
        if(product==null)
            throw new IllegalArgumentException(new Exception());
        cart.addCartItem(new CartItem(product));
        System.out.println("Original cart is "+cart);
        cartDao.update(sessionId,cart);
    }

    @RequestMapping(value="/remove/{productId}",method = RequestMethod.PUT)
    @ResponseStatus(value= HttpStatus.NO_CONTENT)
    public void removeItem(@PathVariable(value="productId")String productId, HttpServletRequest request){

        String sessionId = request.getSession(true).getId();
        Cart cart = cartDao.read(sessionId);   // We are using sessionId as cartId here to retrieve the cart details

        if(cart==null) {
            cart = cartDao.create(new Cart(sessionId));
        }

        Product product = productDao.getProductById(productId);
        if(product==null)
            throw new IllegalArgumentException(new Exception());
        cart.removeCartItem(new CartItem(product));
        cartDao.update(sessionId,cart);
    }

    @ExceptionHandler(IllegalArgumentException.class)
    @ResponseStatus(value = HttpStatus.BAD_REQUEST,reason = "Illegal request.Please verify your Payload")
    public  void handleClientError(Exception e){
    }

    @ExceptionHandler(Exception.class)
    @ResponseStatus(value = HttpStatus.INTERNAL_SERVER_ERROR,reason = "Internal Server Error")
    public  void handleServerError(Exception e){
    }
}
