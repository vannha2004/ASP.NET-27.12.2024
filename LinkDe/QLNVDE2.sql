use master
go
if DB_ID('QLNV2') is not null
	drop database QLNV2
go
create database QLNV2
go
use QLNV2
go
create table Phong(
Maphong int primary key identity,
Tenphong nvarchar(25)
)
insert into Phong values('Hanh chinh')
insert into Phong values('Ke toan')
insert into Phong values('Tong hop')
go
create table NhanVien(
Manv int primary key identity,
Hoten nvarchar(30),
Tuoi int,
Diachi nvarchar(30),
Luong int,
Maphong int foreign key references Phong(Maphong))
go
create table Taikhoan(
	id int primary key identity,
	tendn nchar(20),
	matkhau nvarchar(20)
)
go
insert into NhanVien values('Lan Anh',32,'Ha noi',3500,1)
insert into NhanVien values('Thi Huong',30,'Ha noi',5000,2)
insert into NhanVien values('Van Ha',30,'Hai phong',4000,1)
insert into NhanVien values('Hong Linh',35,'Thai binh',5500,3)
insert into NhanVien values('Van Hung',32,'Hai phong',5000,1)
insert into NhanVien values('Hai Yen',28,'Thai binh',3000,1)
insert into NhanVien values('My Ha',26,'Hai phong',3000,2)
insert into NhanVien values('Phuong Thuy',24,'Hai phong',2000,3)
insert into NhanVien values('Do Minh Duc',24,'Ha noi',2500,2)
insert into NhanVien values('Cong Tuan',40,'Thai binh',4500,2)
go
insert into Taikhoan values('huydang','huy123')
go
select * from Phong
select * from NhanVien
select * from Taikhoan
