package com.mkki.dao;

import java.util.ArrayList;
import java.util.List;

public class ProductDAO {
	private ProductDAO() {}
	
	private static ProductDAO instance = new ProductDAO();
	
	public static ProductDAO getInstance() {
		return instance;
	}
	
	//Read
	public List<ProductDAO> selectAllProducts(){
		String sql = "select * from product order by code desc";
		List<ProductDAO> list = new ArrayList<>();
		
	}
}
