-- USE master
-- GO

-- IF EXISTS (SELECT * FROM SYS.DATABASES WHERE NAME = 'QuanLyHocSinh')
-- BEGIN
-- 	ALTER DATABASE QuanLyHocSinh SET SINGLE_USER WITH ROLLBACK IMMEDIATE;
-- 	DROP DATABASE QuanLyHocSinh;
-- END
-- GO

CREATE DATABASE TestingDB
GO

USE TestingDB
GO

--===================================================================================================================================================

CREATE TABLE LOAINGUOIDUNG
(
	MaLoai VARCHAR(6) NOT NULL PRIMARY KEY,
	TenLoai NVARCHAR(30) NOT NULL
)

INSERT INTO LOAINGUOIDUNG VALUES('LND001', N'Ban giám hiệu')
INSERT INTO LOAINGUOIDUNG VALUES('LND002', N'Giáo viên')
INSERT INTO LOAINGUOIDUNG VALUES('LND003', N'Nhân viên giáo vụ')

--===================================================================================================================================================

CREATE TABLE NGUOIDUNG
(
	MaNguoiDung VARCHAR(6) NOT NULL PRIMARY KEY,
	MaLoai VARCHAR(6) NOT NULL,
	TenNguoiDung NVARCHAR(30) NOT NULL,
	TenDangNhap NVARCHAR(30) NOT NULL,
	MatKhau VARCHAR(64) NOT NULL,
	CONSTRAINT FK_NGUOIDUNG_LOAINGUOIDUNG FOREIGN KEY(MaLoai) REFERENCES LOAINGUOIDUNG(MaLoai)
)

--===================================================================================================================================================

CREATE TABLE DANTOC
(
	MaDanToc VARCHAR(6) NOT NULL PRIMARY KEY,
	TenDanToc NVARCHAR(30) NOT NULL
)

INSERT INTO DANTOC VALUES('DT0001', N'Kinh')
INSERT INTO DANTOC VALUES('DT0002', N'Hoa')
INSERT INTO DANTOC VALUES('DT0003', N'Khơ-me')
INSERT INTO DANTOC VALUES('DT0004', N'Chăm')

--===================================================================================================================================================

CREATE TABLE TONGIAO
(
	MaTonGiao VARCHAR(6) NOT NULL PRIMARY KEY,
	TenTonGiao NVARCHAR(30) NOT NULL
)

INSERT INTO TONGIAO VALUES('TG0001', N'Không')
INSERT INTO TONGIAO VALUES('TG0002', N'Phật Giáo')
INSERT INTO TONGIAO VALUES('TG0003', N'Cao Đài')
INSERT INTO TONGIAO VALUES('TG0004', N'Thiên Chúa')
INSERT INTO TONGIAO VALUES('TG0005', N'Tin Lành')

--===================================================================================================================================================

CREATE TABLE NAMHOC
(
	MaNamHoc VARCHAR(6) NOT NULL PRIMARY KEY,
	TenNamHoc NVARCHAR(30) NOT NULL
)

INSERT INTO NAMHOC VALUES('NH2324', '2023-2024')
INSERT INTO NAMHOC VALUES('NH2425', '2024-2025')

--===================================================================================================================================================

CREATE TABLE HOCKY
(
	MaHocKy VARCHAR(3) NOT NULL PRIMARY KEY,
	TenHocKy NVARCHAR(30) NOT NULL,
	HeSo INT,
	CONSTRAINT CK_HOCKY CHECK(CAST(RIGHT(MaHocKy, 1) AS INT) BETWEEN 1 AND 3)
)

INSERT INTO HOCKY VALUES('HK1', N'Học Kỳ 1', 1)
INSERT INTO HOCKY VALUES('HK2', N'Học Kỳ 2', 2)

--===================================================================================================================================================

CREATE TABLE KHOILOP
(
	MaKhoiLop VARCHAR(6) NOT NULL PRIMARY KEY,
	TenKhoiLop NVARCHAR(30) NOT NULL
)

INSERT INTO KHOILOP VALUES('KHOI10', N'Khối 10')
INSERT INTO KHOILOP VALUES('KHOI11', N'Khối 11')
INSERT INTO KHOILOP VALUES('KHOI12', N'Khối 12')

--===================================================================================================================================================

CREATE TABLE MONHOC
(
	MaMonHoc VARCHAR(6) NOT NULL PRIMARY KEY,
	TenMonHoc NVARCHAR(30) NOT NULL,
	SoTiet INT NOT NULL,
	HeSo INT NOT NULL
)

INSERT INTO MONHOC VALUES('MH0001', N'Toán', 90, 2)
INSERT INTO MONHOC VALUES('MH0002', N'Vật Lý', 60, 1)
INSERT INTO MONHOC VALUES('MH0003', N'Hóa Học', 60, 1)
INSERT INTO MONHOC VALUES('MH0004', N'Sinh Học', 60, 1)
INSERT INTO MONHOC VALUES('MH0005', N'Lịch Sử', 45, 1)
INSERT INTO MONHOC VALUES('MH0006', N'Địa Lý', 45, 1)
INSERT INTO MONHOC VALUES('MH0007', N'Ngữ Văn', 90, 2)
INSERT INTO MONHOC VALUES('MH0008', N'Đạo Đức', 30, 1)
INSERT INTO MONHOC VALUES('MH0009', N'Thể Dục', 30, 1)

--===================================================================================================================================================

