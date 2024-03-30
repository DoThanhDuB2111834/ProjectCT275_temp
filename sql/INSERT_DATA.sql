INSERT INTO `shopcafe`.`taikhoan` (`tendangnhap`, `matkhau`, `tennv`, `diachi`, `gioitinhnv`, `role`) VALUES ('dudo123', '1234', 'Đỗ Thanh Dũ', 'Cần Thơ', '1', '1');
INSERT INTO `shopcafe`.`taikhoan` (`tendangnhap`, `matkhau`, `tennv`, `diachi`, `gioitinhnv`, `role`) VALUES ('CongThien123', '1234', 'Phạm Võ Công Thiên', 'Cần Thơ', '1', '1');

INSERT INTO `shopcafe`.`hoadon` (`ghichu`, `tongtien`, `tai_khoan_id`) VALUES ('Hóa đơn 1', '100000', '1');
INSERT INTO `shopcafe`.`hoadon` (`ghichu`, `tongtien`, `tai_khoan_id`) VALUES ('Hóa đơn 2', '200000', '1');
INSERT INTO `shopcafe`.`hoadon` (`ghichu`, `tongtien`, `tai_khoan_id`) VALUES ('Hóa đơn 3', '400000', '2');
INSERT INTO `shopcafe`.`hoadon` (`ghichu`, `tongtien`, `tai_khoan_id`) VALUES ('Hóa đơn 4', '700000', '2');



-- Tự thêm sản phẩm dô rồi hả thêm mấy dòng này, nãy t insert bằng giao diện xong quên copy cái lệnh
INSERT INTO `shopcafe`.`chitiethoadon` (`hoa_don_id`, `san_pham_id`, `soluong`) VALUES ('1', '1', '1');
INSERT INTO `shopcafe`.`chitiethoadon` (`hoa_don_id`, `san_pham_id`, `soluong`) VALUES ('2', '1', '1');
INSERT INTO `shopcafe`.`chitiethoadon` (`hoa_don_id`, `san_pham_id`, `soluong`) VALUES ('2', '2', '2');
INSERT INTO `shopcafe`.`chitiethoadon` (`hoa_don_id`, `san_pham_id`, `soluong`) VALUES ('3', '3', '2');
INSERT INTO `shopcafe`.`chitiethoadon` (`hoa_don_id`, `san_pham_id`, `soluong`) VALUES ('3', '1', '1');
