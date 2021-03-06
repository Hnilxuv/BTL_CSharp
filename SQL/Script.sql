USE [master]
GO
/****** Object:  Database [QLBanMyPham]    Script Date: 8/7/2021 2:44:28 PM ******/
CREATE DATABASE [QLBanMyPham]
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [QLBanMyPham].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ARITHABORT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [QLBanMyPham] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [QLBanMyPham] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [QLBanMyPham] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [QLBanMyPham] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [QLBanMyPham] SET  ENABLE_BROKER 
GO
ALTER DATABASE [QLBanMyPham] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [QLBanMyPham] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [QLBanMyPham] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [QLBanMyPham] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [QLBanMyPham] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [QLBanMyPham] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [QLBanMyPham] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [QLBanMyPham] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [QLBanMyPham] SET  MULTI_USER 
GO
ALTER DATABASE [QLBanMyPham] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [QLBanMyPham] SET DB_CHAINING OFF 
GO
ALTER DATABASE [QLBanMyPham] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [QLBanMyPham] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [QLBanMyPham] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [QLBanMyPham] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [QLBanMyPham] SET QUERY_STORE = OFF
GO
USE [QLBanMyPham]
GO
/****** Object:  Table [dbo].[CuaHang]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CuaHang](
	[MaCuaHang] [nvarchar](20) NOT NULL,
	[TenCuaHang] [nvarchar](100) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[SoTaiKhoan] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaCuaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDM] [nvarchar](50) NOT NULL,
	[TenDM] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaDM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongPhieuDat]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongPhieuDat](
	[MaSP] [nvarchar](20) NOT NULL,
	[MaPhieuDat] [nvarchar](20) NOT NULL,
	[SoLuongDat] [int] NOT NULL,
	[GiaDat] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaPhieuDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DongPhieuNhap]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DongPhieuNhap](
	[MaPhieuNhap] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NULL,
	[GiaNhap] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [nvarchar](20) NOT NULL,
	[NgayLap] [datetime] NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
	[MaKH] [nvarchar](20) NOT NULL,
	[TichDiemHT] [int] NULL,
	[TongTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [nvarchar](20) NOT NULL,
	[TenKH] [nvarchar](100) NULL,
	[SDT] [nvarchar](11) NOT NULL,
	[TichDiem] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhuyenMai]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhuyenMai](
	[MaKM] [nvarchar](20) NOT NULL,
	[GiamGia] [int] NULL,
	[NgayBD] [datetime] NULL,
	[NgayKT] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhaCC]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCC](
	[MaNCC] [nvarchar](20) NOT NULL,
	[TenNCC] [nvarchar](100) NOT NULL,
	[DienThoai] [nvarchar](11) NOT NULL,
	[DiaChi] [nvarchar](100) NOT NULL,
	[Fax] [nvarchar](100) NOT NULL,
	[SoTaiKhoan] [nvarchar](100) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [nvarchar](20) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[Anh] [nvarchar](200) NULL,
	[GioiTinh] [bit] NULL,
	[SDT] [nvarchar](11) NULL,
	[MaCuaHang] [nvarchar](20) NOT NULL,
	[ChucVuNV] [nvarchar](20) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDatHang]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDatHang](
	[MaPhieuDat] [nvarchar](20) NOT NULL,
	[NgayDat] [datetime] NOT NULL,
	[MaNCC] [nvarchar](20) NOT NULL,
	[MaCuaHang] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDat] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuDoiTra]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuDoiTra](
	[MaPhieuDT] [nvarchar](20) NOT NULL,
	[LyDoDT] [nvarchar](200) NULL,
	[MaHD] [nvarchar](20) NOT NULL,
	[tongTien] [money] NULL,
	[NgayLap] [datetime] NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PhieuNhap]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PhieuNhap](
	[MaPhieuNhap] [nvarchar](20) NOT NULL,
	[NgayNhap] [datetime] NOT NULL,
	[ThanhToan] [nvarchar](50) NULL,
	[MaPhieuDat] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhieuNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [nvarchar](20) NOT NULL,
	[TenSP] [nvarchar](100) NOT NULL,
	[SLTon] [int] NOT NULL,
	[DonGia] [money] NOT NULL,
	[XuatXu] [nvarchar](100) NOT NULL,
	[ThuongHieu] [nvarchar](100) NOT NULL,
	[MaDM] [nvarchar](50) NOT NULL,
	[DonViTinh] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SanPhamKM]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SanPhamKM](
	[MaKM] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[GiaKM] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [nvarchar](30) NOT NULL,
	[MatKhau] [nvarchar](30) NOT NULL,
	[ChucVu] [bit] NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinHD]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinHD](
	[MaHD] [nvarchar](20) NOT NULL,
	[MaSP] [nvarchar](20) NOT NULL,
	[SoLuongMua] [int] NOT NULL,
	[DonGiaHT] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ThongTinSPDT]    Script Date: 8/7/2021 2:44:28 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThongTinSPDT](
	[MaSP] [nvarchar](20) NOT NULL,
	[MaPhieuDT] [nvarchar](20) NOT NULL,
	[SoLuongDT] [int] NULL,
	[PhanLoai] [bit] NULL,
	[DonGiaHT] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC,
	[MaPhieuDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [DienThoai], [SoTaiKhoan]) VALUES (N'CH01', N'CocoShop 1', N'128, Xuân Thủy, Hà Nội', N'0983154455', N'1222354468752')
INSERT [dbo].[CuaHang] ([MaCuaHang], [TenCuaHang], [DiaChi], [DienThoai], [SoTaiKhoan]) VALUES (N'CH02', N'CocoShop 2', N'258 Bà Triệu, Hà Nội', N'0988888948', N'1244436554124')
GO
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM01', N'Trang điểm')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM02', N'Son môi')
INSERT [dbo].[DanhMuc] ([MaDM], [TenDM]) VALUES (N'DM03', N'Chăm sóc da')
GO
INSERT [dbo].[HoaDon] ([MaHD], [NgayLap], [MaNV], [MaKH], [TichDiemHT], [TongTien]) VALUES (N'HD35576', CAST(N'2021-08-06T15:37:10.887' AS DateTime), N'NV01', N'KH49571', 19900, 19900000.0000)
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [SDT], [TichDiem]) VALUES (N'KH49571', N'TCC', N'0384215155', 19900)
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang], [ChucVuNV]) VALUES (N'NV01', N'Trần Chiến Công', N'\images\tcc.png', 1, N'0384215155', N'CH01', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang], [ChucVuNV]) VALUES (N'NV02', N'Phạm Minh Tú', N'\images\tu.jpg', 0, N'0215464654', N'CH01', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang], [ChucVuNV]) VALUES (N'NV03', N'Nguyễn Viết Hoàng', N'\images\hoang.jpg', 1, N'0983154424', N'CH01', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang], [ChucVuNV]) VALUES (N'NV04', N'Vũ Đình Linh', N'\images\linh.jpg', 1, N'0876421343', N'CH01', NULL)
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [Anh], [GioiTinh], [SDT], [MaCuaHang], [ChucVuNV]) VALUES (N'NV05', N'Nguyễn Bá Khải', N'\images\khai.jpg', 1, N'0983154422', N'CH01', NULL)
GO
INSERT [dbo].[PhieuDoiTra] ([MaPhieuDT], [LyDoDT], [MaHD], [tongTien], [NgayLap], [MaNV]) VALUES (N'PDT90084', N'Bởi vì thích :v', N'HD35576', 7360000.0000, CAST(N'2021-08-06T17:44:05.657' AS DateTime), N'NV01')
GO
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh]) VALUES (N'SP01', N'Bobbi Brown Dưỡng Ẩm Da ', 90, 1990000.0000, N'Mỹ', N'Bobbi Brown', N'DM01', N'Hộp')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh]) VALUES (N'SP02', N'Combo Son Dưỡng Rohto ', 100, 88000.0000, N'Nhật Bản', N'Rohto', N'DM02', N'Hộp')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh]) VALUES (N'SP03', N'Nước tẩy trang hoa hồng', 100, 275000.0000, N'Việt Nam', N'Cocoon', N'DM03', N'Hộp')
INSERT [dbo].[SanPham] ([MaSP], [TenSP], [SLTon], [DonGia], [XuatXu], [ThuongHieu], [MaDM], [DonViTinh]) VALUES (N'SP04', N'Nước tẩy trang hoa hồng loại 2', 100, 300000.0000, N'Việt Nam', N'Cocoon', N'DM03', N'Hộp')
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'admin', N'A1234567', 1, N'NV01')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'nguyenhoang', N'A1234567', 0, N'NV03')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'nguyenkhai', N'A1234567', 0, N'NV05')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'phamtu', N'A1234567', 0, N'NV02')
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [ChucVu], [MaNV]) VALUES (N'vulinh', N'A1234567', 0, N'NV04')
GO
INSERT [dbo].[ThongTinHD] ([MaHD], [MaSP], [SoLuongMua], [DonGiaHT]) VALUES (N'HD35576', N'SP01', 10, 1990000.0000)
GO
INSERT [dbo].[ThongTinSPDT] ([MaSP], [MaPhieuDT], [SoLuongDT], [PhanLoai], [DonGiaHT]) VALUES (N'SP01', N'PDT90084', 1, 0, 1990000.0000)
INSERT [dbo].[ThongTinSPDT] ([MaSP], [MaPhieuDT], [SoLuongDT], [PhanLoai], [DonGiaHT]) VALUES (N'SP03', N'PDT90084', 34, 1, 275000.0000)
GO
ALTER TABLE [dbo].[DongPhieuDat]  WITH CHECK ADD FOREIGN KEY([MaPhieuDat])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[DongPhieuDat]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[DongPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPhieuNhap])
REFERENCES [dbo].[PhieuNhap] ([MaPhieuNhap])
GO
ALTER TABLE [dbo].[DongPhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaCuaHang])
REFERENCES [dbo].[CuaHang] ([MaCuaHang])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCC] ([MaNCC])
GO
ALTER TABLE [dbo].[PhieuDatHang]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuDoiTra]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[PhieuDoiTra]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[PhieuNhap]  WITH CHECK ADD FOREIGN KEY([MaPhieuDat])
REFERENCES [dbo].[PhieuDatHang] ([MaPhieuDat])
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD FOREIGN KEY([MaDM])
REFERENCES [dbo].[DanhMuc] ([MaDM])
GO
ALTER TABLE [dbo].[SanPhamKM]  WITH CHECK ADD FOREIGN KEY([MaKM])
REFERENCES [dbo].[KhuyenMai] ([MaKM])
GO
ALTER TABLE [dbo].[SanPhamKM]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[ThongTinHD]  WITH CHECK ADD FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
GO
ALTER TABLE [dbo].[ThongTinHD]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
ALTER TABLE [dbo].[ThongTinSPDT]  WITH CHECK ADD FOREIGN KEY([MaPhieuDT])
REFERENCES [dbo].[PhieuDoiTra] ([MaPhieuDT])
GO
ALTER TABLE [dbo].[ThongTinSPDT]  WITH CHECK ADD FOREIGN KEY([MaSP])
REFERENCES [dbo].[SanPham] ([MaSP])
GO
USE [master]
GO
ALTER DATABASE [QLBanMyPham] SET  READ_WRITE 
GO
