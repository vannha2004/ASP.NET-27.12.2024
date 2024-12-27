USE [master]
GO
--Tạo cơ sở dữ liệu
CREATE DATABASE [fShopDB]
GO
USE [fShopDB]
GO
--Tạo bảng
CREATE TABLE [dbo].[Hang](
[MaHang] [char](10) NOT NULL,
[MaNCC] [char](10) NOT NULL,
[TenHang] [nvarchar](255) NOT NULL,
[Gia] [decimal](8, 2) NULL,
[LuongCo] [decimal](8, 2) NOT NULL,
[MoTa] [nvarchar](1000) NULL,
[ChietKhau] [decimal](8, 2) NULL,
[HinhAnh] [nvarchar](100) NULL,
CONSTRAINT [PKh_Hang] PRIMARY KEY CLUSTERED
(
[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[nguoidung](
[manguoidung] [int] IDENTITY(1,1) NOT NULL,
[hoten] [nvarchar](30) NOT NULL,
[matkhau] [nvarchar](50) NOT NULL,
[email] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED
([manguoidung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
CREATE TABLE [dbo].[Nha_CC](
[MaNCC] [char](10) NOT NULL,
[TenNCC] [nvarchar](50) NOT NULL,
[DiaChi] [nvarchar](50) NULL,
[DienThoai] [char](15) NULL,
[Email] [nvarchar](50) NULL,
CONSTRAINT [PK_Nha_CC] PRIMARY KEY CLUSTERED
(
[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF,
ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
--Chèn dữ liệu cho các bảng
--Hàng
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang],[Gia],[LuongCo],[MoTa],[ChietKhau],[HinhAnh]) 
VALUES (N'H001', N'NCC01', N'TV LCD',10323.23, 122, N'Con hang', 10, N'vannha.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang],[Gia],[LuongCo],[MoTa],[ChietKhau],[HinhAnh]) 
VALUES (N'H002', N'NCC333', N'TV Samsung',943949.23, 93, N'Het hang', 13, N'vannha.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang],[Gia],[LuongCo],[MoTa],[ChietKhau],[HinhAnh]) 
VALUES (N'H003', N'NCC0121', N'Smart watch',9439.23, 921, N'Con hang', 30, N'vannha.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang],[Gia],[LuongCo],[MoTa],[ChietKhau],[HinhAnh]) 
VALUES (N'H004', N'NCC01212', N'LLGS8',5884.23, 3, N'Con hang', 29, N'vannha23111.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang],[Gia],[LuongCo],[MoTa],[ChietKhau],[HinhAnh]) 
VALUES (N'H005', N'NCC011', N'LGTX1212',17283.23, 0, N'Con hang', 10, N'vannha.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang],[Gia],[LuongCo],[MoTa],[ChietKhau],[HinhAnh]) 
VALUES (N'H006', N'NCC12', N'SUSAN 0175',4423.23, 11, N'Het hang', 11, N'vannha1.jpg')
INSERT [dbo].[Hang] ([MaHang], [MaNCC], [TenHang],[Gia],[LuongCo],[MoTa],[ChietKhau],[HinhAnh]) 
VALUES (N'H001', N'NCC01', N'TV LCD',10323.23, 212, N'Con hang', 10, N'vannha2.jpg')


--Người dùng
INSERT [dbo].[nguoidung] ([hoten], [matkhau], [email]) 
VALUES (N'Trần Thu Uyên', N'tientu1212', 'abc123@gmail.com')
INSERT [dbo].[nguoidung] ([hoten], [matkhau], [email]) 
VALUES 
(N'Trần Thu Tú', N'tien111', 'derr123@gmail.com'),
(N'Nguyễn Văn A', N'password1', 'nguyenvana@gmail.com'),
(N'Nguyễn Thị B', N'password2', 'nguyenthib@gmail.com'),
(N'Phạm Văn C', N'password3', 'phamvanc@gmail.com'),
(N'Lê Thị D', N'password4', 'lethid@gmail.com'),
(N'Trần Văn E', N'password5', 'tranvene@gmail.com'),
(N'Nguyễn Văn F', N'password6', 'nguyenvanf@gmail.com'),
(N'Phạm Thị G', N'password7', 'phamthig@gmail.com'),
(N'Lê Văn H', N'password8', 'levanh@gmail.com'),
(N'Trần Thị I', N'password9', 'tranthi@gmail.com');

--Nhà cung cấp
INSERT [dbo].[Nha_CC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai],[Email]) 
VALUES (001, N'Trần Nhã Nam', N'Hà Nội', '0938928123', 'email12@gmail.com')
INSERT [dbo].[Nha_CC] ([MaNCC], [TenNCC], [DiaChi], [DienThoai], [Email]) 
VALUES 
(011, N'Nguyễn Văn A', N'Hà Nội', '0938928123', 'nguyenvana@gmail.com'),
(002, N'Nguyễn Thị B', N'TP.HCM', '0938928124', 'nguyenthib@gmail.com'),
(003, N'Phạm Văn C', N'Đà Nẵng', '0938928125', 'phamvanc@gmail.com'),
(004, N'Lê Thị D', N'Hải Phòng', '0938928126', 'lethid@gmail.com'),
(005, N'Trần Văn E', N'Cần Thơ', '0938928127', 'tranvene@gmail.com'),
(006, N'Nguyễn Văn F', N'Quảng Ninh', '0938928128', 'nguyenvanf@gmail.com'),
(007, N'Phạm Thị G', N'Ninh Bình', '0938928129', 'phamthig@gmail.com'),
(008, N'Lê Văn H', N'Phú Thọ', '0938928130', 'levanh@gmail.com'),
(009, N'Trần Thị I', N'Thái Bình', '0938928131', 'tranthi@gmail.com'),
(010, N'Nguyễn Văn K', N'Hưng Yên', '0938928132', 'nguyenvank@gmail.com');
--Tạo các khóa ngoài
ALTER TABLE [dbo].[Hang] WITH CHECK ADD CONSTRAINT [FKh_Hang_Nha_CC] FOREIGN
KEY([MaNCC])
REFERENCES [dbo].[Nha_CC] ([MaNCC])
GO
ALTER TABLE [dbo].[Hang] CHECK CONSTRAINT [FKh_Hang_Nha_CC]
GO
USE [master]
GO