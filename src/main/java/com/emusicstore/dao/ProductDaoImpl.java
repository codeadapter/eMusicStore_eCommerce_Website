package com.emusicstore.dao;

import com.emusicstore.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/**
 * Created by ajeasyvaio on 04/27/2016.
 */
@Repository
@Transactional
public class ProductDaoImpl implements ProductDao{

    @Autowired
   //@Qualifier("sessionfactory")
    private SessionFactory sessionfactory;

    public SessionFactory getSf() {
        return sessionfactory;
    }

    public void setSf(SessionFactory sf) {
        this.sessionfactory = sf;
    }

    public void addProduct(Product product) {

        Session session = sessionfactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();

    }

    public void editProduct(Product product) {

        Session session = sessionfactory.getCurrentSession();
        session.saveOrUpdate(product);
        session.flush();

    }

    public void deleteProduct(String id) {
        Session session = sessionfactory.getCurrentSession();
        session.delete(getProductById(id));
        session.flush();
    }

    public List<Product> getProducts() {
        List<Product> products = new ArrayList<Product>();
        System.out.println("Session Factory obj..."+sessionfactory);
        Session session = sessionfactory.getCurrentSession();
        System.out.println("Inside getting ..");
        //Query query =session.createSQLQuery("select * from product");
        Query query =  session.createQuery("from com.emusicstore.model.Product");
//        Iterator i = query.iterate();
//        while (i.hasNext()){
//            Product p = (Product)i.next();
//            products.add(p);
//            System.out.println("Iterated Products...."+p.getProductCategory()+p.getProductPrice()+p.getProductName());
//        }

        products = query.list();
        session.flush();
        System.out.println();
        System.out.println(products);
        System.out.println();
        return products;
    }

    public Product getProductById(String id) {

        Session session = sessionfactory.getCurrentSession();
        Product product= (Product) session.get(Product.class,id);
        session.flush();
        return product;
    }
}
