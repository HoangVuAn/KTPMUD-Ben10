package com.java.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel>{

	@Override
	public ProductModel mapRow(ResultSet rs) {
		try {
			ProductModel product = new ProductModel();
			product.setId(rs.getLong("id_sanpham"));
			product.setIdDanhMuc(rs.getLong("id_danhmuc"));
			product.setTen(rs.getString("ten"));
			product.setGia(rs.getLong("gia"));
			product.setSoLuong(rs.getLong("soluong"));
			product.setMoTa(rs.getString("mota"));
			product.setHinhAnh(rs.getString("hinhanh"));
			return product;
		} catch (SQLException e) {
			return null;
		}
	}

}
