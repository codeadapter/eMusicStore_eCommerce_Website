package com.emusicstore.dao;

import com.emusicstore.model.Cart;
import com.emusicstore.model.CartItem;
import org.springframework.stereotype.Repository;


import java.util.HashMap;
import java.util.Map;

/**
 * Created by ajeasyvaio on 05/05/2016.
 */
@Repository
public class CartDaoImpl implements CartDao{

    private Map<String,Cart> listOfCarts;


    public CartDaoImpl(){

        listOfCarts = new HashMap<String, Cart>();
    }

    public Cart create(Cart cart) {
        if(listOfCarts.keySet().contains(cart.getCartId())){
            throw new IllegalArgumentException(String.format("Cannot create the cart.The cart already exixts with cart id: ",cart.getCartId()));
        }
        listOfCarts.put(cart.getCartId(),cart);
        return cart;
    }

    public Cart read(String cartId) {
        System.out.println("The cart from Dao read is :"+ listOfCarts.get(cartId));
        return listOfCarts.get(cartId);
    }


    public void update(String cartId, Cart cart) {
         if(!listOfCarts.keySet().contains(cartId)){
             throw new IllegalArgumentException(String.format("Cannot update the cart.The cart dosen't exixts " +
                     "with cart id: ",cart.getCartId()));
         }
        listOfCarts.put(cartId,cart);
        System.out.println("List of carts " +listOfCarts);

    }

    public void delete(String cartId) {
        if(!listOfCarts.keySet().contains(cartId)){
            throw new IllegalArgumentException(String.format("Cannot delete the cart.The cart dosen't exixts " +
                    "with cart id: ",cartId));
        }
        listOfCarts.remove(cartId);
    }

//    public Cart get(String cartId){
//
//        return listOfCarts.get(cartId);
//    }
}
