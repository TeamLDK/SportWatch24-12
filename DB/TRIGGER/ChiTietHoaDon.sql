USE BanDongHo
GO


-- REMOVE PRODUCT ON CART WHEN HAVE NEW DETAIL RECIEPT
CREATE TRIGGER RemoveSanPham ON ChiTietHoaDon
FOR INSERT
AS
BEGIN
	DECLARE @id_hd VARCHAR(30) --Mã hóa đơn
	DECLARE @id_sp VARCHAR(30) --Mã sản phẩm
	DECLARE @id_kh VARCHAR(30) --Mã khách hàng
	DECLARE @so_sp_cthd INT --Số sản phẩm trong chi tiết hóa đơn vừa thêm
	DECLARE @so_sp_trong_kho INT --Số sản phẩm trong chi tiết hóa đơn vừa thêm

	SELECT @id_hd = id_hoa_don FROM INSERTED -- Mã hóa đơn vừa thêm
	SELECT @id_sp = id_san_pham FROM INSERTED -- Mã sản phẩm vừa thêm

	SELECT @id_kh = id_kh FROM HoaDon -- Lấy mã khách hàng từ bảng "hóa đơn" vừa thêm
	WHERE id_hoa_don = @id_hd

	SELECT @so_sp_cthd = so_luong FROM ChiTietHoaDon -- Lấy số sản phẩm trong chi tiết hóa đơn vừa thêm
	WHERE id_hoa_don = @id_hd AND id_san_pham = @id_sp
	
	SELECT @so_sp_trong_kho = so_luong_ton_kho FROM SanPham -- Lấy số sản phẩm tồn kho
	WHERE id_san_pham = @id_sp

	IF (@so_sp_trong_kho - @so_sp_cthd < 0)
	BEGIN
		ROLLBACK TRANSACTION; -- Hủy giao dịch
	END
	ELSE -- @so_sp_trong_kho - @so_sp_cthd >= 0
	BEGIN
		DELETE GioHang WHERE id_kh = @id_kh AND id_san_pham = @id_sp -- Xóa trường sản phẩm trong giỏ hàng vừa thêm vào "chi tiết hóa đơn"

		UPDATE SanPham SET so_luong_ton_kho = @so_sp_trong_kho - @so_sp_cthd WHERE id_san_pham = @id_sp -- UPDATE lại số sản phẩm trong kho sau khi lập hóa đơn
	END
	
END

GO


insert into ChiTietHoaDon values
('HD03', 'SP007', 6)