package com.lti.finance.dao;

import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.lti.finance.entity.Consumer;
import com.lti.finance.entity.ProductInfo;

@Repository
public class AdminDao {

	@PersistenceContext
	private  EntityManager entityManager;
	

	
	public  List<Consumer> fetchAll() {
		System.out.println("in Fetchall adminDao");
		String ql = "from Consumer ";
		Query q = entityManager.createQuery(ql);
		List<Consumer> list = q.getResultList();
		return list;
	}
	
	/*public  Consumer fetchSingleData(String username) {
		System.out.println("in Fetchall adminDao");
		String ql = "from Consumer where username='"+username+"'";
		Query q = entityManager.createQuery(ql);
		Consumer list = (Consumer) q.getSingleResult();
		return list;
	}*/
	public Consumer findConsumer(String username)
	{
		Consumer con = entityManager.find(Consumer.class, username);
		return con;
	}
	
	
	public void delete(String username) {
		Consumer con =null;
		con=entityManager.find(Consumer.class,username);
		if(con!=null) {
			entityManager.remove(con);
			
		}
	}
	
	
}