CREATE TABLE HOCLUC
(
	MaHocLuc VARCHAR(6) NOT NULL PRIMARY KEY,
	TenHocLuc NVARCHAR(30) NOT NULL,
	DiemCanDuoi FLOAT NOT NULL,
	DiemCanTren FLOAT NOT NULL,
	DiemKhongChe FLOAT NOT NULL,

	CONSTRAINT CK_DiemCanDuoi CHECK(DiemCanDuoi BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemCanTren CHECK(DiemCanTren BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemKhongChe CHECK(DiemKhongChe BETWEEN 0 AND 10),
)

INSERT INTO HOCLUC VALUES('HL0001', N'Giỏi', 8.0, 10.0, 6.5)
INSERT INTO HOCLUC VALUES('HL0002', N'Khá', 6.5, 7.9, 5.0)
INSERT INTO HOCLUC VALUES('HL0003', N'Trung bình', 5.0, 6.4, 3.5)
INSERT INTO HOCLUC VALUES('HL0004', N'Yếu', 3.5, 4.9, 2.0)
INSERT INTO HOCLUC VALUES('HL0005', N'Kém', 0.0, 3.4, 0.0)

--===================================================================================================================================================

CREATE TABLE HANHKIEM
(
	MaHanhKiem VARCHAR(6) NOT NULL PRIMARY KEY,
	TenHanhKiem NVARCHAR(30) NOT NULL
)

INSERT INTO HANHKIEM VALUES('HK0001', N'Tốt')
INSERT INTO HANHKIEM VALUES('HK0002', N'Khá')
INSERT INTO HANHKIEM VALUES('HK0003', N'Trung bình')
INSERT INTO HANHKIEM VALUES('HK0004', N'Yếu')

--===================================================================================================================================================

CREATE TABLE KETQUA
(
	MaKetQua VARCHAR(6) NOT NULL PRIMARY KEY,
	TenKetQua NVARCHAR(30) NOT NULL
)

INSERT INTO KETQUA VALUES('KQ0001', N'Lên lớp')
INSERT INTO KETQUA VALUES('KQ0002', N'Thi lại')
INSERT INTO KETQUA VALUES('KQ0003', N'Rèn luyện hè')
INSERT INTO KETQUA VALUES('KQ0004', N'Ở lại')

--===================================================================================================================================================

CREATE TABLE NGHENGHIEP
(
	MaNghe VARCHAR(6) NOT NULL PRIMARY KEY,
	TenNghe NVARCHAR(30) NOT NULL
)

INSERT INTO NGHENGHIEP VALUES('NN0001', N'Nội trợ')
INSERT INTO NGHENGHIEP VALUES('NN0002', N'Giáo viên')
INSERT INTO NGHENGHIEP VALUES('NN0003', N'Công nhân')
INSERT INTO NGHENGHIEP VALUES('NN0004', N'Làm ruộng')
INSERT INTO NGHENGHIEP VALUES('NN0005', N'Buôn bán')

--===================================================================================================================================================

CREATE TABLE GIAOVIEN
(
	MaGiaoVien VARCHAR(6) NOT NULL PRIMARY KEY,
	TenGiaoVien NVARCHAR(30) NOT NULL,
	DiaChi NVARCHAR(50) NOT NULL,
	DienThoai NVARCHAR(15) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	CONSTRAINT FK_GIAOVIEN_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc)
)

INSERT INTO GIAOVIEN VALUES('GV0001', N'Hồ Văn Quang', N'100 Trần Hưng Đạo, Long Xuyên', '0975058876', 'MH0001')
INSERT INTO GIAOVIEN VALUES('GV0002', N'Phan Hồng Thơm', N'Lac Quoi - Tri Ton', '0976630315', 'MH0002')
INSERT INTO GIAOVIEN VALUES('GV0003', N'Huỳnh Thanh Tuyền', N'10C Nguyễn Trung Trực, Châu Đốc', '0699015456', 'MH0003')
INSERT INTO GIAOVIEN VALUES('GV0004', N'Lam Trung Tiên', N'Long Dien B, An Phú', '0845241566', 'MH0004')
INSERT INTO GIAOVIEN VALUES('GV0005', N'Huynh Túc Tài', N'Rạch Giá, Kiên Giang', '0123456789', 'MH0005')
INSERT INTO GIAOVIEN VALUES('GV0006', N'Lê Thi Minh Nguyệt', N'000 Long Xuyên, An Giang', '0123456789', 'MH0006')

--===================================================================================================================================================

CREATE TABLE HOCSINH
(
	MaHocSinh VARCHAR(6) NOT NULL PRIMARY KEY,
	HoTen NVARCHAR(30) NOT NULL,
	GioiTinh BIT,
	NgaySinh DATETIME,
	DiaChi NVARCHAR(50) NOT NULL,
	MaDanToc VARCHAR(6) NOT NULL,
	MaTonGiao VARCHAR(6) NOT NULL,
	HoTenCha NVARCHAR(30) NOT NULL,
	MaNgheCha VARCHAR(6) NOT NULL,
	HoTenMe NVARCHAR(30) NOT NULL,
	MaNgheMe VARCHAR(6) NOT NULL,
	Email NVARCHAR(50) NOT NULL UNIQUE,
 
	CONSTRAINT FK_HOCSINH_DANTOC FOREIGN KEY(MaDanToc) REFERENCES DANTOC(MaDanToc),
	CONSTRAINT FK_HOCSINH_TONGIAO FOREIGN KEY(MaTonGiao) REFERENCES TONGIAO(MaTonGiao),
	CONSTRAINT FK_HOCSINH_NGHENGHIEPCHA FOREIGN KEY(MaNgheCha) REFERENCES NGHENGHIEP(MaNghe),
	CONSTRAINT FK_HOCSINH_NGHENGHIEPME FOREIGN KEY(MaNgheMe) REFERENCES NGHENGHIEP(MaNghe)
)

INSERT INTO HOCSINH VALUES('HS0001', N'Nguyễn Văn Tú', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Hoàng Văn Minh', 'NN0005', N'Trần Thanh Sơn', 'NN0002', 'hs001@gmail.com')
INSERT INTO HOCSINH VALUES('HS0002', N'Nguyễn Ngọc An', '0', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Phạm Quốc Khánh', 'NN0003', N'Lê Thị Hà', 'NN0001', 'hs002@gmail.com')
INSERT INTO HOCSINH VALUES('HS0003', N'Lê Hoàng Anh', '0', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Trần Hữu Phước', 'NN0005', N'Nguyễn Thị Hoa', 'NN0005', 'hs003@gmail.com')
INSERT INTO HOCSINH VALUES('HS0004', N'Huỳnh Thiên Chí', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Ngô Minh Tân', 'NN0002', N'Phan Thanh Bình', 'NN0004', 'hs004@gmail.com')
INSERT INTO HOCSINH VALUES('HS0005', N'Lý Ngọc Duy', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Lê Văn Tân', 'NN0005', N'Hoàng Văn Hùng', 'NN0002', 'hs005@gmail.com')
INSERT INTO HOCSINH VALUES('HS0006', N'Huỳnh Ngọc Điệp', '1', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Nguyễn Anh Dũng', 'NN0003', N'Lê Ngọc Lan', 'NN0001', 'hs006@gmail.com')
INSERT INTO HOCSINH VALUES('HS0007', N'Trần Thị Huệ', '1', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Phạm Hoàng Anh', 'NN0005', N'Vũ Thị Nga', 'NN0005', 'hs007@gmail.com')
INSERT INTO HOCSINH VALUES('HS0008', N'Nguyễn Thanh Huy', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Hoàng Quang Huy', 'NN0002', N'Ngô Văn Bình', 'NN0004', 'hs008@gmail.com')
INSERT INTO HOCSINH VALUES('HS0009', N'Trần Phước Lập', '0', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Võ Quốc Đạt', 'NN0005', N'Phạm Văn Bảo', 'NN0002', 'hs009@gmail.com')
INSERT INTO HOCSINH VALUES('HS0010', N'Trương Thị Nga', '1', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Nguyễn Bảo Ngọc', 'NN0003', N'Trần Thanh Mai', 'NN0001', 'hs010@gmail.com')
INSERT INTO HOCSINH VALUES('HS0011', N'Nguyễn Thị Nga', '1', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Vũ Văn Kiên', 'NN0005', N'Lê Văn Sơn', 'NN0005', 'hs011@gmail.com')
INSERT INTO HOCSINH VALUES('HS0012', N'Trần Thị Hồng Nghi', '1', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Trịnh Minh Quân', 'NN0002', N'Phạm Thanh Vân', 'NN0004', 'hs012@gmail.com')
INSERT INTO HOCSINH VALUES('HS0013', N'Huỳnh Thị Mỹ Ngọc', '1', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Lê Quốc Đạt', 'NN0005', N'Hoàng Ngọc Huy', 'NN0002', 'hs013@gmail.com')
INSERT INTO HOCSINH VALUES('HS0014', N'Trần Thị My Nhân', '1', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Nguyễn Văn Khoa', 'NN0003', N'Trịnh Thị Thu', 'NN0001', 'hs014@gmail.com')
INSERT INTO HOCSINH VALUES('HS0015', N'Trương Thị Ngoc Nhung', '1', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Lê Hữu Phước', 'NN0005', N'Vũ Thị Hạnh', 'NN0005', 'hs015@gmail.com')
INSERT INTO HOCSINH VALUES('HS0016', N'Huỳnh Quốc Phuong', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Ngô Hoàng Phúc', 'NN0002', N'Phan Văn Tuấn', 'NN0004', 'hs016@gmail.com')
INSERT INTO HOCSINH VALUES('HS0017', N'Lý Ngọc Phương', '1', '01/02/2005', N'Long Xuyên', 'DT0001', 'TG0005', N'Trần Hoàng Quân', 'NN0005', N'Nguyễn Hữu Bảo', 'NN0002', 'hs017@gmail.com')
INSERT INTO HOCSINH VALUES('HS0018', N'Nguyễn Thị Phương', '1', '01/02/2005', N'Bến Tre', 'DT0001', 'TG0002', N'Vũ Thanh Hùng', 'NN0003', N'Lê Thị Lan', 'NN0001', 'hs018@gmail.com')
INSERT INTO HOCSINH VALUES('HS0019', N'Nguyễn Phú Quốc', '0', '04/15/2005', N'Chợ Mới', 'DT0001', 'TG0004', N'Trần Ngọc Hà', 'NN0005', N'Nguyễn Văn Minh', 'NN0005', 'hs019@gmail.com')
INSERT INTO HOCSINH VALUES('HS0020', N'Võ Thiên Quốc', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Hoàng Văn Hiếu', 'NN0002', N'Trịnh Ngọc Mai', 'NN0004', 'hs020@gmail.com')
INSERT INTO HOCSINH VALUES('HS0021', N'Trần Văn Rang', '0', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Phạm Ngọc Tân', 'NN0005', N'Vũ Thanh Bình', 'NN0002', 'hs021@gmail.com')
INSERT INTO HOCSINH VALUES('HS0022', N'Võ Hưu Tanh', '0', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Lê Quốc Bảo', 'NN0003', N'Trịnh Ngọc Quỳnh', 'NN0001', 'hs022@gmail.com')
INSERT INTO HOCSINH VALUES('HS0023', N'Lê Minh Tâm', '0', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Trần Văn Khải', 'NN0005', N'Phạm Văn Sơn', 'NN0005', 'hs023@gmail.com')
INSERT INTO HOCSINH VALUES('HS0024', N'Nguyễn Đức Tâm', '0', '01/02/2003', N'Đồng Tháp', 'DT0001', 'TG0003', N'Nguyễn Văn Bình', 'NN0002', N'Hoàng Minh Khang', 'NN0004', 'hs024@gmail.com')
INSERT INTO HOCSINH VALUES('HS0025', N'Nguyễn Thanh Tâm', '0', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Lê Hoàng Phúc', 'NN0005', N'Ngô Văn Quang', 'NN0002', 'hs025@gmail.com')
INSERT INTO HOCSINH VALUES('HS0026', N'Trần Ngọc Minh Tân', '0', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Trần Thị Bích Ngọc', 'NN0003', N'Lê Minh Anh', 'NN0001', 'hs026@gmail.com')
INSERT INTO HOCSINH VALUES('HS0027', N'Dương Kim Thanh', '1', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Nguyễn Thị Lan', 'NN0005', N'Trần Văn Hùng', 'NN0005', 'hs027@gmail.com')
INSERT INTO HOCSINH VALUES('HS0028', N'Vang Si Thanh', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Phạm Văn Khải', 'NN0002', N'Lê Thị Hồng', 'NN0004', 'hs028@gmail.com')
INSERT INTO HOCSINH VALUES('HS0029', N'Đỗ Thị Bích Thảo', '1', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Nguyễn Văn Bình', 'NN0005', N'Phan Minh Quang', 'NN0002', 'hs029@gmail.com')
INSERT INTO HOCSINH VALUES('HS0030', N'Hồ Minh Thiên', '0', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Trần Thanh Tú', 'NN0003', N'Võ Minh Tân', 'NN0001', 'hs030@gmail.com')
INSERT INTO HOCSINH VALUES('HS0031', N'Nguyễn Thị Anh Thư', '1', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Nguyễn Quốc Dũng', 'NN0005', N'Phạm Thị Phương', 'NN0005', 'hs031@gmail.com')
INSERT INTO HOCSINH VALUES('HS0032', N'Phạm Nguyễn B.Trinh', '1', '01/02/2003', N'Đồng Tháp', 'DT0001', 'TG0003', N'Lê Thị Hoài', 'NN0002', N'Nguyễn Văn Đức', 'NN0004', 'hs032@gmail.com')
INSERT INTO HOCSINH VALUES('HS0033', N'Võ Ngọc Trinh', '1', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Trần Văn Nam', 'NN0005', N'Trần Thanh Hải', 'NN0002', 'hs033@gmail.com')
INSERT INTO HOCSINH VALUES('HS0034', N'Nguyễn Huỳnh Minh Trí', '0', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Trần Văn Tùng', 'NN0003', N'Lê Thị Ngọc', 'NN0001', 'hs034@gmail.com')
INSERT INTO HOCSINH VALUES('HS0035', N'Đỗ Xuân Trinh', '0', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Trần Hồng Quân', 'NN0005', N'Lê Thị Hương', 'NN0005', 'hs035@gmail.com')
INSERT INTO HOCSINH VALUES('HS0036', N'Nguyễn Hiếu Trung', '0', '01/02/2003', N'Đồng Tháp', 'DT0001', 'TG0003', N'Vũ Hoàng Duy', 'NN0002', N'Trần Thị Nguyệt', 'NN0004', 'hs036@gmail.com')
INSERT INTO HOCSINH VALUES('HS0037', N'Nguyễn Thanh Trung', '0', '01/02/2004', N'Long Xuyên', 'DT0001', 'TG0005', N'Nguyễn Hoàng Minh', 'NN0005', N'Trần Ngọc Bích', 'NN0002', 'hs037@gmail.com')
INSERT INTO HOCSINH VALUES('HS0038', N'Trần Thanh Trúc', '1', '01/02/2004', N'Bến Tre', 'DT0001', 'TG0002', N'Võ Minh Tú', 'NN0003', N'Trần Văn Hùng', 'NN0001', 'hs038@gmail.com')
INSERT INTO HOCSINH VALUES('HS0039', N'Cao Minh Tuấn', '0', '04/15/2004', N'Chợ Mới', 'DT0001', 'TG0004', N'Trần Thị Kim Anh', 'NN0005', N'Trần Văn Tú', 'NN0005', 'hs039@gmail.com')
INSERT INTO HOCSINH VALUES('HS0040', N'Nguyễn Hoang Tuấn', '0', '01/02/2004', N'Đồng Tháp', 'DT0001', 'TG0003', N'Trần Thị Minh', 'NN0002', N'Võ Văn Hoàng', 'NN0004', 'hs040@gmail.com')
INSERT INTO HOCSINH VALUES('HS0041', N'Trương Minh Tuyên', '0', '01/02/2003', N'Long Xuyên', 'DT0001', 'TG0005', N'Nguyễn Văn Toàn', 'NN0005', N'Nguyễn Minh Triết', 'NN0002', 'hs041@gmail.com')
INSERT INTO HOCSINH VALUES('HS0042', N'Lê Thanh Tung', '0', '01/02/2003', N'Bến Tre', 'DT0001', 'TG0002', N'Trần Minh Tuấn', 'NN0003', N'Phạm Thị Thu', 'NN0001', 'hs042@gmail.com')
INSERT INTO HOCSINH VALUES('HS0043', N'Phạm Thị Bích Vi', '1', '04/15/2003', N'Chợ Mới', 'DT0001', 'TG0004', N'Trần Thị Kim Yến', 'NN0005', N'Trần Văn Thanh', 'NN0005', 'hs043@gmail.com')
INSERT INTO HOCSINH VALUES('HS0044', N'Đặng Quang Vinh', '0', '01/02/2003', N'Đồng Tháp', 'DT0001', 'TG0003', N'Trần Minh Khôi', 'NN0002', N'Nguyễn Hoàng An', 'NN0004', 'hs044@gmail.com')
INSERT INTO HOCSINH VALUES('HS0045', N'Âu Ngọc Vũ', '0', '01/02/2003', N'Long Xuyên', 'DT0001', 'TG0005', N'Trần Văn Quý', 'NN0005', N'Phạm Minh Phương', 'NN0002', 'hs045@gmail.com')
INSERT INTO HOCSINH VALUES('HS0046', N'Hồ Thanh Vũ', '0', '01/02/2002', N'Bến Tre', 'DT0001', 'TG0002', N'Vũ Hoàng Long', 'NN0003', N'Nguyễn Thị Hoa', 'NN0001', 'hs046@gmail.com')
INSERT INTO HOCSINH VALUES('HS0047', N'Phan Quốc Vương', '0', '04/15/2003', N'Chợ Mới', 'DT0001', 'TG0004', N'Nguyễn Thị Thảo', 'NN0005', N'Trần Thị Kim Anh', 'NN0005', 'hs047@gmail.com')


--===================================================================================================================================================

CREATE TABLE LOP
(
	MaLop VARCHAR(10) NOT NULL PRIMARY KEY,
	TenLop NVARCHAR(30) NOT NULL,
	MaKhoiLop VARCHAR(6) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	SiSo INT NOT NULL,
	MaGiaoVien VARCHAR(6) NOT NULL,
 
	CONSTRAINT FK_LOP_KHOILOP FOREIGN KEY(MaKhoiLop) REFERENCES KHOILOP(MaKhoiLop),
	CONSTRAINT FK_LOP_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_LOP_GIAOVIEN FOREIGN KEY(MaGiaoVien) REFERENCES GIAOVIEN(MaGiaoVien)
)

INSERT INTO LOP VALUES('LOP1012324', '10A1', 'KHOI10', 'NH2324', 35, 'GV0006')
INSERT INTO LOP VALUES('LOP1022324', '10A2', 'KHOI10', 'NH2324', 36, 'GV0005')
INSERT INTO LOP VALUES('LOP1032324', '10A3', 'KHOI10', 'NH2324', 34, 'GV0004')
INSERT INTO LOP VALUES('LOP1112324', '11A1', 'KHOI11', 'NH2324', 37, 'GV0003')
INSERT INTO LOP VALUES('LOP1122324', '11A2', 'KHOI11', 'NH2324', 38, 'GV0002')
INSERT INTO LOP VALUES('LOP1212324', '12A1', 'KHOI12', 'NH2324', 39, 'GV0001')

INSERT INTO LOP VALUES('LOP1012425', '10A1', 'KHOI10', 'NH2425', 39, 'GV0001')
INSERT INTO LOP VALUES('LOP1022425', '10A2', 'KHOI10', 'NH2425', 38, 'GV0002')
INSERT INTO LOP VALUES('LOP1032425', '10A3', 'KHOI10', 'NH2425', 35, 'GV0003')
INSERT INTO LOP VALUES('LOP1112425', '11A1', 'KHOI11', 'NH2425', 40, 'GV0004')
INSERT INTO LOP VALUES('LOP1122425', '11A2', 'KHOI11', 'NH2425', 38, 'GV0005')
INSERT INTO LOP VALUES('LOP1212425', '12A1', 'KHOI12', 'NH2425', 38, 'GV0006')

--===================================================================================================================================================

CREATE TABLE PHANLOP
(
	MaNamHoc VARCHAR(6) NOT NULL,
	MaKhoiLop VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaHocSinh VARCHAR(6) NOT NULL,
	PRIMARY KEY(MaNamHoc, MaKhoiLop, MaLop, MaHocSinh),

	CONSTRAINT FK_PHANLOP_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_PHANLOP_KHOI FOREIGN KEY(MaKhoiLop) REFERENCES KHOILOP(MaKhoiLop),
	CONSTRAINT FK_PHANLOP_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_PHANLOP_HOCSINH FOREIGN KEY(MaHocSinh) REFERENCES HOCSINH(MaHocSinh)
)

INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0001')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0002')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0003')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0004')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0005')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0006')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0007')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0008')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0009')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1012324', 'HS0010')

INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0011')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0012')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0013')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0014')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0015')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0016')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0017')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0018')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0019')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI10', 'LOP1022324', 'HS0020')

INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0021')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0022')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0023')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0024')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0025')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0026')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0027')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0028')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0029')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1112324', 'HS0030')

INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0031')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0032')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0033')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0034')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0035')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0036')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0037')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0038')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0039')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI11', 'LOP1122324', 'HS0040')

INSERT INTO PHANLOP VALUES('NH2324', 'KHOI12', 'LOP1212324', 'HS0041')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI12', 'LOP1212324', 'HS0042')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI12', 'LOP1212324', 'HS0043')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI12', 'LOP1212324', 'HS0044')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI12', 'LOP1212324', 'HS0045')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI12', 'LOP1212324', 'HS0046')
INSERT INTO PHANLOP VALUES('NH2324', 'KHOI12', 'LOP1212324', 'HS0047')

--===================================================================================================================================================

CREATE TABLE PHANCONG
(
	STT INT IDENTITY PRIMARY KEY,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	MaGiaoVien VARCHAR(6) NOT NULL,
 
	CONSTRAINT FK_PHANCONG_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_PHANCONG_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_PHANCONG_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT FK_PHANCONG_GIAOVIEN FOREIGN KEY(MaGiaoVien) REFERENCES GIAOVIEN(MaGiaoVien)
)

INSERT INTO PHANCONG VALUES('NH2324', 'LOP1012324', 'MH0001', 'GV0001')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1012324', 'MH0002', 'GV0002')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1012324', 'MH0003', 'GV0003')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1012324', 'MH0004', 'GV0004')

INSERT INTO PHANCONG VALUES('NH2324', 'LOP1022324', 'MH0001', 'GV0001')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1022324', 'MH0002', 'GV0002')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1022324', 'MH0003', 'GV0003')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1022324', 'MH0004', 'GV0004')

INSERT INTO PHANCONG VALUES('NH2324', 'LOP1112324', 'MH0001', 'GV0001')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1112324', 'MH0002', 'GV0002')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1112324', 'MH0003', 'GV0003')
INSERT INTO PHANCONG VALUES('NH2324', 'LOP1112324', 'MH0004', 'GV0004')

--===================================================================================================================================================

CREATE TABLE LOAIDIEM
(
	MaLoai VARCHAR(6) NOT NULL PRIMARY KEY,
	TenLoai NVARCHAR(30) NOT NULL,
	HeSo INT NOT NULL
)

INSERT INTO LOAIDIEM VALUES('LD0001', N'Kiểm tra miệng', 1)
INSERT INTO LOAIDIEM VALUES('LD0002', N'Kiểm tra 15 phút', 1)
INSERT INTO LOAIDIEM VALUES('LD0003', N'Kiểm tra 1 tiết', 2)
INSERT INTO LOAIDIEM VALUES('LD0004', N'Thi học kỳ', 1)

--===================================================================================================================================================

CREATE TABLE DIEM
(
	STT INT IDENTITY PRIMARY KEY,
	MaHocSinh VARCHAR(6) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	MaHocKy VARCHAR(3) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaLoai VARCHAR(6) NOT NULL,
	Diem FLOAT NOT NULL,
 
	CONSTRAINT FK_DIEM_HOCSINH FOREIGN KEY(MaHocSinh) REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT FK_DIEM_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT FK_DIEM_HOCKY FOREIGN KEY(MaHocKy) REFERENCES HOCKY(MaHocKy),
	CONSTRAINT FK_DIEM_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_DIEM_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_DIEM_LOAIDIEM FOREIGN KEY(MaLoai) REFERENCES LOAIDIEM(MaLoai),
	CONSTRAINT CK_DIEM CHECK(Diem BETWEEN 0 AND 10)
)

--===================================================================================================================================================

CREATE TABLE KQ_HOCSINH_MONHOC
(
	MaHocSinh VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	MaHocKy VARCHAR(3) NOT NULL,
	DiemMiengTB FLOAT NOT NULL,
	Diem15PhutTB FLOAT NOT NULL,
	Diem45PhutTB FLOAT NOT NULL,
	DiemThi FLOAT NOT NULL,
	DiemTBHK FLOAT NOT NULL,
	PRIMARY KEY(MaHocSinh, MaLop, MaNamHoc, MaMonHoc, MaHocKy),

	CONSTRAINT FK_KQHSMH_HOCSINH FOREIGN KEY(MaHocSinh) REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT FK_KQHSMH_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_KQHSMH_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_KQHSMH_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT FK_KQHSMH_HOCKY FOREIGN KEY(MaHocKy) REFERENCES HOCKY(MaHocKy),

	CONSTRAINT CK_DiemMiengTB CHECK(DiemMiengTB BETWEEN 0 AND 10),
	CONSTRAINT CK_Diem15PhutTB CHECK(Diem15PhutTB BETWEEN 0 AND 10),
	CONSTRAINT CK_Diem45PhutTB CHECK(Diem45PhutTB BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemThi CHECK(DiemThi BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemTBHK CHECK(DiemTBHK BETWEEN 0 AND 10),
)

--===================================================================================================================================================

CREATE TABLE KQ_HOCSINH_CANAM
(
	MaHocSinh VARCHAR(6) NOT NULL,
	MaLop VARCHAR(10) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaHocLuc VARCHAR(6) NOT NULL,
	MaHanhKiem VARCHAR(6) NOT NULL,
	MaKetQua VARCHAR(6) NOT NULL,
	DiemTBHK1 FLOAT NOT NULL,
	DiemTBHK2 FLOAT NOT NULL,
	DiemTBCN FLOAT NOT NULL, 
	PRIMARY KEY(MaHocSinh, MaLop, MaNamHoc),
 
	CONSTRAINT FK_KQHSCN_HOCSINH FOREIGN KEY(MaHocSinh) REFERENCES HOCSINH(MaHocSinh),
	CONSTRAINT FK_KQHSCN_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_KQHSCN_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_KQHSCN_HOCLUC FOREIGN KEY(MaHocLuc) REFERENCES HOCLUC(MaHocLuc),
	CONSTRAINT FK_KQHSCN_HANHKIEM FOREIGN KEY(MaHanhKiem) REFERENCES HANHKIEM(MaHanhKiem),
	CONSTRAINT FK_KQHSCN_KETQUA FOREIGN KEY(MaKetQua) REFERENCES KETQUA(MaKetQua),

	CONSTRAINT CK_DiemTBHK1 CHECK(DiemTBHK1 BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemTBHK2 CHECK(DiemTBHK2 BETWEEN 0 AND 10),
	CONSTRAINT CK_DiemTBCN CHECK(DiemTBCN BETWEEN 0 AND 10),
)

--===================================================================================================================================================

CREATE TABLE KQ_LOPHOC_MONHOC
(
	MaLop VARCHAR(10) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaMonHoc VARCHAR(6) NOT NULL,
	MaHocKy VARCHAR(3) NOT NULL,
	SoLuongDat INT NOT NULL,
	TiLe FLOAT NOT NULL,
	PRIMARY KEY(MaLop, MaNamHoc, MaMonHoc, MaHocKy),

	CONSTRAINT FK_KQLHMH_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_KQLHMH_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_KQLHMH_MONHOC FOREIGN KEY(MaMonHoc) REFERENCES MONHOC(MaMonHoc),
	CONSTRAINT FK_KQLHMH_HOCKY FOREIGN KEY(MaHocKy) REFERENCES HOCKY(MaHocKy),
)

--===================================================================================================================================================

CREATE TABLE KQ_LOPHOC_HOCKY
(
	MaLop VARCHAR(10) NOT NULL,
	MaNamHoc VARCHAR(6) NOT NULL,
	MaHocKy VARCHAR(3) NOT NULL,
	SoLuongDat INT NOT NULL,
	TiLe FLOAT NOT NULL,
	PRIMARY KEY(MaLop, MaNamHoc, MaHocKy),

	CONSTRAINT FK_KQLHHK_LOP FOREIGN KEY(MaLop) REFERENCES LOP(MaLop),
	CONSTRAINT FK_KQLHHK_NAMHOC FOREIGN KEY(MaNamHoc) REFERENCES NAMHOC(MaNamHoc),
	CONSTRAINT FK_KQLHHK_HOCKY FOREIGN KEY(MaHocKy) REFERENCES HOCKY(MaHocKy),
)

--===================================================================================================================================================

CREATE TABLE QUYDINH
(
	TuoiCanDuoi INT NOT NULL,
	TuoiCanTren INT NOT NULL,
	SiSoCanDuoi INT NOT NULL,
	SiSoCanTren INT NOT NULL,
	DiemDat INT NOT NULL,
)

INSERT INTO QUYDINH VALUES(15, 20, 30, 40, 5)

--========================================================= Account Login ==========================================================================================

GO

CREATE TRIGGER ThemNguoiDung ON NguoiDung AFTER INSERT, UPDATE
AS
BEGIN
	UPDATE NguoiDung SET MatKhau = HASHBYTES('SHA2_512', I.TenDangNhap + '@!?#?' + I.MatKhau)
	FROM NguoiDung ND INNER JOIN Inserted I ON I.MaNguoiDung = ND.MaNguoiDung
END
GO

INSERT INTO NGUOIDUNG VALUES('ND0001', 'LND001', N'23240101-Hoàng Thanh', 'hoangthanh', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0002', 'LND002', N'23240202-Minh Khuê', 'minhkhue', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0003', 'LND003', N'23240303-Thái Sơn', 'thaison', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0004', 'LND002', N'23240204-Tiến Nhật', 'tiennhat', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0005', 'LND003', N'23240305-Thảo Nhi', 'thaonhi', '123456')
INSERT INTO NGUOIDUNG VALUES('ND0006', 'LND002', N'23240206-Minh Như', 'minhnhu', '123456')



--======================================================================Procedure=============================================================================
GO

CREATE PROCEDURE ThemGiaoVien
	@maGiaoVien VARCHAR(6), 
	@tenGiaoVien NVARCHAR(30), 
	@diaChi NVARCHAR(50), 
	@dienThoai NVARCHAR(15), 
	@chuyenMon NVARCHAR(6)
AS
BEGIN
	INSERT INTO GiaoVien (MaGiaoVien, TenGiaoVien, DiaChi, DienThoai, MaMonHoc) 
	VALUES (@maGiaoVien, @tenGiaoVien, @diaChi, @dienThoai, @chuyenMon)
END
GO

--===================================================================================================================================================

CREATE PROCEDURE LayDanhSachHocSinh
	@maNamHoc VARCHAR(6),
	@maLop VARCHAR(10),
	@tatCaCot BIT
AS
BEGIN
	IF @tatCaCot = 1
		SELECT PL.MaHocSinh, HS.* FROM HOCSINH HS 
		INNER JOIN PHANLOP PL ON HS.MaHocSinh = PL.MaHocSinh 
		INNER JOIN LOP L ON L.MaLop = PL.MaLop 
		WHERE PL.MaNamHoc = @maNamHoc AND PL.MaLop = @maLop
	ELSE
		SELECT PL.MaHocSinh, HS.HoTen FROM HOCSINH HS 
		INNER JOIN PHANLOP PL ON HS.MaHocSinh = PL.MaHocSinh 
		INNER JOIN LOP L ON L.MaLop = PL.MaLop 
		WHERE PL.MaNamHoc = @maNamHoc AND PL.MaLop = @maLop
END
GO

CREATE PROCEDURE LayDanhSachHocSinhTheoNamHoc @maNamHoc VARCHAR(6)
AS
BEGIN
	SELECT PL.MaHocSinh, HS.HoTen, LOP.TenLop FROM HOCSINH HS 
	INNER JOIN PHANLOP PL ON HS.MaHocSinh = PL.MaHocSinh 
	INNER JOIN LOP ON LOP.MaLop = PL.MaLop 
	WHERE PL.MaNamHoc = @maNamHoc
END
GO

CREATE PROCEDURE LayDanhSachHocSinhTheoLop
	@maNamHoc VARCHAR(6),
	@maKhoiLop VARCHAR(10),
	@maLop VARCHAR(10)
AS
BEGIN
	SELECT PL.MaHocSinh, HS.HoTen, LOP.TenLop FROM HOCSINH HS 
	INNER JOIN PHANLOP PL ON HS.MaHocSinh = PL.MaHocSinh 
	INNER JOIN KHOILOP KL ON KL.MaKhoiLop = PL.MaKhoiLop 
	INNER JOIN LOP ON LOP.MaLop = PL.MaLop 
	WHERE PL.MaNamHoc = @maNamHoc AND PL.MaKhoiLop = @maKhoiLop AND PL.MaLop = @maLop 
END
GO

CREATE PROCEDURE ThemHocSinh
	@maHocSinh VARCHAR(6), 
	@hoTen NVARCHAR(30), 
	@gioiTinh BIT, 
	@ngaySinh DATETIME, 
	@diaChi NVARCHAR(50), 
	@maDanToc VARCHAR(6), 
	@maTonGiao VARCHAR(6), 
	@hoTenCha NVARCHAR(30), 
	@maNgheCha VARCHAR(6), 
	@hoTenMe NVARCHAR(30), 
	@maNgheMe VARCHAR(6), 
	@email NVARCHAR(50)
AS
BEGIN
	INSERT INTO HOCSINH (MaHocSinh, HoTen, GioiTinh, NgaySinh, DiaChi, MaDanToc, MaTonGiao, HoTenCha, MaNgheCha, HoTenMe, MaNgheMe, Email) 
	VALUES (@maHocSinh, @hoTen, @gioiTinh, @ngaySinh, @diaChi, @maDanToc, @maTonGiao, @hoTenCha, @maNgheCha, @hoTenMe, @maNgheMe, @email)
END
GO

--===================================================================================================================================================

CREATE PROCEDURE LuuHocSinhVaoBangPhanLop
	 @maNamHoc VARCHAR(6),
	 @maKhoiLop VARCHAR(6), 
	 @maLop VARCHAR(10), 
	 @maHocSinh VARCHAR(6)
AS
BEGIN
	INSERT INTO PHANLOP VALUES(@maNamHoc, @maKhoiLop, @maLop, @maHocSinh)
END
GO

CREATE PROCEDURE XoaHocSinhKhoiBangPhanLop
	 @maNamHoc VARCHAR(6),
	 @maKhoiLop VARCHAR(6), 
	 @maLop VARCHAR(10), 
	 @maHocSinh VARCHAR(6)
AS
BEGIN
	DELETE FROM PHANLOP 
	WHERE MaNamHoc = @maNamHoc 
	  AND MaKhoiLop = @maKhoiLop 
	  AND MaLop = @maLop 
	  AND MaHocSinh = @maHocSinh
END
GO

--===================================================================================================================================================

CREATE PROCEDURE LayDanhSachDiem
	@maHocSinh VARCHAR(6), 
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@maNamHoc VARCHAR(6), 
	@maLop VARCHAR(10)
AS
BEGIN
	SELECT * FROM DIEM, LOP, HOCSINH, MONHOC, LOAIDIEM
	WHERE DIEM.MaHocSinh = HOCSINH.MaHocSinh 
	  AND DIEM.MaMonHoc = MONHOC.MaMonHoc 
	  AND DIEM.MaLoai = LOAIDIEM.MaLoai 
	  AND DIEM.MaLop = LOP.MaLop 
	  AND HOCSINH.MaHocSinh = @maHocSinh
	  AND MONHOC.MaMonHoc = @maMonHoc
	  AND DIEM.MaHocKy = @maHocKy
	  AND DIEM.MaNamHoc = @maNamHoc
	  AND LOP.MaLop = @maLop
END
GO

CREATE PROCEDURE LayDanhSachDiemHocSinh
	@maHocSinh VARCHAR(6), 
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@maNamHoc VARCHAR(6), 
	@maLop VARCHAR(10)
AS
BEGIN
	SELECT * FROM DIEM, LOAIDIEM 
	WHERE DIEM.MaLoai = LOAIDIEM.MaLoai 
	  AND DIEM.MaHocSinh = @maHocSinh
	  AND DIEM.MaMonHoc = @maMonHoc
	  AND DIEM.MaHocKy = @maHocKy 
	  AND DIEM.MaNamHoc = @maNamHoc
	  AND DIEM.MaLop = @maLop
END
GO

CREATE PROCEDURE ThemDiem
	@maHocSinh VARCHAR(6), 
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@maNamHoc VARCHAR(6), 
	@maLop VARCHAR(10), 
	@maLoaiDiem VARCHAR(6),
	@diemSo FLOAT
AS
BEGIN
	INSERT INTO DIEM (MaHocSinh, MaMonHoc, MaHocKy, MaNamHoc, MaLop, MaLoai, Diem)
	VALUES (@maHocSinh, @maMonHoc, @maHocKy, @maNamHoc, @maLop, @maLoaiDiem, @diemSo)
END
GO

CREATE PROCEDURE XoaDiem @STT INT
AS
BEGIN
	DELETE FROM DIEM WHERE STT = @stt
END
GO

--===================================================================================================================================================

CREATE PROCEDURE ThemLop
	@maLop VARCHAR(10), 
	@tenLop NVARCHAR(30), 
	@maKhoiLop VARCHAR(6), 
	@maNamHoc VARCHAR(6), 
	@siSo INT, 
	@maGiaoVien VARCHAR(6)
AS
BEGIN
	INSERT INTO LOP (MaLop, TenLop, MaKhoiLop, MaNamHoc, SiSo, MaGiaoVien)
	VALUES (@maLop, @tenLop, @maKhoiLop, @maNamHoc, @siSo, @maGiaoVien)
END
GO

--===================================================================================================================================================

CREATE PROCEDURE LayDanhSachMonHocTheoNam @maNamHoc VARCHAR(6)
AS
BEGIN
	SELECT DISTINCT MH.MaMonHoc, MH.TenMonHoc, MH.HeSo FROM MONHOC MH, PHANCONG PC 
	WHERE MH.MaMonHoc = PC.MaMonHoc AND PC.MaNamHoc = @maNamHoc
END
GO

CREATE PROCEDURE LayDanhSachMonHocTheoLop
	@maNamHoc VARCHAR(6),
	@maLop VARCHAR(10)
AS
BEGIN
	SELECT MH.MaMonHoc, MH.TenMonHoc, MH.HeSo FROM MONHOC MH, PHANCONG PC 
	WHERE MH.MaMonHoc = PC.MaMonHoc AND PC.MaNamHoc = @maNamHoc AND PC.MaLop = @maLop
END
GO

--===================================================================================================================================================

CREATE PROCEDURE ThemPhanCong
	@maNamHoc VARCHAR(6), 
	@maLop VARCHAR(10), 
	@maMonHoc VARCHAR(6), 
	@maGiaoVien VARCHAR(6)
AS
BEGIN
	INSERT INTO PHANCONG (MaNamHoc, MaLop, MaMonHoc, MaGiaoVien)
	VALUES (@maNamHoc, @maLop, @maMonHoc, @maGiaoVien)
END
GO

--===================================================================================================================================================

CREATE PROCEDURE ReportKQHSMonHoc
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3)
AS
BEGIN
	SELECT * FROM HOCSINH HS 
	INNER JOIN KQ_HOCSINH_MONHOC KQ ON KQ.MaHocSinh = HS.MaHocSinh 
	INNER JOIN LOP ON KQ.MaLop = LOP.MaLop 
	INNER JOIN NAMHOC NH ON KQ.MaNamHoc = NH.MaNamHoc 
	INNER JOIN MONHOC MH ON KQ.MaMonHoc = MH.MaMonHoc 
	INNER JOIN HOCKY HK ON KQ.MaHocKy = HK.MaHocKy 
	WHERE KQ.MaLop = @maLop
	  AND KQ.MaNamHoc = @maNamHoc
	  AND KQ.MaMonHoc = @maMonHoc
	  AND KQ.MaHocKy = @maHocKy
END 
GO

CREATE PROCEDURE ThemKQHSMonHoc
	@maHocSinh VARCHAR(6),
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@diemMiengTB FLOAT,
	@diem15PhutTB FLOAT,
	@diem45PhutTB FLOAT,
	@diemThi FLOAT,
	@diemTBHK FLOAT
AS
BEGIN
	INSERT INTO KQ_HOCSINH_MONHOC (MaHocSinh, MaLop, MaNamHoc, MaMonHoc, MaHocKy, DiemMiengTB, Diem15PhutTB, Diem45PhutTB, DiemThi, DiemTBHK)
	VALUES (@maHocSinh, @maLop, @maNamHoc, @maMonHoc, @maHocKy, @diemMiengTB, @diem15PhutTB, @diem45PhutTB, @diemThi, @diemTBHK)
END
GO

CREATE PROCEDURE XoaKQHSMonHoc
	@maHocSinh VARCHAR(6),
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3)
AS
BEGIN
	DELETE FROM KQ_HOCSINH_MONHOC 
	WHERE MaHocSinh = @maHocSinh 
	  AND MaLop = @maLop 
	  AND MaNamHoc = @maNamHoc
	  AND MaMonHoc = @maMonHoc 
	  AND MaHocKy = @maHocKy 
END 
GO

--===================================================================================================================================================

CREATE PROCEDURE ReportKQHSCaNam
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6)
AS
BEGIN
	SELECT * FROM HOCSINH HS 
	INNER JOIN KQ_HOCSINH_CANAM KQ ON KQ.MaHocSinh = HS.MaHocSinh 
	INNER JOIN LOP ON KQ.MaLop = LOP.MaLop 
	INNER JOIN NAMHOC NH ON KQ.MaNamHoc = NH.MaNamHoc 
	INNER JOIN HOCLUC HL ON KQ.MaHocLuc = HL.MaHocLuc
	INNER JOIN HANHKIEM HK ON KQ.MaHanhKiem = HK.MaHanhKiem 
	INNER JOIN KETQUA KQUA ON KQ.MaKetQua = KQUA.MaKetQua
	WHERE KQ.MaLop = @maLop AND KQ.MaNamHoc = @maNamHoc
END 
GO

CREATE PROCEDURE ThemKQHSCaNam
	@maHocSinh VARCHAR(6), 
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6), 
	@maHocLuc VARCHAR(6), 
	@maHanhKiem VARCHAR(6), 
	@maKetQua VARCHAR(6), 
	@diemTBHK1 FLOAT, 
	@diemTBHK2 FLOAT, 
	@diemTBCN FLOAT
AS
BEGIN
	INSERT INTO KQ_HOCSINH_CANAM (MaHocSinh, MaLop, MaNamHoc, MaHocLuc, MaHanhKiem, MaKetQua, DiemTBHK1, DiemTBHK2, DiemTBCN)
	VALUES (@maHocSinh, @maLop, @maNamHoc, @maHocLuc, @maHanhKiem, @maKetQua, @diemTBHK1, @diemTBHK2, @diemTBCN)
END
GO

CREATE PROCEDURE XoaKQHSCaNam
	@maHocSinh VARCHAR(6),
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6)
AS
BEGIN
	DELETE FROM KQ_HOCSINH_CANAM 
	WHERE MaHocSinh = @maHocSinh 
	  AND MaLop = @maLop 
	  AND MaNamHoc = @maNamHoc
END 
GO

--===================================================================================================================================================

CREATE PROCEDURE ReportKQLHMonHoc
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3)
AS
BEGIN
	SELECT * FROM LOP 
	INNER JOIN KQ_LOPHOC_MONHOC KQ ON KQ.MaLop = LOP.MaLop 
	INNER JOIN NAMHOC NH ON KQ.MaNamHoc = NH.MaNamHoc 
	INNER JOIN MONHOC MH ON KQ.MaMonHoc = MH.MaMonHoc 
	INNER JOIN HOCKY HK ON KQ.MaHocKy = HK.MaHocKy 
	WHERE KQ.MaNamHoc = @maNamHoc
	  AND KQ.MaMonHoc = @maMonHoc
	  AND KQ.MaHocKy = @maHocKy
END 
GO

CREATE PROCEDURE ThemKQLHMonHoc
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3), 
	@soLuongDat INT,
	@tiLe FLOAT
AS
BEGIN
	INSERT INTO KQ_LOPHOC_MONHOC (MaLop, MaNamHoc, MaMonHoc, MaHocKy, SoLuongDat, TiLe)
	VALUES (@maLop, @maNamHoc, @maMonHoc, @maHocKy, @soLuongDat, @tiLe)
END
GO

CREATE PROCEDURE XoaKQLHMonHoc
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maMonHoc VARCHAR(6), 
	@maHocKy VARCHAR(3)
AS
BEGIN
	DELETE FROM KQ_LOPHOC_MONHOC 
	WHERE MaLop = @maLop 
	  AND MaNamHoc = @maNamHoc
	  AND MaMonHoc = @maMonHoc 
	  AND MaHocKy = @maHocKy 
END 
GO

--===================================================================================================================================================

CREATE PROCEDURE ReportKQLHHocKy
	@maNamHoc VARCHAR(6),
	@maHocKy VARCHAR(3)
AS
BEGIN
	SELECT * FROM LOP 
	INNER JOIN KQ_LOPHOC_HOCKY KQ ON KQ.MaLop = LOP.MaLop 
	INNER JOIN NAMHOC NH ON KQ.MaNamHoc = NH.MaNamHoc 
	INNER JOIN HOCKY HK ON KQ.MaHocKy = HK.MaHocKy 
	WHERE KQ.MaNamHoc = @maNamHoc
	  AND KQ.MaHocKy = @maHocKy
END 
GO

CREATE PROCEDURE ThemKQLHHocKy
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maHocKy VARCHAR(3), 
	@soLuongDat INT,
	@tiLe FLOAT
AS
BEGIN
	INSERT INTO KQ_LOPHOC_HOCKY (MaLop, MaNamHoc, MaHocKy, SoLuongDat, TiLe)
	VALUES (@maLop, @maNamHoc, @maHocKy, @soLuongDat, @tiLe)
END
GO

CREATE PROCEDURE XoaKQLHHocKy
	@maLop VARCHAR(10), 
	@maNamHoc VARCHAR(6),
	@maHocKy VARCHAR(3)
AS
BEGIN
	DELETE FROM KQ_LOPHOC_HOCKY 
	WHERE MaLop = @maLop 
	  AND MaNamHoc = @maNamHoc
	  AND MaHocKy = @maHocKy 
END 
GO

--===================================================================================================================================================

CREATE PROCEDURE CapNhatQuyDinhDoTuoi
	@tuoiCanDuoi INT,
	@tuoiCanTren INT 
AS
BEGIN
	UPDATE QUYDINH SET TuoiCanDuoi = @tuoiCanDuoi, TuoiCanTren = @tuoiCanTren
END
GO

CREATE PROCEDURE CapNhatQuyDinhSiSo
	@siSoCanDuoi INT,
	@siSoCanTren INT 
AS
BEGIN
	UPDATE QUYDINH SET SiSoCanDuoi = @siSoCanDuoi, SiSoCanTren = @siSoCanTren
END
GO

CREATE PROCEDURE CapNhatQuyDinhDiemDat @diemDat INT 
AS
BEGIN
	UPDATE QUYDINH SET DiemDat = @diemDat
END
GO

--===================================================================================================================================================

CREATE PROCEDURE DangNhap
	@tenDangNhap NVARCHAR(30),
	@matKhau VARCHAR(64)
AS
BEGIN
	SELECT * FROM NGUOIDUNG 
	WHERE TenDangNhap = @tendangnhap
	  AND MatKhau = HASHBYTES('SHA2_512', @tenDangNhap + '@!?#?' + @matKhau)
END
GO

CREATE PROCEDURE DoiMatKhau
	@tenDangNhap NVARCHAR(30),
	@matKhau VARCHAR(64) 
AS
BEGIN
	UPDATE NGUOIDUNG SET MatKhau = @matkhau WHERE TenDangNhap = @tendangnhap
END
GO

