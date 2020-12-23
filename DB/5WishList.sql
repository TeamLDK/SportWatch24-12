USE BanDongHo
GO

CREATE TABLE Wishlist(
	id_kh INT,
	id_san_pham VARCHAR(30),
	FOREIGN KEY (id_kh) REFERENCES KhachHang(id_kh),
	FOREIGN KEY (id_san_pham) REFERENCES SanPham(id_san_pham)
)
GO