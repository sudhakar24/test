package com.controller;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.util.LinkedHashMap;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.Dao.CategoryDao;
import com.Dao.ProductDao;
import com.Dao.SupplierDao;
import com.model.Category;
import com.model.Product;
import com.model.Supplier;

@Controller

public class ProductController {
	
	@Autowired
	ProductDao productDao;
	@Autowired
	CategoryDao categoryDao;
	@Autowired
	SupplierDao supplierDao;
	
	public LinkedHashMap<Integer,String> getCategories()
	{
		List<Category> listCategories=categoryDao.retrieveCategory(); 
		LinkedHashMap<Integer,String> categoriesList=new LinkedHashMap<Integer,String>();
		for(Category category:listCategories)
		{
			categoriesList.put(category.getCatId(),category.getCatName());
			
		}
		return categoriesList;
	}
	public LinkedHashMap<Integer,String> getSupplieries()
	{
		List<Supplier> listSupplieries=supplierDao.retrieveSupplier(); 
		LinkedHashMap<Integer,String> supplieriesList=new LinkedHashMap<Integer,String>();
		for(Supplier supplier:listSupplieries)
		{
			supplieriesList.put(supplier.getSupplierId(),supplier.getSupplierName());
			
		}
		return supplieriesList;
	}
	@RequestMapping(value="product",method=RequestMethod.GET)
	public String showProduct(Model m)
	{ 
		Product product=new Product();
		m.addAttribute(product);
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList", this.getSupplieries());
		return "product";
	}
	
	
	@RequestMapping(value="InsertProduct",method=RequestMethod.POST)
	public String insertProduct(@ModelAttribute("product")Product product,@RequestParam("pimage")MultipartFile fileDetail,Model m)
	{
		productDao.addProduct(product);
		String path="E:\\sudhakar\\E-commerce\\smartkart\\src\\main\\webapp\\resources\\";
		
		String totalFileWithPath=path+String.valueOf(product.getProductId())+".jpg";
		
		File productImage=new File(totalFileWithPath);

		if(!fileDetail.isEmpty())
		{
			try
			{
				byte fileBuffer[]=fileDetail.getBytes();
				FileOutputStream fos=new FileOutputStream(productImage);
				BufferedOutputStream bs=new BufferedOutputStream(fos);
				bs.write(fileBuffer);
				bs.close();
			}
			catch(Exception e)
			{
				m.addAttribute("FileException",e.getMessage());
			}
		}
		else
		{
			m.addAttribute("error","Problem in File Uploading");
		}
		Product product1=new Product();
		m.addAttribute(product1);
		
		return "product";
	}
	@RequestMapping(value="/productDetails")
	public String showproductdetails(Model m)
	{
		List<Product> listProducts=productDao.retrieveProduct();
		m.addAttribute("productList",listProducts);
		return "productdetails";
	}
	@RequestMapping(value="/deleteProduct/{productId}",method=RequestMethod.GET)
	public String deleteProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDao.getProduct(productId);
		productDao.deleteProduct(product);
		List<Product> listProduct=productDao.retrieveProduct();
		m.addAttribute("productList",listProduct);
		return "productdetails";
	}
	@RequestMapping(value="/updateProduct/{productId}",method=RequestMethod.GET)
	public String updateProduct(@PathVariable("productId")int productId,Model m)
	{
		Product product=productDao.getProduct(productId);
		m.addAttribute(product);
		List<Product> listProduct=productDao.retrieveProduct();
		m.addAttribute("categoryList",this.getCategories());
		m.addAttribute("supplierList", this.getSupplieries());
		m.addAttribute("productList",listProduct);
		return "updateproduct";
	}
	@RequestMapping(value="UpdateProduct",method=RequestMethod.POST)
	public String updateMyProduct(@ModelAttribute("product")Product product,Model m)
	{	
		
		productDao.updateProduct(product);
		Product product1=new Product();
		m.addAttribute(product1);
		
		List<Product> listProduct=productDao.retrieveProduct();
		
		m.addAttribute("productList",listProduct);
		
		return "productdetails";
	}

}
