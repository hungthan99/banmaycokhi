USE [nhom14]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 7/27/2022 4:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MADONHANG] [int] NOT NULL,
	[MASANPHAM] [int] NOT NULL,
	[donGia] [float] NOT NULL,
	[soLuong] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MADONHANG] ASC,
	[MASANPHAM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 7/27/2022 4:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[maDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[tenDanhMuc] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 7/27/2022 4:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[maDonHang] [int] IDENTITY(1,1) NOT NULL,
	[ngayLap] [datetime] NULL,
	[MAKHACHHANG] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maDonHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguoiDung]    Script Date: 7/27/2022 4:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguoiDung](
	[maNguoiDung] [int] IDENTITY(1,1) NOT NULL,
	[diaChi] [nvarchar](255) NULL,
	[email] [nvarchar](255) NULL,
	[LoaiNguoiDung] [varchar](255) NULL,
	[matKhau] [varchar](255) NULL,
	[ngaySinh] [datetime] NULL,
	[soCMND] [nvarchar](255) NULL,
	[soDienThoai] [nvarchar](255) NULL,
	[tenNguoiDung] [nvarchar](255) NULL,
	[trangThai] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNguoiDung] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 7/27/2022 4:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[maNhaCungCap] [int] IDENTITY(1,1) NOT NULL,
	[diaChi] [nvarchar](255) NULL,
	[tenNhaCungCap] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[maNhaCungCap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 7/27/2022 4:20:52 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[maSanPham] [int] IDENTITY(1,1) NOT NULL,
	[donGia] [float] NOT NULL,
	[donViTinh] [nvarchar](255) NOT NULL,
	[moTa] [nvarchar](255) NOT NULL,
	[ngaySanXuat] [datetime] NULL,
	[soLuongNhap] [int] NOT NULL,
	[tenSanPham] [nvarchar](255) NOT NULL,
	[trangThai] [varchar](255) NULL,
	[urlHinh] [varchar](255) NULL,
	[MADANHMUC] [int] NULL,
	[MANHACUNGCAP] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[maSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (13, 67, 25000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (14, 67, 25000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (15, 68, 20000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (16, 65, 28000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1013, 67, 50000000, 2)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1014, 65, 56000000, 2)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1015, 65, 28000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1016, 62, 23000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1017, 64, 56000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1018, 61, 29000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1019, 61, 29000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1020, 61, 29000000, 1)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1021, 61, 58000000, 2)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1022, 74, 144000000, 2)
INSERT [dbo].[ChiTietDonHang] ([MADONHANG], [MASANPHAM], [donGia], [soLuong]) VALUES (1022, 98, 44000000, 4)
GO
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (1, N'Máy Bào')
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (2, N'Máy Cắt')
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (3, N'Máy Chuốt')
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (4, N'Máy Mài')
INSERT [dbo].[DanhMuc] ([maDanhMuc], [tenDanhMuc]) VALUES (5, N'Máy Tiện')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 

INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (13, CAST(N'2022-05-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (14, CAST(N'2022-05-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (15, CAST(N'2022-05-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (16, CAST(N'2022-05-10T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1013, CAST(N'2022-05-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1014, CAST(N'2022-05-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1015, CAST(N'2022-05-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1016, CAST(N'2022-05-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1017, CAST(N'2022-05-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1018, CAST(N'2022-05-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1019, CAST(N'2022-05-11T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1020, CAST(N'2022-05-13T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1021, CAST(N'2022-05-13T00:00:00.000' AS DateTime), 3)
INSERT [dbo].[DonHang] ([maDonHang], [ngayLap], [MAKHACHHANG]) VALUES (1022, CAST(N'2022-05-13T00:00:00.000' AS DateTime), 3)
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
SET IDENTITY_INSERT [dbo].[NguoiDung] ON 

INSERT [dbo].[NguoiDung] ([maNguoiDung], [diaChi], [email], [LoaiNguoiDung], [matKhau], [ngaySinh], [soCMND], [soDienThoai], [tenNguoiDung], [trangThai]) VALUES (3, N'Quang Binh', N'cong@gmail.com', N'USER', N'$2a$12$DTZU.38qof6GXX4IMRVkL.FqRQUDgAZNx5IB/.CI1/hlcOp8e6Bkq', CAST(N'1999-04-04T00:00:00.000' AS DateTime), N'225765551', N'0914539824', N'Vo Thanh Cong', N'true')
INSERT [dbo].[NguoiDung] ([maNguoiDung], [diaChi], [email], [LoaiNguoiDung], [matKhau], [ngaySinh], [soCMND], [soDienThoai], [tenNguoiDung], [trangThai]) VALUES (7, N'Ho Chi Minh', N'linh@gmail.com', N'ADMIN', N'$2a$12$DTZU.38qof6GXX4IMRVkL.FqRQUDgAZNx5IB/.CI1/hlcOp8e6Bkq', CAST(N'1999-04-04T00:00:00.000' AS DateTime), N'225765550', N'0911982090', N'Linh', N'true')
INSERT [dbo].[NguoiDung] ([maNguoiDung], [diaChi], [email], [LoaiNguoiDung], [matKhau], [ngaySinh], [soCMND], [soDienThoai], [tenNguoiDung], [trangThai]) VALUES (23, N'Quang Binh', N'thanhcong@gmail.com', N'ADMIN', N'$2a$12$DTZU.38qof6GXX4IMRVkL.FqRQUDgAZNx5IB/.CI1/hlcOp8e6Bkq', CAST(N'1999-02-07T00:00:00.000' AS DateTime), N'522789456', N'0911982457', N'Thanh Cong', N'true')
SET IDENTITY_INSERT [dbo].[NguoiDung] OFF
GO
SET IDENTITY_INSERT [dbo].[NhaCungCap] ON 

INSERT [dbo].[NhaCungCap] ([maNhaCungCap], [diaChi], [tenNhaCungCap]) VALUES (1, N'Số 2, Ngõ 2 Nguyễn Hoàng, Nam Từ Liêm, Hà Nội', N'Công ty TNHH Đại Phúc Vinh CNC')
INSERT [dbo].[NhaCungCap] ([maNhaCungCap], [diaChi], [tenNhaCungCap]) VALUES (2, N'317 Quang Trung, Phường 10 , Quận Gò Vấp, TP Hồ Chí Minh ', N'CÔNG TY CỔ PHẦN KỸ THUẬT TITAN')
INSERT [dbo].[NhaCungCap] ([maNhaCungCap], [diaChi], [tenNhaCungCap]) VALUES (3, N'466 Đường Nguyễn Duy Trinh, Phường Bình Trưng Tây, Quận 2, Thành phố Hồ Chí Minh', N'Công Ty Cổ Phần Công Nghệ GBTECH')
SET IDENTITY_INSERT [dbo].[NhaCungCap] OFF
GO
SET IDENTITY_INSERT [dbo].[SanPham] ON 

INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (61, 29000000, N'Chiếc', N'MÁY BÀO 2 MẶT 6 TẤC TẢI NẶNG ( BÀN ĐIỆN TỬ )', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 5, N'MÁY BÀO 2 MẶT 6 TẤC TẢI NẶNG', N'true', N'../resources/images/may-bao-1.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (62, 23000000, N'Chiếc', N'Máy bào 2 mặt 610mm, máy chế biến gỗ', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY BÀO GỖ 2 MẶT DAO XOẮN', N'true', N'../resources/images/may-bao-2.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (63, 46000000, N'Chiếc', N'Máy bào 2 mặt 6 tấc sử dụng trục dao xoắn', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'MÁY BÀO 2 MẶT 6 TẤC', N'true', N'../resources/images/may-bao-3.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (64, 56000000, N'Chiếc', N'MÁY BÀO CUỐN 510 MM MỘT MẶT TẢI NẶNG
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'MÁY BÀO PHÀO CHỈ TỰ ĐỘNG 200MM
', N'true', N'../resources/images/may-bao-4.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (65, 28000000, N'Chiếc', N'MÁY BÀO CUỐN 510 MM MỘT MẶT TẢI NẶNG
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 6, N'MÁY BÀO CUỐN 5 TẤC
', N'true', N'../resources/images/may-bao-5.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (66, 26000000, N'Chiếc', N'MÁY BÀO CUỐN 610MM
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY BÀO CUỐN 6 TẤC
', N'true', N'../resources/images/may-bao-6.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (67, 25000000, N'Chiếc', N'Máy bào cuốn 4 tấc tải nặng dao xoắn', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY BÀO CUỐN DAO XOẮN WM-400HS
', N'true', N'../resources/images/may-bao-7.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (68, 20000000, N'Chiếc', N'Dòng máy bào thẩm tự động sử dụng băng tải ', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY BÀO THẨM BĂNG ĐINH TỰ ĐỘNG
', N'true', N'../resources/images/may-bao-8.jpg', 1, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (71, 70000000, N'Chiếc', N'Máy Cắt CNC Plasma Mini EMC 1500pro
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 100, N'Máy Cắt CNC Plasma Mini EMC 1500pro
', N'true', N'../resources/images/may-cat-1.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (72, 75000000, N'Chiếc', N'Máy Cắt PLasma CNC Mini EMC 1530
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'Máy Cắt PLasma CNC Mini EMC 1530
', N'true', N'../resources/images/may-cat-2.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (73, 55000000, N'Chiếc', N'Máy cắt nhựa cnc - máy làm tủ nhựa - máy cắt nhựa vi tính', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'Máy cắt nhựa cnc - máy làm tủ nhựa', N'true', N'../resources/images/may-cat-3.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (74, 72000000, N'Chiếc', N'Máy cắt CNC PLasma 2 Ray EMC-1600 Giá Rẻ
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 8, N'Máy cắt CNC PLasma 2 Ray EMC-1600', N'true', N'../resources/images/may-cat-4.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (75, 88000000, N'Chiếc', N'Máy Cắt Khắc CNC 3018 Pro New + 10 mũi phay PCB', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'Máy Cắt Khắc CNC 3018 Pro New', N'true', N'../resources/images/may-cat-5.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (76, 180000000, N'Chiếc', N'Máy cắt plasma cnc CP 2060 - máy cắt cnc plasma ', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'Máy cắt plasma cnc CP 2060', N'true', N'../resources/images/may-cat-6.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (77, 128000000, N'Chiếc', N'MÁY CẮT PLASMA CNC MAXPRO 2MX6M
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 7, N'MÁY CẮT PLASMA MAXPRO 2MX6M
', N'true', N'../resources/images/may-cat-7.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (78, 230000000, N'Chiếc', N'Máy cắt CNC Plasma 2 ray EMC-3000
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'Máy cắt CNC Plasma 2 ray EMC-3000
', N'true', N'../resources/images/may-cat-8.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (79, 66000000, N'Chiếc', N'MÁY CẮT CNC PLASMA MINI 1530PRO
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY CẮT CNC PLASMA MINI 1530PRO
', N'true', N'../resources/images/may-cat-9.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (80, 77000000, N'Chiếc', N'MÁY CẮT 1 RAY MINI CNC 1560
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY CẮT 1 RAY MINI CNC 1560
', N'true', N'../resources/images/may-cat-10.jpg', 2, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (81, 12000000, N'Chiếc', N'Máy chuốt cây tròn xử lý các tròn', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'MÁY CHUỐT TRÒN 60MM  WM-60RR
', N'true', N'../resources/images/may-chuot-1.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (82, 12500000, N'Chiếc', N'Máy chuốt chốt gỗ dùng để tạo ra các thanh gỗ ', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY CHUỐT CHỐT GỖ WOODMASTER
', N'true', N'../resources/images/may-chuot-2.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (83, 11500000, N'Chiếc', N'Máy chuốt cây tròn phôi lớn 150mm máy ', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY CHUỐT TRÒN PHÔI LỚN 150MM', N'true', N'../resources/images/may-chuot-3.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (84, 12000000, N'Chiếc', N'Máy chuốt cây tròn xử lý các thanh gỗ vuông', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY CHUỐT CONG TỰ ĐỘNG WM-60RC', N'true', N'../resources/images/may-chuot-4.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (85, 12500000, N'Chiếc', N'Máy chuốt cây tròn xử lý các thanh gỗ vuông', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY CHUỐT TRÒN 2 BỘ CHUỐT KÉP
', N'true', N'../resources/images/may-chuot-5.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (86, 12000000, N'Chiếc', N'MÁY CHUỐT CHỐT  Model: CF-18 chuốt các loại ', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'MÁY CHUỐT CHỐT GỖ
 JFK-15B', N'true', N'../resources/images/may-chuot-6.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (87, 11500000, N'Chiếc', N'MÁY CHUỐT CHỐT GỖ WM-12M
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY CHUỐT CHỐT GỖ WM-12M
', N'true', N'../resources/images/may-chuot-7.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (88, 10000000, N'Chiếc', N'Máy chuốt gỗ cây tròn chuyên gia công xử lý các loại', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY CHUỐT GỖ CÂY TRÒN
', N'true', N'../resources/images/may-chuot-8.jpg', 3, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (91, 13990000, N'Chiếc', N'Máy mài mũi khoan MR-20G', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'Máy mài mũi khoan MR-20G
', N'true', N'../resources/images/may-mai-1.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (92, 10900000, N'Chiếc', N'Máy mài mũi khoan MR là máy mài mũi khoan', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 8, N'Máy mài mũi khoan MR-13A MR-20G
', N'true', N'../resources/images/may-mai-2.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (93, 12990000, N'Chiếc', N'Máy mài dao cnc U2 được thiết kế đặc biệt', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'Máy mài dao cnc U2
', N'true', N'../resources/images/may-mai-3.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (94, 10300000, N'Chiếc', N'Máy mài dao cnc U1 được thiết kế đặc biệt', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'Máy mài dao cnc U1
', N'true', N'../resources/images/may-mai-4.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (95, 11800000, N'Chiếc', N'MÁY MÀI LƯỠI DAO MÁY TIỆN CNC TX-M4
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY MÀI LƯỠI DAO CNC TX-M4
', N'true', N'../resources/images/may-mai-5.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (96, 11200000, N'Chiếc', N'MÁY MÀI LƯỠI DAO MÁY TIỆN CNC ITOU
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'MÁY MÀI LƯỠI DAO CNC ITOU
', N'true', N'../resources/images/may-mai-6.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (97, 13900000, N'Chiếc', N'máy mài dao
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 10, N'máy mài dao
', N'true', N'../resources/images/may-mai-7.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (98, 11000000, N'Chiếc', N'máy mài giáp dây mini V2
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 6, N'máy mài giáp dây mini V2
', N'true', N'../resources/images/may-mai-8.jpg', 4, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (101, 8900000, N'Chiếc', N'Máy tiện gỗ cnc nạp phôi tự động của hãng Woodmaster', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'MÁY TIỆN GỖ 1 TRỤC PHÔI TỰ ĐỘNG', N'true', N'../resources/images/may-tien-1.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (102, 12900000, N'Chiếc', N'Máy tiện gỗ CNC 2 trục nạp phôi tự động', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'MÁY TIỆN GỖ 2 TRỤC PHÔI WM-1500A2
', N'true', N'../resources/images/may-tien-2.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (103, 16900000, N'Chiếc', N'Máy tiện gỗ 1450mm Wm-380L thuộc hãng Woodmaster', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'MÁY TIỆN GỖ 1450MM WM-380L
', N'true', N'../resources/images/may-tien-3.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (104, 10500000, N'Chiếc', N'Máy tiện gỗ cnc lập trình bản vẽ', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'MÁY TIỆN GỖ CHÀ NHÁM 1500MM ', N'true', N'../resources/images/may-tien-4.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (105, 13500000, N'Chiếc', N'máy tiện 220
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'máy tiện 220
', N'true', N'../resources/images/may-tien-5.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (106, 13500000, N'Chiếc', N'Máy tiện gỗ mini CA-26 CNC
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'Máy tiện gỗ mini CA-26 CNC
', N'true', N'../resources/images/may-tien-6.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (107, 12500000, N'Chiếc', N'Máy tiện cơ khí chính xác cao
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'Máy tiện cơ khí chính xác cao
', N'true', N'../resources/images/may-tien-7.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (108, 15900000, N'Chiếc', N'Máy CNC mini 3040 khung thép đúc
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'Máy CNC mini 3040 khung thép đúc
', N'true', N'../resources/images/may-tien-8.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (109, 10900000, N'Chiếc', N'Máy tiện kim loại
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'Máy tiện kim loại
', N'true', N'../resources/images/may-tien-9.jpg', 5, 1)
INSERT [dbo].[SanPham] ([maSanPham], [donGia], [donViTinh], [moTa], [ngaySanXuat], [soLuongNhap], [tenSanPham], [trangThai], [urlHinh], [MADANHMUC], [MANHACUNGCAP]) VALUES (110, 14800000, N'Chiếc', N'Máy tiện cnc MC 3015II
', CAST(N'2019-12-12T00:00:00.000' AS DateTime), 9, N'Máy tiện cnc MC 3015II
', N'true', N'../resources/images/may-tien-10.jpg', 5, 1)
SET IDENTITY_INSERT [dbo].[SanPham] OFF
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FKliuu6v788wxyhy31ybt0oly0k] FOREIGN KEY([MADONHANG])
REFERENCES [dbo].[DonHang] ([maDonHang])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FKliuu6v788wxyhy31ybt0oly0k]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FKr5xd0qr7lfvx6celx57baxxwb] FOREIGN KEY([MASANPHAM])
REFERENCES [dbo].[SanPham] ([maSanPham])
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FKr5xd0qr7lfvx6celx57baxxwb]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FKks12nlyoi3sqgrff42be2u9wa] FOREIGN KEY([MAKHACHHANG])
REFERENCES [dbo].[NguoiDung] ([maNguoiDung])
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FKks12nlyoi3sqgrff42be2u9wa]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK6tkljmbht4nkw6t17rpa2mwk1] FOREIGN KEY([MADANHMUC])
REFERENCES [dbo].[DanhMuc] ([maDanhMuc])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK6tkljmbht4nkw6t17rpa2mwk1]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FKtjdx5vft2ly8fscsbapcx584a] FOREIGN KEY([MANHACUNGCAP])
REFERENCES [dbo].[NhaCungCap] ([maNhaCungCap])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FKtjdx5vft2ly8fscsbapcx584a]
GO
