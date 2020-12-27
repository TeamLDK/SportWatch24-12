USE [BanDongHo]
GO
/****** Object:  UserDefinedFunction [dbo].[ThongKeThuNhap]    Script Date: 12/26/2020 10:46:26 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER FUNCTION [dbo].[ThongKeThuNhap]
(@month INT, @year INT)
RETURNS MONEY
AS
BEGIN
	DECLARE @money MONEY
	SELECT @money = SUM(ChiTietHoaDon.so_luong * SanPham.gia_san_pham) FROM HoaDon, ChiTietHoaDon, SanPham
	WHERE HoaDon.id_hoa_don = ChiTietHoaDon.id_hoa_don
	AND ChiTietHoaDon.id_san_pham = SanPham.id_san_pham
	AND MONTH(HoaDon.ngay_hoa_don) = @month
	AND YEAR(HoaDon.ngay_hoa_don)= @year
	GROUP BY MONTH(HoaDon.ngay_hoa_don), YEAR(HoaDon.ngay_hoa_don)

	IF (@money IS NULL)
	BEGIN
		SET @money = 0
	END

RETURN @money
END
