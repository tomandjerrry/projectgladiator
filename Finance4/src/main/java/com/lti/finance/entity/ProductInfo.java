package com.lti.finance.entity;
import javax.persistence.*;
import java.sql.Blob;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.Table;


@NamedQueries({
	@NamedQuery(name="getProdList",query="from ProductInfo")
})


@Entity
@Table(name="PRODUCT")
public class ProductInfo {
		
	@Override
	public String toString() {
		return "ProductInfo [prodId=" + prodId + ", prodName=" + prodName + ", prodList=" + prodList + ", prodCost="
				+ prodCost + "]";
	}
	private int prodId;
	private String prodName;
	private String prodList;
	private int prodCost;
	private Blob prodImg;
	
	@Column(name="PROD_IMG")
	public Blob getProdImg() {
		return prodImg;
	}
	public void setProdImg(Blob prodImg) {
		this.prodImg = prodImg;
	}
	@Id
	@Column(name="PRODUCT_ID")
	public int getProdId() {
		return prodId;
	}
	public void setProdId(int prodId) {
		this.prodId = prodId;
	}
	
	public ProductInfo() {
		super();
		// TODO Auto-generated constructor stub
	}
	public ProductInfo(int prodId, String prodName, String prodList, int prodCost, Blob prodImg) {
		super();
		this.prodId = prodId;
		this.prodName = prodName;
		this.prodList = prodList;
		this.prodCost = prodCost;
		this.prodImg = prodImg;
	}
	@Column(name="PROD_NAME")
	public String getProdName() {
		return prodName;
	}
	public void setProdName(String prodName) {
		this.prodName = prodName;
	}
	
	@Column(name="PRODUCT_DETAIL")
	public String getProdList() {
		return prodList;
	}
	public void setProdList(String prodList) {
		this.prodList = prodList;
	}
	@Column(name="COST")
	public int getProdCost() {
		return prodCost;
	}
	public void setProdCost(int prodCost) {
		this.prodCost = prodCost;
	}
	
	
	
}
