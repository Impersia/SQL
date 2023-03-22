INSERT INTO PHONGBAN (MaPhg, TenPhg)
VALUES ('1', 'Qu?n l?'),
       ('4', '�i?u h�nh'),
       ('5', 'Nghi�n c?u');

/**************************************************************************************/
INSERT INTO DEAN (MaDA, TenDA, DDiemDA)
VALUES
    ('1', 'N�ng cao ch?t l�?ng mu?i', 'Sa Hu?nh'),
    ('10', 'X�y d?ng nh� m�y ch? bi?n th?y s?n', 'Dung Qu?t'),
    ('2', 'Ph�t tri?n h? t?ng m?ng', 'Tp Qu?ng Ng?i'),
    ('20', 'Truy?n t?i c�p quang', 'Tp Qu?ng Ng?i'),
    ('3', 'Tin h?c h�a tr�?ng h?c', 'Ba T�'),
    ('30', '��o t?o nh�n l?c', 'T?nh Phong');
/**************************************************************************************/
INSERT INTO NHANVIEN (MaNV, HoNV, TenLot, TenNV, NgSinh, DiaChi, Phai, Luong, Phong) 
VALUES ('123', '�inh', 'B�', 'Ti?n', '1982-02-27', 'M? �?c', 'Nam', NULL, '4'), 
       ('234', 'Nguy?n', 'Thanh', 'T�ng', '1956-08-12', 'S�n T?nh', 'Nam', NULL, '5'), 
       ('345', 'B�i', 'Th�y', 'V?', NULL, 'T� Ngh?a', 'N?', NULL, '4'), 
       ('456', 'L�', 'Th?', 'Nh�n', '1962-07-12', 'M? �?c', 'N?', NULL, '4'), 
       ('567', 'Nguy?n', 'M?nh', 'H�ng', '1985-03-25', 'S�n T?nh', 'Nam', NULL, '5'), 
       ('678', 'Tr?n', 'H?ng', 'Quang', NULL, 'B?nh S�n', 'Nam', NULL, '5'), 
       ('789', 'Tr?n', 'Thanh', 'T�m', '1972-06-17', 'Tp Qu?ng Ng?i', 'Nam', NULL, '5'), 
       ('890', 'Cao', 'Thanh', 'Huy?n', NULL, 'T� Ngh?a', 'N?', NULL, '1'), 
       ('901', 'V��ng', 'Ng?c', 'Quy?n', '1980-12-12', 'M? �?c', 'Nam', NULL, '1');

/**************************************************************************************/
INSERT INTO PHANCONG (MaNV, MaDA, ThoiGian)
VALUES 
('123', '1', '33'),
('123', '2', '8'),
('345', '10', '10'),
('345', '20', '10'),
('345', '3', '10'),
('456', '1', '20'),
('456', '2', '20'),
('678', '3', '40'),
('789', '10', '35'),
('789', '20', '30'),
('789', '30', '5');

/**************************************************************************************/
INSERT INTO THANNHAN (MaNV, TenTN, NgaySinh, Phai, QuanHe)
VALUES 
('123', 'Ch�u', '2005-10-30', 'N?', 'Con g�i'),
('123', 'Duy', '2001-10-25', 'Nam', 'Con trai'),
('123', 'Ph��ng', '1985-10-30', 'N?', 'V? ch?ng'),
('234', 'Thanh', '1980-04-05', 'N?', 'Con g�i'),
('345', 'D��ng', '1956-10-30', 'Nam', 'V? ch?ng'),
('345', 'Khang', '1982-10-25', 'Nam', 'Con trai'),
('456', 'H�ng', '1987-01-01', 'Nam', 'Con trai'),
('901', 'Th��ng', '1989-04-05', 'N?', 'V? ch?ng');