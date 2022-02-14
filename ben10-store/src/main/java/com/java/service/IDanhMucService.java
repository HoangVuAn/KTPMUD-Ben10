package com.java.service;

import java.util.List;

import com.java.model.DanhMucModel;
import com.java.model.ProductModel;

public interface IDanhMucService {
	List<DanhMucModel> findAll();
	DanhMucModel findOne(Long idDanhMuc);
	void deleteOne(Long idDanhMuc);
	DanhMucModel save(DanhMucModel danhMucModel);
	DanhMucModel update(DanhMucModel updateDanhMuc);
	void delete(long[] ids);
}
