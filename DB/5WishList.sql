USE BanDongHo
GO

CREATE TABLE Wishlist(
	id_kh INT,
	id_san_pham VARCHAR(30),
	PRIMARY KEY(id_kh, id_san_pham),
	FOREIGN KEY (id_kh) REFERENCES KhachHang(id_kh),
	FOREIGN KEY (id_san_pham) REFERENCES SanPham(id_san_pham)
)
GO

CREATE TABLE l(
	id_kh INT,
	id_san_pham VARCHAR(30),
	PRIMARY KEY(id_kh, id_san_pham),
	FOREIGN KEY (id_kh) REFERENCES KhachHang(id_kh),
	FOREIGN KEY (id_san_pham) REFERENCES SanPham(id_san_pham)
)
GO

CREATE TABLE m(
	id_kh INT PRIMARY KEY,
	name NVARCHAR(20),
)
GO