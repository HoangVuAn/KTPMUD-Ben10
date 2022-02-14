CREATE DATABASE ben10store;
use ben10store;
CREATE TABLE khach (
  id_khach bigint NOT NULL PRIMARY KEY auto_increment,
  email VARCHAR(150) NOT NULL,
  password VARCHAR(150) NOT NULL,
  username VARCHAR(150) NOT NULL,
  phonenumber bigint NOT NULL UNIQUE
);
CREATE TABLE sanpham (
  id_sanpham bigint NOT NULL PRIMARY KEY auto_increment,
  id_danhmuc bigint NOT NULL,
  ten VARCHAR(150) NOT NULL,
  gia bigint NOT NULL,
  soluong bigint NOT NULL,
  mota VARCHAR(1500) NOT NULL,
  hinhanh VARCHAR(150) NOT NULL
);
CREATE TABLE danhmuc (
  id_danhmuc bigint NOT NULL PRIMARY KEY auto_increment,
  ten VARCHAR(150)
);
ALTER TABLE sanpham ADD CONSTRAINT fk_sanpham_danhmuc FOREIGN KEY (id_danhmuc) REFERENCES danhmuc(id_danhmuc);
CREATE TABLE sanphamdaban (
  id bigint NOT NULL PRIMARY KEY auto_increment,
  id_khach bigint NOT NULL,
  id_sanpham bigint NOT NULL,
  soluong bigint NOT NULL
);
ALTER TABLE sanphamdaban ADD CONSTRAINT fk_sanphamdaban_sanpham FOREIGN KEY (id_sanpham) REFERENCES sanpham(id_sanpham);
ALTER TABLE sanphamdaban ADD CONSTRAINT fk_sanphamdaban_khach FOREIGN KEY (id_khach) REFERENCES khach(id_khach);
CREATE TABLE nhanvien (
  id_nhanvien bigint NOT NULL PRIMARY KEY auto_increment,
  name VARCHAR(150) NOT NULL,
  gioitinh VARCHAR(10) NOT NULL,
  ngaysinh DATE NOT NULL,
  CMND bigint NOT NULL,
  phonenumber bigint NOT NULL UNIQUE,
  email VARCHAR(150) NOT NULL,
  giolamviec VARCHAR(150) NOT NULL,
  password VARCHAR(150) NOT NULL,
  id_vitri bigint NOT NULL
);
CREATE TABLE vitrilamviec (
  id_vitri bigint NOT NULL PRIMARY KEY auto_increment,
  tenvitri VARCHAR(150)
);
ALTER TABLE nhanvien ADD CONSTRAINT fk_nhanvien_vitrilamviec FOREIGN KEY (id_vitri) REFERENCES vitrilamviec(id_vitri);
CREATE TABLE admin (
  username VARCHAR(150) PRIMARY KEY,
  password VARCHAR(150) NOT NULL
);