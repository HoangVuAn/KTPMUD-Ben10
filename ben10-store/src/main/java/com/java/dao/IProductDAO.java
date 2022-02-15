package com.java.dao;

import java.util.List;

import com.java.model.ProductModel;

public interface IProductDAO extends GenericDAO<ProductModel>{
	List<ProductModel> findAll();
	List<ProductModel> findById(Long idSanPham);
	ProductModel findOne(Long idSanPham);
	void deleteOne (Long idSanPham);
	Long save(ProductModel product);
	void update(ProductModel updateProduct);
}
