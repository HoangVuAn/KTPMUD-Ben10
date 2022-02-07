package com.java.dao.impl;

import java.util.List;

import com.java.dao.IProductDAO;
import com.java.mapper.ProductMapper;
import com.java.model.ProductModel;

public class ProductDAO extends AbstractDAO<ProductModel> implements IProductDAO{

	@Override
	public List<ProductModel> findAll() {
		String sql = "SELECT * FROM sanpham";
		return query(sql, new ProductMapper());
	}

	@Override
	public ProductModel findOne(Long idSanPham) {
		String sql = "SELECT * FROM sanpham WHERE id_sanpham = ?";
		List<ProductModel> products = query(sql, new ProductMapper(), idSanPham);
		return products.isEmpty() ? null : products.get(0);
	}

}
