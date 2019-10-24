package com.lti.finance.dao;


import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.transaction.Transactional;

import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Repository;

import com.lti.finance.entity.ProductInfo;

@Repository
@Scope("singleton")
public class ProductDao {
	
	@PersistenceContext
	private EntityManager entityManager;
	
	
	@Transactional
	public void save(ProductInfo prod) {
		entityManager.merge(prod);
	}
	
	//Fetching data from product table for product info
	public ProductInfo infoFetch(String prodName) {
		System.out.println("Hiiiiiii");
		String ql = "select p from ProductInfo p where p.prodName=:pn";
		System.out.println("Hiiiiiii");
		Query q = entityManager.createQuery(ql);
		q.setParameter("pn", prodName);
		ProductInfo pi = (ProductInfo) q.getSingleResult();
		System.out.println(pi+"  From FinDao class");
		return pi;
	}
	
	public List<ProductInfo> getProdList(){
		System.out.println("Hiiiiiii");

		Query query = entityManager.createNamedQuery("getProdList");
		List<ProductInfo> list = query.getResultList();
		return list;
	}
	
	public ProductInfo getProdInfo(Integer prodId) {
		ProductInfo prodInfo = entityManager.find(ProductInfo.class, prodId);
		return prodInfo;
	}
}
