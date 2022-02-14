package com.java.model;

public class ProductModel extends AbstractModel<ProductModel> {
	private Long idDanhMuc; 
	private	String ten;
	private	Long gia;
	private	Long soLuong;
	private String moTa;
	private String hinhAnh;
	private String codeDanhMuc;

	public Long getIdDanhMuc() {
		return idDanhMuc;
	}
	public void setIdDanhMuc(Long idDanhMuc) {
		this.idDanhMuc = idDanhMuc;
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
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public String getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(String hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public String getCodeDanhMuc() {
		return codeDanhMuc;
	}
	public void setCodeDanhMuc(String codeDanhMuc) {
		this.codeDanhMuc = codeDanhMuc;
	}
	
}
