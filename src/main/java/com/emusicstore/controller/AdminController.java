package com.emusicstore.controller;

import com.emusicstore.dao.ProductDao;
import com.emusicstore.model.Product;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.*;
import javax.validation.Valid;
import java.io.File;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

/**
 * Created by ajeasyvaio on 05/04/2016.
 */


@Controller
public class AdminController {


    @Autowired
    private ProductDao dao;

    private Path path;


    @RequestMapping("/admin")
    public String adminPage(){
        return "admin";
    }


    /* View Product Inventory*/
    @RequestMapping("/admin/productInventory/viewProductInventory/{productId}")
    public String viewProductInventory(@PathVariable String productId, Model model)throws IOException {

        Product product = dao.getProductById(productId);
        model.addAttribute("product",product);
        return "viewProductInventory";
    }
    /* View Product Inventory*/


    /*  Product Inventory*/
    @RequestMapping("/admin/productInventory")
    public String getProductInventory(Model model){
        List<Product> products= dao.getProducts();
        model.addAttribute("products",products);
        return "productInventory";
    }

    /*  Product Inventory*/

    /* Add Product */

    @RequestMapping("/admin/productInventory/addProduct")
    public String addProduct(Model model){
        Product product = new Product();;
        //We are setting these attributes by default in case user dosen't enter ay details in these input fields
        product.setProductStatus("Active");
        product.setProductCondition("New");
        product.setProductCategory("Instrument");

        model.addAttribute("product",product);

        return "addProduct";
    }

    @RequestMapping(value = "/admin/productInventory/addProduct",method = RequestMethod.POST)
    public String addProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
                                 HttpServletRequest request, HttpServletResponse response, Model model){

        if(result.hasErrors()){
            System.out.println("Validation errors");
            return "addProduct";}

        dao.addProduct(product);
        System.out.println(product);

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");

        if(productImage!=null && !productImage.isEmpty()){
            try{
                productImage.transferTo(new File(path.toString()));
            }
            catch (Exception e){
                e.printStackTrace();
                throw new RuntimeException("Product Image Saving Failed");
            }
        }

//        String msg = "Product added successfully!";
////        model.addAttribute("msg",msg);
////        List<Product> products= dao.getProducts();
////        model.addAttribute("products",products);
////        return "productInventory";
//        //return "redirect:/admin/productInventory?msg=Product added successfully!";
//
//        request.setAttribute("msg",msg);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/productInventory");
//        try {
//            dispatcher.forward(request, response);
//        } catch (ServletException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        System.out.println("End of add product");
        return "redirect:/admin/productInventory";
    }

    /* Add Product ends*/


    /* Delete Product*/

    @RequestMapping("/admin/productInventory/deleteProduct/{productId}")
    public String deleteProduct(@PathVariable String productId, Model model, HttpServletRequest request, HttpServletResponse response){

        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+productId+".png");

        if (Files.exists(path)){
            try {
                Files.delete(path);
            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        dao.deleteProduct(productId);


//        String msg = "Product deleted successfully!";
////        model.addAttribute("msg",msg);
////        List<Product> products= dao.getProducts();
////        model.addAttribute("products",products);
////        return "productInventory";
//        //return "redirect:/admin/productInventory?msg=Product delete successfully!";
//        request.setAttribute("msg",msg);
//        RequestDispatcher dispatcher = request.getRequestDispatcher("/admin/productInventory");
//        try {
//            dispatcher.forward(request, response);
//        } catch (ServletException e) {
//            e.printStackTrace();
//        } catch (IOException e) {
//            e.printStackTrace();
//        }
//        System.out.println("End of delete product");

        return "redirect:/admin/productInventory";



    }
    /* Delete Product ends*/


    /* Edit Product*/

    @RequestMapping("/admin/productInventory/editProduct/{productId}")
    public String editProduct(@PathVariable String productId,Model model){

        Product product = dao.getProductById(productId);
        model.addAttribute("product",product);
        return "editProduct";
    }

    @RequestMapping(value = "/admin/productInventory/editProduct",method = RequestMethod.POST)
    public String editProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result,
                                  HttpServletRequest request,Model model){

        if(result.hasErrors()){
            System.out.println("Validation errors");
            return "editProduct";}

        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+product.getProductId()+".png");

        if(productImage!=null && !productImage.isEmpty()){
            try{
                productImage.transferTo(new File(path.toString()));
            }
            catch (Exception e){
                e.printStackTrace();
                throw new RuntimeException("Product Image Saving Failed");
            }
        }

        dao.editProduct(product);
//        String msg = "Product updated successfully!";
//        model.addAttribute("msg",msg);
//        List<Product> products= dao.getProducts();
//        model.addAttribute("products",products);
//        return "productInventory";
        //return "redirect:/admin/productInventory?msg=Product updated successfully!";
        return "redirect:/admin/productInventory";
    }


    /* Edit Product ends*/




}
