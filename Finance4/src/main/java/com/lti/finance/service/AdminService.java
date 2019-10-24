package com.lti.finance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.lti.finance.dao.AdminDao;
import com.lti.finance.entity.Consumer;
import com.lti.finance.entity.ProductInfo;

@Service
public class AdminService { 

	@Autowired
	private AdminDao admindao;

	
	 public List<Consumer> getDetail(){
		 System.out.println("in getDetail");
		    return admindao.fetchAll();
	 }
	 /*public Consumer getDetail(String username){
		 System.out.println("in getDetail");
		    return admindao.fetchSingleData(username);
	 }*/
	/*public Consumer getDetails(String USER_NAME)
	{
		return admindao.findConsumer(USER_NAME);
	}*/
	 
	 public List <Consumer> deleteConsumer(String username)
	 {
		 admindao.delete(username);
		 return admindao.fetchAll();
	 }

	}
