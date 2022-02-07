package com.java.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.model.ProductModel;

public class ProductMapper implements RowMapper<ProductModel>{

	@Override
	public ProductModel mapRow(ResultSet rs) {
		try {
			ProductModel product = new ProductModel();
			product.setDanhMuc(rs.getString("danh_muc"));
			product.setIdSanPham(rs.getLong("id_sanpham"));
			product.setTen(rs.getString("ten"));
			product.setGia(rs.getLong("gia"));
			product.setSoLuong(rs.getLong("soluong"));
			return product;
		} catch (SQLException e) {
			return null;
		}
	}

}
