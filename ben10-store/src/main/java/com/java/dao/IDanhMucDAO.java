package com.java.dao;

import java.util.List;

import com.java.model.DanhMucModel;

public interface IDanhMucDAO extends GenericDAO<DanhMucModel>{
	List<DanhMucModel> findAll();
	List<DanhMucModel> findById(Long idDanhMuc);
	DanhMucModel findOne(long id);
	DanhMucModel findOneByCode(String code);
	void deleteOne (Long idDanhmuc);
	Long save(DanhMucModel danhMuc);
	void update(DanhMucModel updateDanhMuc);
}
