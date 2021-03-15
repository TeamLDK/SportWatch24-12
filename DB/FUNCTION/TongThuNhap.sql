USE BanDongHo
GO




--		SELECT SUM(ChiTietHoaDon.so_luong * SanPham.gia_san_pham) FROM HoaDon, ChiTietHoaDon, SanPham
--		WHERE HoaDon.id_hoa_don = ChiTietHoaDon.id_hoa_don
--		AND ChiTietHoaDon.id_san_pham = SanPham.id_san_pham

CREATE FUNCTION TongThuNhap
()
RETURNS MONEY
AS
BEGIN
	DECLARE @money MONEY
	SELECT @money = SUM(ChiTietHoaDon.so_luong * SanPham.gia_san_pham) FROM HoaDon, ChiTietHoaDon, SanPham
	WHERE HoaDon.id_hoa_don = ChiTietHoaDon.id_hoa_don
	AND ChiTietHoaDon.id_san_pham = SanPham.id_san_pham
	IF (@money IS NULL)
	BEGIN
		SET @money = 0
	END
RETURN @money
END

GO
PRINT dbo.TongThuNhap()