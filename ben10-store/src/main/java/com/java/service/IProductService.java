package com.java.service;

import java.util.List;

import com.java.model.ProductModel;

public interface IProductService {
	List<ProductModel> findAll();
	List<ProductModel> findById(Long idSanPham);
	ProductModel findOne(Long idSanPham);
	void deleteOne(Long idSanPham);
	ProductModel save(ProductModel productModel);
	ProductModel update(ProductModel updateProduct);
	void delete(long[] ids);
}
