package com.java.mapper;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.java.model.AdminModel;
import com.java.model.DanhMucModel;

public class DanhMucMapper implements RowMapper<DanhMucModel>{

	@Override
	public DanhMucModel mapRow(ResultSet rs) {
		try {
			DanhMucModel danhMuc = new DanhMucModel();
			danhMuc.setId(rs.getLong("id_danhmuc"));
			danhMuc.setTen(rs.getString("ten"));
			danhMuc.setCode(rs.getString("code"));
			return danhMuc;
		} catch (SQLException e) {
			return null;
		}
	}

}
