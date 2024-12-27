USE master
GO
CREATE DATABASE [QLSinhVien]
GO
USE [QLSinhVien]
GO
--Tạo bảng Phong
CREATE TABLE [dbo].[Lop](
	[Malop] [char](10) NOT NULL PRIMARY KEY,
	[Tenlop] [nvarchar](50) NOT NULL)
GO
--Tạo bảng Nhanvien
CREATE TABLE [dbo].[SinhVien](
	[MaSV] [char](10) NOT NULL PRIMARY KEY,
	[Hoten] [nvarchar](50) NULL,
	[Tuoi] int NULL,
	[Malop] [char](10) NOT NULL)
GO

--Chèn dữ liệu cho bảng Phong
Insert into Lop(Malop,Tenlop) values('A01',N'CNTT01')
Insert into Lop(Malop,Tenlop) values('A02',N'KTPM02')

--Chèn dữ liệu cho bảng NhanVien
Insert into SinhVien(MaSV,Hoten,Tuoi,Malop) values('01',N'Lê Thị Hà',18,'A01')
Insert into SinhVien(MaSV,Hoten,Tuoi,Malop) values('02',N'Trần Minh Đại',19,'A02')
Insert into SinhVien(MaSV,Hoten,Tuoi,Malop) values('03',N'Đỗ Thị Vân',18,'A02')
Insert into SinhVien(MaSV,Hoten,Tuoi,Malop) values('04',N'Ngô Văn Hà',19,'A01')
Select * From SinhVien