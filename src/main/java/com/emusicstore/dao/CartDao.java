package com.emusicstore.dao;

import com.emusicstore.model.Cart;

/**
 * Created by ajeasyvaio on 05/05/2016.
 */
public interface CartDao {

    Cart create(Cart cart);
    Cart read(String cartId);
    void update(String cartId,Cart cart);
    void delete(String cartId);
    //public Cart get(String cartId);

}
