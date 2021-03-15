USE BanDongHo
GO


ALTER FUNCTION ThuNhapTheoThang
(@thang INT)
RETURNS MONEY
AS
BEGIN
		DECLARE @money MONEY
		SELECT @money = SUM(ChiTietHoaDon.so_luong * SanPham.gia_san_pham) FROM HoaDon, ChiTietHoaDon, SanPham
		WHERE HoaDon.id_hoa_don = ChiTietHoaDon.id_hoa_don
		AND ChiTietHoaDon.id_san_pham = SanPham.id_san_pham
		AND MONTH(HoaDon.ngay_hoa_don) = @thang
		IF (@money IS NULL)
		BEGIN
			SET @money = 0
		END
RETURN @money
END
GO
select dbo.ThuNhapTheoThang('3')