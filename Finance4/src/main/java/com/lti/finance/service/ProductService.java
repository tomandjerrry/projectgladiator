package com.lti.finance.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;


import com.lti.finance.dao.ProductDao;
import com.lti.finance.entity.ProductInfo;

@Service
public class ProductService {

	@Autowired
	private ProductDao financedao;
	
	public void register(ProductInfo ProductInfo) {
		System.out.println("In register ProdService");
		financedao.save(ProductInfo);
		//sending email code here
	}
	
	public ProductInfo get(String prodName) {
		System.out.println("POssiblities increases");
		return financedao.infoFetch(prodName);
	}
	
	public List<ProductInfo> getProdList(){
		return financedao.getProdList();
	}
	
	public ProductInfo getProdInfo(Integer prodId) {
        return financedao.getProdInfo(prodId);
}
}
