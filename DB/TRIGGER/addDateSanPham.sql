USE BanDongHo
GO


-- TRIGGER ADD DATE AUTO
CREATE TRIGGER AddNgayThemSanPham ON SanPham
FOR INSERT
AS
BEGIN
	DECLARE @id_sp VARCHAR(30)
	SELECT @id_sp = id_san_pham FROM INSERTED 
	PRINT @id_sp
	UPDATE SanPham SET ngay_them_san_pham = GETDATE() WHERE id_san_pham = @id_sp
END
GO

--INSERT INTO SanPham(id_san_pham, id_danh_muc, id_thuong_hieu, ten_san_pham, gia_san_pham, phan_tram_khuyen_mai, so_luong_ton_kho) VALUES 
--('SP0011', 2, 1, 'vIP PRO CUTE', 100000, 20, 5)