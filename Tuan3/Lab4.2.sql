--lab3--
--câu 1
go
CREATE VIEW Lab3C1 AS
SELECT Hangsx.tenhang, COUNT(Sanpham.masp) AS SoLuongLoaiSP
FROM Hangsx
JOIN Sanpham ON Hangsx.mahangsx = Sanpham.mahangsx
GROUP BY Hangsx.tenhang;

go
go
Select * from Lab3C1
go
--câu 2
go
CREATE VIEW Lab3C2 AS
SELECT Sanpham.tensp, SUM(Nhap.soluongN * Nhap.dongiaN) AS TongTienNhap
FROM Sanpham
JOIN Nhap ON Sanpham.masp = Nhap.masp
WHERE YEAR(Nhap.ngaynhap) = 2018
GROUP BY Sanpham.tensp;

go
go
Select * from Lab3C2
go
--câu 3
go
CREATE VIEW Lab3C3 AS
SELECT Sanpham.tensp, SUM(Xuat.soluongX) AS TongSoLuongXuat
FROM Sanpham
JOIN Xuat ON Sanpham.masp = Xuat.masp
JOIN Hangsx ON Sanpham.mahangsx = Hangsx.mahangsx
WHERE Hangsx.tenhang = 'samsung' AND YEAR(Xuat.ngayxuat) = 2018
GROUP BY Sanpham.tensp
HAVING SUM(Xuat.soluongX) > 10000

go
go
Select * from Lab3C3
go
--câu 4
go
CREATE VIEW Lab3C4 AS
SELECT Nhanvien.phong, COUNT(Nhanvien.manv) AS SoLuongNam
FROM Nhanvien
WHERE Nhanvien.gioitinh = 'Nam'
GROUP BY Nhanvien.phong;

go
go
Select * from Lab3C4
go
--câu 5
go
CREATE VIEW Lab3C5 AS
SELECT Hangsx.tenhang, SUM(Nhap.soluongN) AS TongSoLuongNhap
FROM Hangsx
JOIN Sanpham ON Hangsx.mahangsx = Sanpham.mahangsx
JOIN Nhap ON Sanpham.masp = Nhap.masp
WHERE YEAR(Nhap.ngaynhap) = 2018
GROUP BY Hangsx.tenhang;

go
go
Select * from Lab3C5
go
--câu 6
go
CREATE VIEW Lab3C6 AS
SELECT Nhanvien.tennv, SUM(Sanpham.giaban * Xuat.soluongX) AS TongTienXuat
FROM Nhanvien
JOIN Xuat ON Nhanvien.manv = Xuat.manv
JOIN Sanpham ON Xuat.masp = Sanpham.masp
WHERE YEAR(Xuat.ngayxuat) = 2018
GROUP BY Nhanvien.tennv;

go
go
Select * from Lab3C6
go
--câu 7
go
CREATE VIEW Lab3C7 AS
SELECT Nhanvien.tennv, SUM(Nhap.soluongN * Nhap.dongiaN) AS TongTienNhap
FROM Nhanvien
JOIN Nhap ON Nhanvien.manv = Nhap.manv
WHERE MONTH(Nhap.ngaynhap) = 8 AND YEAR(Nhap.ngaynhap) = 2018
GROUP BY Nhanvien.tennv
HAVING SUM(Nhap.soluongN * Nhap.dongiaN) > 100000;

go
go
Select * from Lab3C7
go
--câu 8
go
CREATE VIEW Lab3C8 AS
SELECT *
FROM Sanpham
WHERE NOT EXISTS (
    SELECT *
    FROM Xuat
    WHERE Sanpham.masp = Xuat.masp
);

go
go
Select * from Lab3C8
go
--câu 9
go
CREATE VIEW Lab3C9 AS
SELECT DISTINCT Sanpham.*
FROM Sanpham
INNER JOIN Nhap ON Sanpham.masp = Nhap.masp
INNER JOIN Xuat ON Sanpham.masp = Xuat.masp
WHERE YEAR(Nhap.ngaynhap) = 2018 AND YEAR(Xuat.ngayxuat) = 2018;

go
go
Select * from Lab3C9
go
--câu 10
go
CREATE VIEW Lab3C10 AS
SELECT DISTINCT Nhanvien.*
FROM Nhanvien
INNER JOIN Nhap ON Nhanvien.manv = Nhap.manv
INNER JOIN Xuat ON Nhanvien.manv = Xuat.manv;

go
go
Select * from Lab3C10
go
--câu 11
go
CREATE VIEW Lab3C11 AS
	SELECT *
FROM Nhanvien
WHERE Nhanvien.manv NOT IN (SELECT DISTINCT manv FROM Nhap)
  AND Nhanvien.manv NOT IN (SELECT DISTINCT manv FROM Xuat);
go
go
Select * from Lab3C11
go
