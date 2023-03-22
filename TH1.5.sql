INSERT INTO PHONGBAN (MaPhg, TenPhg)
VALUES ('1', 'Qu?n l?'),
       ('4', 'Ði?u hành'),
       ('5', 'Nghiên c?u');

/**************************************************************************************/
INSERT INTO DEAN (MaDA, TenDA, DDiemDA)
VALUES
    ('1', 'Nâng cao ch?t lý?ng mu?i', 'Sa Hu?nh'),
    ('10', 'Xây d?ng nhà máy ch? bi?n th?y s?n', 'Dung Qu?t'),
    ('2', 'Phát tri?n h? t?ng m?ng', 'Tp Qu?ng Ng?i'),
    ('20', 'Truy?n t?i cáp quang', 'Tp Qu?ng Ng?i'),
    ('3', 'Tin h?c hóa trý?ng h?c', 'Ba Tõ'),
    ('30', 'Ðào t?o nhân l?c', 'T?nh Phong');
/**************************************************************************************/
INSERT INTO NHANVIEN (MaNV, HoNV, TenLot, TenNV, NgSinh, DiaChi, Phai, Luong, Phong) 
VALUES ('123', 'Ðinh', 'Bá', 'Ti?n', '1982-02-27', 'M? Ð?c', 'Nam', NULL, '4'), 
       ('234', 'Nguy?n', 'Thanh', 'Tùng', '1956-08-12', 'Sõn T?nh', 'Nam', NULL, '5'), 
       ('345', 'Bùi', 'Thúy', 'V?', NULL, 'Tý Ngh?a', 'N?', NULL, '4'), 
       ('456', 'Lê', 'Th?', 'Nhàn', '1962-07-12', 'M? Ð?c', 'N?', NULL, '4'), 
       ('567', 'Nguy?n', 'M?nh', 'Hùng', '1985-03-25', 'Sõn T?nh', 'Nam', NULL, '5'), 
       ('678', 'Tr?n', 'H?ng', 'Quang', NULL, 'B?nh Sõn', 'Nam', NULL, '5'), 
       ('789', 'Tr?n', 'Thanh', 'Tâm', '1972-06-17', 'Tp Qu?ng Ng?i', 'Nam', NULL, '5'), 
       ('890', 'Cao', 'Thanh', 'Huy?n', NULL, 'Tý Ngh?a', 'N?', NULL, '1'), 
       ('901', 'Výõng', 'Ng?c', 'Quy?n', '1980-12-12', 'M? Ð?c', 'Nam', NULL, '1');

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
('123', 'Châu', '2005-10-30', 'N?', 'Con gái'),
('123', 'Duy', '2001-10-25', 'Nam', 'Con trai'),
('123', 'Phýõng', '1985-10-30', 'N?', 'V? ch?ng'),
('234', 'Thanh', '1980-04-05', 'N?', 'Con gái'),
('345', 'Dýõng', '1956-10-30', 'Nam', 'V? ch?ng'),
('345', 'Khang', '1982-10-25', 'Nam', 'Con trai'),
('456', 'Hùng', '1987-01-01', 'Nam', 'Con trai'),
('901', 'Thýõng', '1989-04-05', 'N?', 'V? ch?ng');