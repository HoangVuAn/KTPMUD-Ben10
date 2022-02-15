package com.java.service.impl;

import java.util.List;

import javax.inject.Inject;

import com.java.dao.IDanhMucDAO;
import com.java.model.DanhMucModel;
import com.java.service.IDanhMucService;

public class DanhMucService implements IDanhMucService{

	@Inject
	IDanhMucDAO danhMucDao;
	@Override
	public List<DanhMucModel> findAll() {
		return danhMucDao.findAll();
	}
	@Override
	public DanhMucModel findOne(Long id) {
		
		DanhMucModel danhMucModel = danhMucDao.findOne(id);
		return danhMucModel;
	}
	@Override
	public void deleteOne(Long idDanhMuc) {
		danhMucDao.deleteOne(idDanhMuc);
		
	}
	@Override
	public DanhMucModel save(DanhMucModel danhMucModel) {
		Long productId = danhMucDao.save(danhMucModel);
		return danhMucDao.findOne(productId);
	}
	@Override
	public DanhMucModel update(DanhMucModel updateDanhMuc) {
		danhMucDao.update(updateDanhMuc);
		return danhMucDao.findOne(updateDanhMuc.getId());
	}
	@Override
	public void delete(long[] ids) {
		for (long id : ids) {
			danhMucDao.deleteOne(id);
		}
	}
	@Override
	public List<DanhMucModel> findById(Long idDanhMuc) {
		return danhMucDao.findById(idDanhMuc);
	}

}
