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
	public ProductModel findOne(Long id) {
		String sql = "SELECT * FROM sanpham WHERE id_sanpham = ?";
		List<ProductModel> products = query(sql, new ProductMapper(), id);
		return products.isEmpty() ? null : products.get(0);
	}

	@Override
	public void deleteOne(Long idSanPham) {
		String sql = "DELETE FROM sanpham WHERE id_sanpham = ?";
		update(sql, idSanPham);
	}

	@Override
	public Long save(ProductModel product) {
		StringBuilder sql = new StringBuilder("INSERT INTO sanpham (id_danhmuc, ten, gia, soluong, mota, hinhanh) ");
		sql.append("VALUES(?, ?, ?, ?, ?, ?)");
		return insert(sql.toString(), product.getIdDanhMuc(), product.getTen(), product.getGia(), product.getSoLuong(), product.getMoTa(), product.getHinhAnh());
	}

	@Override
	public void update(ProductModel updateProduct) {
		String sql = "UPDATE sanpham SET id_danhmuc = ?, ten = ?, gia = ?, soluong = ?, mota = ?, hinhanh = ? WHERE id_sanpham = ?";
		update(sql,updateProduct.getIdDanhMuc(),updateProduct.getTen(),updateProduct.getGia(),updateProduct.getSoLuong()
				,updateProduct.getMoTa(),updateProduct.getHinhAnh(),updateProduct.getId());
	}

	@Override
	public List<ProductModel> findById(Long idSanPham) {
		String sql = "SELECT * FROM sanpham WHERE id_sanpham = ?";
		return query(sql, new ProductMapper(), idSanPham);
	}

}
