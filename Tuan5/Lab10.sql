﻿go
----Cau 1a---------
INSERT INTO NhanVien (manv, tennv,  gioitinh, diachi, sodt, email, phong)
VALUES ('NV08', 'Nguyen Van D', 'Nam', 'Ha Noi', '0987654321', 'nva@example.com', N'Kế toán')
----Thực hiện full back up
BACKUP DATABASE [QLBanHang] TO DISK = 'C:\LyHuynhThanhHau.bak' WITH INIT
go

go
----Cau 1b---------
go
INSERT INTO NhanVien (manv, tennv,  gioitinh, diachi, sodt, email, phong)
VALUES ('NV09', 'Nguyen Van B', 'Nam', 'Ha Noi', '0987654321', 'nva@example.com', N'Kế toán')
----Thực hiện different backup
BACKUP DATABASE [QLBanHang] TO DISK = 'C:\LyHuynhThanhHau\Tuan5\different backup.bak' WITH INIT
go

go
----Cau 1c---------
INSERT INTO NhanVien (manv, tennv,  gioitinh, diachi, sodt, email, phong)
VALUES ('NV17', 'Nguyen Van C', 'Nam', 'Ha Noi', '0987654321', 'nva@example.com', N'Kế toán')
----Thực hiện BACKUP LOG
BACKUP LOG [QLBanHang] TO DISK = 'C:\LyHuynhThanhHau\Tuan5.trn' WITH  FORMAT;
go

go
----Cau 1d---------
INSERT INTO NhanVien (manv, tennv,  gioitinh, diachi, sodt, email, phong)
VALUES ('NV19', 'Nguyen Van C', 'Nam', 'Ha Noi', '0987654321', 'nva@example.com', N'Kế toán')
----Thực hiện BACKUP LOG
BACKUP LOG [QLBanHang] TO DISK = 'C:\LyHuynhThanhHau\Tuan5.trn' WITH  NOINIT;
go

go
----Cau 2---------
DROP DATABASE QLBanHang;

RESTORE DATABASE QLBanHang
FROM DISK = 'C:\LyHuynhThanhHau\QLBanHang.bak'
WITH STANDBY = 'C:\LyHuynhThanhHau.undo'
go