drop database shopcafe;
create database shopcafe;

CREATE TABLE `shopcafe`.`sanpham` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tensp` VARCHAR(45) NULL,
  `giasp` INT NULL DEFAULT 0,
  `motasp` TEXT(255) NULL,
  `imgsp` VARCHAR(45) NULL,
  `ngaythemsp` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`));
  
  CREATE TABLE `shopcafe`.`taikhoan` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `tendangnhap` VARCHAR(45) NULL,
  `matkhau` VARCHAR(45) NULL,
  `tennv` VARCHAR(45) NULL,
  `diachi` VARCHAR(255) NULL,
  `gioitinhnv` TINYINT NULL,
  `role` INT NULL,
  PRIMARY KEY (`id`));
  
  
--   CREATE TABLE `shopcafe`.`nhanvien` (
--   `idnhanvien` INT NOT NULL AUTO_INCREMENT,
--   `tennv` VARCHAR(45) NULL,
--   `gioitinhnv` TINYINT NULL,
--   `idtaikhoan` INT NULL,
--   PRIMARY KEY (`idnhanvien`),
--   FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan`(`idtaikhoan`)
--   );


-- CREATE TABLE `shopcafe`.`admin` (
--   `idadmin` INT NOT NULL AUTO_INCREMENT,
--   `ten` VARCHAR(45) NULL,
--   `gioitinh` TINYINT NULL,
--   `idtaikhoan` INT NULL,
--   PRIMARY KEY (`idadmin`),
--   FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan`(`idtaikhoan`)
--   );
  
  CREATE TABLE `shopcafe`.`hoadon` (
  `id` INT NOT NULL AUTO_INCREMENT,
  `ngaylap` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `ghichu` TEXT(255) NULL,
  `tongtien` INT NULL DEFAULT 0,
  `tai_khoan_id` INT NULL,
  PRIMARY KEY (`id`),
  FOREIGN KEY (`tai_khoan_id`) REFERENCES `taikhoan`(`id`)
  );
  
  CREATE TABLE `shopcafe`.`chitiethoadon` (
  `hoa_don_id` INT NOT NULL,
  `san_pham_id` INT NOT NULL,
  `soluong` INT NULL DEFAULT 1,
  PRIMARY KEY (`hoa_don_id`, `san_pham_id`),
  FOREIGN KEY (`hoa_don_id`) REFERENCES `hoadon`(`id`),
  FOREIGN KEY (`san_pham_id`) REFERENCES `sanpham`(`id`)
  );
  