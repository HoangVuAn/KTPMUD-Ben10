package com.java.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.java.dao.IProductDAO;
import com.java.model.ProductModel;
import com.java.service.IProductService;

public class ProductService implements IProductService{
	@Inject
	IProductDAO productDAO;
	
	@Override
	public List<ProductModel> findAll() {
		return productDAO.findAll();
	}

	@Override
	public ProductModel findOne(Long idSanPham) {
		return productDAO.findOne(idSanPham);
	}

}
