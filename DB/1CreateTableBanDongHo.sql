CREATE DATABASE BanDongHo
GO
USE BanDongHo
GO


CREATE TABLE DanhMucSanPham(
	id_danh_muc INT IDENTITY(1,1) PRIMARY KEY,
	ten_danh_muc NVARCHAR(70) NOT NULL,
	id_danh_muc_cha INT,
	id_danh_muc_con INT,
	FOREIGN KEY (id_danh_muc_cha) REFERENCES DanhMucSanPham(id_danh_muc),
	FOREIGN KEY (id_danh_muc_con) REFERENCES DanhMucSanPham(id_danh_muc)
)
GO


CREATE TABLE ImgGiaoDien(
	id_img INT IDENTITY(1,1) PRIMARY KEY,
	url TEXT NOT NULL,
	mo_ta_img NVARCHAR(100),
	dieu_huong_img TEXT,
	loai_img VARCHAR(30)
)
GO


CREATE TABLE DangKiNhanTin(
	id_dang_ki_nhan_tin INT IDENTITY(1,1) PRIMARY KEY,
	email VARCHAR(60) NOT NULL,
)
GO

CREATE TABLE ThuongHieu(
	id_thuong_hieu INT IDENTITY(1,1) PRIMARY KEY,
	ten_thuong_hieu NVARCHAR(80) NOT NULL, 
	img_thuong_hieu TEXT,
	dieu_huong_thuong_hieu TEXT,
)
GO

CREATE TABLE SanPham(
	id_san_pham VARCHAR(30) PRIMARY KEY,
	id_danh_muc INT,
	id_thuong_hieu INT,
	ten_san_pham NVARCHAR(100) NOT NULL,
	gia_san_pham MONEY NOT NULL,
	phan_tram_khuyen_mai FLOAT,
	so_luong_ton_kho INT NOT NULL,
	mo_ta_san_pham TEXT,
	tinh_nang_san_pham TEXT,
	gioi_tinh NVARCHAR(30),
	so_thang_bao_hanh INT,
	FOREIGN KEY (id_danh_muc) REFERENCES DanhMucSanPham(id_danh_muc),
	FOREIGN KEY (id_thuong_hieu) REFERENCES ThuongHieu(id_thuong_hieu)
)
GO


CREATE TABLE ImgSanPham(
	id_img INT IDENTITY(1,1) PRIMARY KEY,
	id_san_pham VARCHAR(30) NOT NULL,
	url TEXT NOT NULL,
	mo_ta_img NVARCHAR(100),
	main BIT NOT NULL,
	FOREIGN KEY (id_san_pham) REFERENCES SanPham(id_san_pham)
)
GO

CREATE TABLE KhachHang(
	id_kh INT IDENTITY(1,1) PRIMARY KEY,
	username_kh VARCHAR(30) UNIQUE NOT NULL,
	password_kh VARCHAR(50) NOT NULL,
	ten_kh NVARCHAR(100) NOT NULL,
	sdt_kh VARCHAR(13) NOT NULL, -- key_query
	email_kh VARCHAR(60),
	dia_chi_kh NVARCHAR(200),
)
GO


CREATE TABLE VanChuyen(
	id_don_vi_van_chuyen INT IDENTITY(1,1) PRIMARY KEY,
	ten_don_vi_van_chuyen NVARCHAR(100) NOT NULL,
	dia_chi_don_vi_van_chuyen NVARCHAR(200) ,
	sdt_don_vi_van_chuyen VARCHAR(12) NOT NULL,
	email_don_vi_van_chuyen VARCHAR(100),
	phi_van_chuyen MONEY NOT NULL, -- PHÍ VẬN CHUYỂN ĐƠN HÀNG /1km
)
GO






CREATE TABLE HoaDon(
	id_hoa_don VARCHAR(30) PRIMARY KEY,
	id_kh INT NOT NULL,
	id_don_vi_van_chuyen INT NOT NULL,

	ngay_hoa_don DATE NOT NULL,
	ghi_chu_giao_hang NVARCHAR(200),

	FOREIGN KEY (id_don_vi_van_chuyen) REFERENCES VanChuyen(id_don_vi_van_chuyen),
	FOREIGN KEY (id_kh) REFERENCES KhachHang(id_kh),
)
GO


CREATE TABLE ChiTietHoaDon(
	id_hoa_don VARCHAR(30),
	id_san_pham VARCHAR(30),
	PRIMARY KEY(id_hoa_don, id_san_pham),
	so_luong INT NOT NULL,
	FOREIGN KEY (id_hoa_don) REFERENCES HoaDon(id_hoa_don),
	FOREIGN KEY (id_san_pham) REFERENCES SanPham(id_san_pham)
)
GO

CREATE TABLE GioHang(
	id_kh INT,
	id_san_pham VARCHAR(30),
	PRIMARY KEY(id_kh, id_san_pham),
	so_luong INT NOT NULL,
	FOREIGN KEY (id_kh) REFERENCES KhachHang(id_kh),
	FOREIGN KEY (id_san_pham) REFERENCES SanPham(id_san_pham)
)


drop table Admin

CREATE TABLE Admin(
	username VARCHAR(50) PRIMARY KEY,
	password VARCHAR(200) NOT NULL,
	name NVARCHAR(50),
	phone VARCHAR(12),
	email VARCHAR(100),
	address NVARCHAR(200),
)