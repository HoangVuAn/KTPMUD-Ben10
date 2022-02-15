package com.java.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.java.dao.IDanhMucDAO;
import com.java.dao.IProductDAO;
import com.java.model.DanhMucModel;
import com.java.model.ProductModel;
import com.java.service.IProductService;

public class ProductService implements IProductService{
	@Inject
	IProductDAO productDAO;
	@Inject
	IDanhMucDAO danhMucDAO;
	@Override
	public List<ProductModel> findAll() {
		return productDAO.findAll();
	}

	@Override
	public ProductModel findOne(Long id) {
		ProductModel productModel = productDAO.findOne(id);
		DanhMucModel danhMucModel = danhMucDAO.findOne(productModel.getIdDanhMuc());
		productModel.setCodeDanhMuc(danhMucModel.getCode());
		return productModel;
	}

	@Override
	public void deleteOne(Long idSanPham) {
		productDAO.deleteOne(idSanPham);
	}

	@Override
	public ProductModel save(ProductModel product) {
		DanhMucModel danhMuc = danhMucDAO.findOneByCode(product.getCodeDanhMuc());
		product.setIdDanhMuc(danhMuc.getId());
		Long productId = productDAO.save(product);
		return productDAO.findOne(productId);
	}

	@Override
	public ProductModel update(ProductModel updateProduct) {
		DanhMucModel danhMuc = danhMucDAO.findOneByCode(updateProduct.getCodeDanhMuc());
		updateProduct.setIdDanhMuc(danhMuc.getId());
		productDAO.update(updateProduct);
		return productDAO.findOne(updateProduct.getId());
	}

	@Override
	public void delete(long[] ids) {
		for (long id : ids) {
			productDAO.deleteOne(id);
		}
	}

	@Override
	public List<ProductModel> findById(Long idSanPham) {
		 return productDAO.findById(idSanPham);
	}

}
