drop database shopcafe;
create database shopcafe;

CREATE TABLE `shopcafe`.`sanpham` (
  `idsanpham` INT NOT NULL AUTO_INCREMENT,
  `tensp` VARCHAR(45) NULL,
  `giasp` INT NULL DEFAULT 0,
  `motasp` TEXT(255) NULL,
  `imgsp` VARCHAR(45) NULL,
  `ngaythemsp` TIMESTAMP NOT NULL,
  PRIMARY KEY (`idsanpham`));
  
  
  
  
  CREATE TABLE `shopcafe`.`taikhoan` (
  `idtaikhoan` INT NOT NULL AUTO_INCREMENT,
  `tendangnhap` VARCHAR(45) NULL,
  `matkhau` VARCHAR(45) NULL,
  `role` INT NULL,
  PRIMARY KEY (`idtaikhoan`));
  
  
  CREATE TABLE `shopcafe`.`nhanvien` (
  `idnhanvien` INT NOT NULL AUTO_INCREMENT,
  `tennv` VARCHAR(45) NULL,
  `gioitinhnv` TINYINT NULL,
  `idtaikhoan` INT NULL,
  `anhnv` VARCHAR(45) NULL,
  PRIMARY KEY (`idnhanvien`),
  FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan`(`idtaikhoan`)
  );


CREATE TABLE `shopcafe`.`admin` (
  `idadmin` INT NOT NULL AUTO_INCREMENT,
  `ten` VARCHAR(45) NULL,
  `gioitinh` TINYINT NULL,
  `img` VARCHAR(45) NULL,
  `idtaikhoan` INT NULL,
  PRIMARY KEY (`idadmin`),
  FOREIGN KEY (`idtaikhoan`) REFERENCES `taikhoan`(`idtaikhoan`)
  );
  
  CREATE TABLE `shopcafe`.`hoadon` (
  `idhoadon` INT NOT NULL AUTO_INCREMENT,
  `ngaylap` TIMESTAMP NOT NULL,
  `ghichu` TEXT(255) NULL,
  `tongtien` INT NULL DEFAULT 0,
  `idnhanvien` INT NULL,
  PRIMARY KEY (`idhoadon`),
  FOREIGN KEY (`idnhanvien`) REFERENCES `nhanvien`(`idnhanvien`)
  );
  
  CREATE TABLE `shopcafe`.`chitiethoadon` (
  `idhoadon` INT NOT NULL,
  `idsanpham` INT NOT NULL,
  `soluong` INT NULL DEFAULT 1,
  PRIMARY KEY (`idhoadon`, `idsanpham`),
  FOREIGN KEY (`idhoadon`) REFERENCES `hoadon`(`idhoadon`),
  FOREIGN KEY (`idsanpham`) REFERENCES `sanpham`(`idsanpham`)
  );
  