USE BanDongHo
GO

CREATE PROC ThuNhapTrungBinh
AS
BEGIN
	SELECT SUM(ChiTietHoaDon.so_luong * SanPham.gia_san_pham) AS 'money'  FROM HoaDon, ChiTietHoaDon, SanPham
	WHERE HoaDon.id_hoa_don = ChiTietHoaDon.id_hoa_don
	AND ChiTietHoaDon.id_san_pham = SanPham.id_san_pham
	GROUP BY MONTH(HoaDon.ngay_hoa_don), YEAR(HoaDon.ngay_hoa_don)
END

EXEC ThuNhapTrungBinh
		
	