package com.java.dao;

import java.util.List;

import com.java.model.DanhMucModel;
import com.java.model.ProductModel;

public interface IDanhMucDAO extends GenericDAO<DanhMucModel>{
	List<DanhMucModel> findAll();
	DanhMucModel findOne(long id);
	DanhMucModel findOneByCode(String code);
	void deleteOne (Long idSanPham);
	Long save(DanhMucModel danhMuc);
	void update(DanhMucModel updateDanhMuc);
}
