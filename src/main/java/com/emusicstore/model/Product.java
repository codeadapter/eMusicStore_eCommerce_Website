package com.emusicstore.model;

import org.hibernate.annotations.GenericGenerator;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.web.multipart.MultipartFile;

import javax.persistence.*;
import javax.validation.constraints.Min;

/**
 * Created by ajeasyvaio on 04/24/2016.
 */

@Entity
public class Product {
    @Id
    //@GeneratedValue(strategy = GenerationType.AUTO)
    @GeneratedValue(generator="system-uuid")
    @GenericGenerator(name="system-uuid", strategy = "uuid")
    private String  productId;

    @NotEmpty(message = "Product must not be Blank.")
    private String  productName;
    private String  productCategory;
    private String  productDescription;

    @Min(value=0 ,message = "Product Price must not be less than zero.")
    private double  productPrice;
    private String  productCondition;
    private String  productStatus;

    @Min(value=0 ,message = "Units in Stock must not be less than zero.")
    private int     unitInStock;
    private String  productManufacturer;
    @Transient /// This will tell Hibernate that the field is not to be stored in the data base
    private MultipartFile productImage;


    public String toString(){

        return "Product Details are : "+getProductId()+" "+getProductName()+" "
                +  getProductCategory()+" "+  getProductDescription()+" "
                + getProductPrice()+" "+ getProductCondition()+" "
                +  getProductStatus()+" "+  getUnitInStock()+" "
                +  getProductManufacturer();
    }
    public Product(){}
    public Product(String  productId,String productName, String productCategory, String productDescription, double productPrice, String productCondition, String productStatus, int unitInStock, String productManufacturer) {
        this.productId = productId;
        this.productName = productName;
        this.productCategory = productCategory;
        this.productDescription = productDescription;
        this.productPrice = productPrice;
        this.productCondition = productCondition;
        this.productStatus = productStatus;
        this.unitInStock = unitInStock;
        this.productManufacturer = productManufacturer;
    }

    public String getProductId() {
        return productId;
    }

    public void setProductId(String productId) {
        this.productId = productId;
    }

    public String getProductName() {
        return productName;
    }

    public void setProductName(String productName) {
        this.productName = productName;
    }

    public String getProductCategory() {
        return productCategory;
    }

    public void setProductCategory(String productCategory) {
        this.productCategory = productCategory;
    }

    public String getProductDescription() {
        return productDescription;
    }

    public void setProductDescription(String productDescription) {
        this.productDescription = productDescription;
    }

    public double getProductPrice() {
        return productPrice;
    }

    public void setProductPrice(double productPrice) {
        this.productPrice = productPrice;
    }

    public String getProductCondition() {
        return productCondition;
    }

    public void setProductCondition(String productCondition) {
        this.productCondition = productCondition;
    }

    public String getProductStatus() {
        return productStatus;
    }

    public void setProductStatus(String productStatus) {
        this.productStatus = productStatus;
    }

    public int getUnitInStock() {
        return unitInStock;
    }

    public void setUnitInStock(int unitInStock) {
        this.unitInStock = unitInStock;
    }

    public String getProductManufacturer() {
        return productManufacturer;
    }

    public void setProductManufacturer(String productManufacturer) {
        this.productManufacturer = productManufacturer;
    }

    public MultipartFile getProductImage() {return productImage;}

    public void setProductImage(MultipartFile productImage) { this.productImage = productImage;}



}