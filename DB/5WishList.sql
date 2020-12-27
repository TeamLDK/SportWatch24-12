USE BanDongHo
GO

DROP TABLE Wishlist
CREATE TABLE Wishlist(
	id_wishlist INT IDENTITY(1,1) PRIMARY KEY,
	id_kh INT,
	id_san_pham VARCHAR(30),

)
GO