package com.emusicstore.dao;

import com.emusicstore.model.Product;

import java.util.List;

/**
 * Created by ajeasyvaio on 04/27/2016.
 */
public interface ProductDao {

    void addProduct(Product product);
    void editProduct(Product product);
    void deleteProduct(String id);
    List<Product> getProducts();
    Product getProductById(String id);

}
