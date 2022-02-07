package com.java.model;

public class ProductModel extends AbstractModel<ProductModel> {
	private String danhMuc; 
	private	Long idSanPham;
	private	String ten;
	private	Long gia;
	private	Long soLuong;
	public String getDanhMuc() {
		return danhMuc;
	}
	public void setDanhMuc(String danhMuc) {
		this.danhMuc = danhMuc;
	}
	public Long getIdSanPham() {
		return idSanPham;
	}
	public void setIdSanPham(Long idSanPham) {
		this.idSanPham = idSanPham;
	}
	public String getTen() {
		return ten;
	}
	public void setTen(String ten) {
		this.ten = ten;
	}
	public Long getGia() {
		return gia;
	}
	public void setGia(Long gia) {
		this.gia = gia;
	}
	public Long getSoLuong() {
		return soLuong;
	}
	public void setSoLuong(Long soLuong) {
		this.soLuong = soLuong;
	}
	
}
