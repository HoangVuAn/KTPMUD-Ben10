package com.java.dao;

import java.util.List;

import com.java.model.ProductModel;

public interface IProductDAO extends GenericDAO<ProductModel>{
	List<ProductModel> findAll();
	ProductModel findOne(Long idSanPham);
}
