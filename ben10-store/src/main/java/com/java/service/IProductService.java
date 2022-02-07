package com.java.service;

import java.util.List;

import com.java.model.ProductModel;

public interface IProductService {
	List<ProductModel> findAll();
	ProductModel findOne(Long idSanPham);
}
