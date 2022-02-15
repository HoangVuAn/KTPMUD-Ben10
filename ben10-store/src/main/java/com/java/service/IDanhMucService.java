package com.java.service;

import java.util.List;

import com.java.model.DanhMucModel;

public interface IDanhMucService {
	List<DanhMucModel> findAll();
	List<DanhMucModel> findById(Long idDanhMuc);
	DanhMucModel findOne(Long idDanhMuc);
	void deleteOne(Long idDanhMuc);
	DanhMucModel save(DanhMucModel danhMucModel);
	DanhMucModel update(DanhMucModel updateDanhMuc);
	void delete(long[] ids);
}
