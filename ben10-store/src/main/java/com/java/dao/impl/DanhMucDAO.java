package com.java.dao.impl;

import java.util.List;

import com.java.dao.IDanhMucDAO;
import com.java.mapper.DanhMucMapper;
import com.java.model.DanhMucModel;

public class DanhMucDAO extends AbstractDAO<DanhMucModel> implements IDanhMucDAO{

	@Override
	public List<DanhMucModel> findAll() {
		String sql = "SELECT * FROM danhmuc";
		return query(sql, new DanhMucMapper());
	}

	@Override
	public DanhMucModel findOne(long id) {
		String sql = "SELECT * FROM danhmuc WHERE id_danhmuc = ?";
		List<DanhMucModel> danhmuc = query(sql, new DanhMucMapper(), id);
		return danhmuc.isEmpty() ? null : danhmuc.get(0);
	}

	@Override
	public DanhMucModel findOneByCode(String code) {
		String sql = "SELECT * FROM danhmuc WHERE code = ?";
		List<DanhMucModel> danhmuc = query(sql, new DanhMucMapper(), code);
		return danhmuc.isEmpty() ? null : danhmuc.get(0);
	}

	@Override
	public void deleteOne(Long idSanPham) {
		// TODO Auto-generated method stub
		
	}

	@Override
	public Long save(DanhMucModel danhMuc) {
		StringBuilder sql = new StringBuilder("INSERT INTO danhmuc (ten,code) ");
		sql.append("VALUES(?, ?)");
		return insert(sql.toString(), danhMuc.getTen(), danhMuc.getCode());
	}

	@Override
	public void update(DanhMucModel updateDanhMuc) {
		String sql = "UPDATE danhmuc SET ten = ?, code = ? WHERE id_danhmuc = ?";
		update(sql,updateDanhMuc.getTen(),updateDanhMuc.getCode(),updateDanhMuc.getId());
	}

}
