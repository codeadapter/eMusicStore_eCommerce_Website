package com.emusicstore.dao;

import com.emusicstore.model.Product;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import java.sql.*;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;
import java.util.Set;

/**
 * Created by ajeasyvaio on 04/24/2016.
 */
public class ProductDaoOld {

    private List<Product> productList;

    @Autowired
    private SessionFactory sf;
    public List<Product> getProducts(){
        System.out.println("Starting the DAO....");
        Product product1 = new Product();
        product1.setProductId("INS001");
        product1.setProductName("Guitar");
        product1.setProductCategory("String Instrument");
        product1.setProductCondition("New");
        product1.setProductManufacturer("Fender");
        product1.setProductDescription("This is a Fender Strat Guitar");
        product1.setProductPrice(1200);
        product1.setUnitInStock(11);
        product1.setProductStatus("Active");

        Product product2 = new Product();
        product2.setProductId("INS002");
        product2.setProductName("Tabla");
        product2.setProductCategory("Percussion Instrument");
        product2.setProductCondition("New");
        product2.setProductManufacturer("Sawant Brothers");
        product2.setProductDescription("This is a KaliChar Tabla");
        product2.setProductPrice(2000);
        product2.setUnitInStock(18);
        product2.setProductStatus("Active");

        Product product3 = new Product();
        product3.setProductId("CD001");
        product3.setProductName("Pitbull M.I.A.M.I.");
        product3.setProductCategory("BlueRay Disc");
        product3.setProductCondition("New");
        product3.setProductManufacturer("Sony Music");
        product3.setProductDescription("M.I.A.M.I. (backronym of Money Is a Major Issue) is the debut studio album by rapper Pitbull. The album was released on August 3, 2004,[4] and peaked at number fourteen on the U.S. Billboard 200 chart");
        product3.setProductPrice(55);
        product3.setUnitInStock(152);
        product3.setProductStatus("Active");

       productList = new ArrayList<Product>();
//        productList.add(product1);
//        productList.add(product2);
//        productList.add(product3);



        Connection conn = null;
        Statement stmt = null;
        try {


            //STEP 3: Open a connection
            System.out.println("Connecting to database...");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/ajinkya","student","student");

            //STEP 4: Execute a query
            System.out.println("Creating statement...");
            stmt = conn.createStatement();
            ResultSet rs = stmt.executeQuery("SELECT * FROM product");

            while(rs.next()) {
//                   int  productId= rs.getInt("id");
//                String  productName= rs.getString("name");
//                String  productCategory= rs.getString("email");
//                String  productDescription= rs.getString("address");
//                System.out.printf( "The Data is...",productId,productName,  productCategory,  productDescription);
//                String  productId= rs.getString("productId");
//                String  productName= rs.getString("productName");
//                String  productCategory= rs.getString("productCategory");
//                String  productDescription= rs.getString("productDescription");
//                double  productPrice= rs.getDouble("productPrice");
//                String  productCondition= rs.getString("productCondition");
//                String  productStatus= rs.getString("productStatus");
//                int     unitInStock= rs.getInt("unitInStock");
//                String  productManufacturer= rs.getString("productManufacturer");
//                System.out.printf( "The Data is...",productName,  productCategory,  productDescription,  productPrice,  productCondition,  productStatus,  unitInStock,  productManufacturer);
//                System.out.println("Ending the query....");
                //Product product = new Product( productId,productName,  productCategory,  productDescription,  productPrice,  productCondition,  productStatus,  unitInStock,  productManufacturer);
                //Product product = new Product(rs.getString("productId"),rs.getString("productName"),rs.getString("productCategory"),
                 //       rs.getString("productDescription"),rs.getDouble("productPrice"),rs.getString("productCondition"),rs.getString("productStatus"),rs.getInt("unitInStock"),rs.getString("productManufacturer"));
//     System.out.printf(rs.getString("productId"),rs.getString("productName"),rs.getString("productCategory"),
//             rs.getString("productDescription"),rs.getDouble("productPrice"),rs.getString("productCondition"),rs.getString("productStatus"),rs.getInt("unitInStock"),rs.getString("productManufacturer"));
                System.out.println("Strings..."+rs.getString(1)+" "+rs.getString(2)+" "+rs.getString(3)+" "+rs.getString(4)+" "+
                        rs.getDouble(7)+" "+rs.getString(5)+" "+
                        rs.getString(6)+" "+rs.getInt(9)+" "+rs.getString(8));

                String  productId= rs.getString(1);
                String  productName= rs.getString(6);
                String  productCategory= rs.getString(2);
                String  productDescription= rs.getString(4);
                double  productPrice= rs.getDouble(7);
                String  productCondition= rs.getString(3);
                String  productStatus= rs.getString(8);
                int     unitInStock= rs.getInt(9);
                String  productManufacturer= rs.getString(5);
                System.out.printf("Variables..."+ productId+" "+productName+" "+  productCategory+" "+  productDescription+" "+ productPrice,
                        productCondition+" "+  productStatus+" "+  unitInStock+" "+  productManufacturer);

                Product product = new Product( productId,productName,  productCategory,  productDescription,  productPrice,  productCondition,  productStatus,  unitInStock,  productManufacturer);
                System.out.printf( "Product properties ..."+product.getProductId()+" "+product.getProductName()+" "+  product.getProductCategory()+" "+  product.getProductDescription()+" "
                        + product.getProductPrice()+" "+ product.getProductCondition()+" "+  product.getProductStatus()+" "+  product.getUnitInStock()+" "
                        +  product.getProductManufacturer());

                //Product product = new Product();
                product.setProductId(rs.getString(1));
                product.setProductName(rs.getString(6));
                product.setProductCategory(rs.getString(2));
                product.setProductCondition(rs.getString(3));
                product.setProductManufacturer(rs.getString(5));
                product.setProductDescription(rs.getString(4));
                product.setProductPrice(rs.getDouble(7));
                product.setProductStatus(rs.getString(8));
                product.setUnitInStock(rs.getInt(9));


                productList.add(product);
            }

        }catch(Exception e){
            e.printStackTrace();
        }



//        Session session = sf.getCurrentSession();
//        System.out.println("Inside getting ..");
//        Query query =  session.createQuery("from com.emusicstore.model.Product");
//        List<Product> productList = query.list();
//        session.flush();
//        System.out.println();
//        System.out.println(productList);
//        System.out.println();


        System.out.println("Ending the DAO....");
        return productList;

    }


    public Product getProductById(String productId) throws IOException{
        for(Product product :getProducts()){
            if(product.getProductId().equals(productId))
                return product;
        }
        throw new IOException("No Matching Products Found in Store..");
    }



}
