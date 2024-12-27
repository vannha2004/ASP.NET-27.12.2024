use master
go
if DB_ID('QLNV2_New') is not null
    drop database QLNV2_New
go
create database QLNV2_New
go
use QLNV2_New
go

-- Tạo bảng Phong
create table Phong(
    Maphong int primary key identity,
    Tenphong nvarchar(25)
)
insert into Phong values('Hanh chinh')
insert into Phong values('Ke toan')
insert into Phong values('Tong hop')
go

-- Tạo bảng NhanVien (thêm cột Ngaysinh)
create table NhanVien(
    Manv int primary key identity,
    Hoten nvarchar(30),
    Tuoi int,
    Diachi nvarchar(30),
    Luong int,
    Ngaysinh date, -- Thêm cột Ngaysinh
    Maphong int foreign key references Phong(Maphong)
)
go

-- Tạo bảng Taikhoan
create table Taikhoan(
    id int primary key identity,
    tendn nchar(20),
    matkhau nvarchar(20)
)
go

-- Chèn dữ liệu vào bảng NhanVien (kèm giá trị Ngaysinh)
insert into NhanVien values('Lan Anh', 32, 'Ha noi', 3500, '1992-01-15', 1)
insert into NhanVien values('Thi Huong', 30, 'Ha noi', 5000, '1994-05-20', 2)
insert into NhanVien values('Van Ha', 30, 'Hai phong', 4000, '1994-11-08', 1)
insert into NhanVien values('Hong Linh', 35, 'Thai binh', 5500, '1989-03-25', 3)
insert into NhanVien values('Van Hung', 32, 'Hai phong', 5000, '1991-07-12', 1)
insert into NhanVien values('Hai Yen', 28, 'Thai binh', 3000, '1996-10-03', 1)
insert into NhanVien values('My Ha', 26, 'Hai phong', 3000, '1998-08-17', 2)
insert into NhanVien values('Phuong Thuy', 24, 'Hai phong', 2000, '2000-02-11', 3)
insert into NhanVien values('Do Minh Duc', 24, 'Ha noi', 2500, '2000-06-06', 2)
insert into NhanVien values('Cong Tuan', 40, 'Thai binh', 4500, '1983-09-22', 2)
go

-- Chèn dữ liệu vào bảng Taikhoan
insert into Taikhoan values('huydang','huy123')
insert into Taikhoan values('vannha','abc123')

go

-- Kiểm tra dữ liệu
select * from Phong
select * from NhanVien
select * from Taikhoan
