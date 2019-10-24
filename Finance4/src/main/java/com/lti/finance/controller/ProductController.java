package com.lti.finance.controller;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.context.support.ServletContextLiveBeansView;
import org.springframework.web.servlet.ModelAndView;

import com.lti.finance.entity.Consumer;
import com.lti.finance.entity.ProductInfo;
import com.lti.finance.service.AdminService;
import com.lti.finance.service.ProductService;

@Controller
public class ProductController {
	@Autowired
	private ProductService prodService;
	@Autowired
	private AdminService adminService;
	
	/*//Enter into product list
		@RequestMapping( "/logtoplist")
		public String productList() {
			System.out.println("in productlist method");
			return  "xyz";
		}*/
		
	
	//To display data
	@RequestMapping( "/finance")
	public String register(@RequestParam("prodName") String prodName, Map model) {
		System.out.println("in controller");
		ProductInfo pi = prodService.get(prodName);
		System.out.println(pi);
		model.put("ProductInfo", pi);
		return "confirmation.jsp";
	}
	
	ModelAndView mav=null;
	@RequestMapping(path="/list")
	public ModelAndView getProdList() {
		List <ProductInfo>prodList;
		mav=new ModelAndView();
		System.out.println("in controller");
		prodList=prodService.getProdList();
		mav.setViewName("list");
		mav.addObject("prodList", prodList);
		return mav;
	}
	
	@RequestMapping("/info")
	public ModelAndView getProductDetails(@RequestParam("id") int productId) {
try {
			ProductInfo prodInfo = null;
			prodInfo = prodService.getProdInfo(productId);
			mav = new ModelAndView();
			mav.setViewName("info");
			mav.addObject("prodInfo", prodInfo);
}catch(Exception e) {
	e.printStackTrace();
	
	
}
		return mav;
	}
	
	
	@RequestMapping("/login")
	public ModelAndView getProductDetails() {
try {
			mav = new ModelAndView();
			mav.setViewName("login");
}catch(Exception e) {
	e.printStackTrace();
	
	
}
		return mav;
	}
	
	@RequestMapping("/dashboard")
	public ModelAndView getDashboard(@RequestParam("id") int productId) {
	try {
			ProductInfo prodInfo = null;
			prodInfo = prodService.getProdInfo(productId);
			mav = new ModelAndView();
			mav.setViewName("dashboard");
			mav.addObject("prodInfo", prodInfo);
			}catch(Exception e) {
					e.printStackTrace();
			}
			return mav;
	    }
	
	/*@RequestMapping("/info")
	public ModelAndView getUpdateData(@RequestParam("id") String username) {
try {
			Consumer cons=null;
			cons = adminService.getDetail(username);
			mav = new ModelAndView();
			mav.setViewName("info");
			mav.addObject("cons", cons);
}catch(Exception e) {
	e.printStackTrace();
	
	
}
		return mav;
	}*/
	
	
	
	
	
	
	
	
	
	
	
	@RequestMapping("/gotoadmin")
	public ModelAndView getAdminPage() {
		List <Consumer> consumer;
		mav=new ModelAndView();
		System.out.println("in gotoadmin");
		consumer=adminService.getDetail();
		mav.setViewName("admin");
		mav.addObject("consumer", consumer);
		return mav;
	}
	
	
	
	@RequestMapping("/deleteuser")
	public String deleteUser(@RequestParam("id") String user) {
     mav=new ModelAndView();
     /*mav.setViewName("admin");*/
     try {
    	 adminService.deleteConsumer(user);
     }
     catch(Exception e) {
    	 e.printStackTrace();
     }
     return "admin";
		
	}
	
	
	
}
