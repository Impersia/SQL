USE [QLBanHang]
GO
/****** Object:  Table [dbo].[Hangsx]    Script Date: 3/29/2023 10:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hangsx](
	[mahangsx] [nchar](10) NOT NULL,
	[tenhang] [nvarchar](20) NULL,
	[diachi] [nvarchar](30) NULL,
	[sodt] [nvarchar](20) NULL,
	[email] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[mahangsx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhanvien]    Script Date: 3/29/2023 10:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhanvien](
	[manv] [nchar](10) NOT NULL,
	[tennv] [nvarchar](20) NULL,
	[gioitinh] [nchar](10) NULL,
	[diachi] [nvarchar](30) NULL,
	[sodt] [nvarchar](20) NULL,
	[email] [nvarchar](30) NULL,
	[phong] [nvarchar](30) NULL,
PRIMARY KEY CLUSTERED 
(
	[manv] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Nhap]    Script Date: 3/29/2023 10:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Nhap](
	[sohdn] [nchar](10) NOT NULL,
	[masp] [nchar](10) NULL,
	[manv] [nchar](10) NULL,
	[ngaynhap] [date] NULL,
	[soluongN] [int] NULL,
	[dongiaN] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[sohdn] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sanpham]    Script Date: 3/29/2023 10:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sanpham](
	[masp] [nchar](10) NOT NULL,
	[mahangsx] [nchar](10) NULL,
	[tensp] [nvarchar](20) NULL,
	[soluong] [int] NULL,
	[mausac] [nvarchar](50) NULL,
	[giaban] [money] NULL,
	[donvitinh] [nchar](10) NULL,
	[mota] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[masp] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Xuat]    Script Date: 3/29/2023 10:10:16 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Xuat](
	[sohdx] [nchar](10) NOT NULL,
	[masp] [nchar](10) NULL,
	[manv] [nchar](10) NULL,
	[ngayxuat] [date] NULL,
	[soluongX] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[sohdx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Hangsx] ([mahangsx], [tenhang], [diachi], [sodt], [email]) VALUES (N'H01       ', N'Samsung', N'Korea', N'011-08271717', N'ss@gmail.com.kr')
INSERT [dbo].[Hangsx] ([mahangsx], [tenhang], [diachi], [sodt], [email]) VALUES (N'H02       ', N'OPPO', N'China', N'081-08626262', N'oppo@gmail.com.cn')
INSERT [dbo].[Hangsx] ([mahangsx], [tenhang], [diachi], [sodt], [email]) VALUES (N'H03       ', N'Vinfone', N'Vi?t nam', N'081-08626262', N'vf@gmail.com.vn')
GO
INSERT [dbo].[Nhanvien] ([manv], [tennv], [gioitinh], [diachi], [sodt], [email], [phong]) VALUES (N'NV01      ', N'Nguy?n Th? Thu', N'N?        ', N'Hà N?i', N'0982626521', N'thu@gmail.com', N'k? toán')
INSERT [dbo].[Nhanvien] ([manv], [tennv], [gioitinh], [diachi], [sodt], [email], [phong]) VALUES (N'NV02      ', N'Lê Văn Nam', N'Nam       ', N'B?c Ninh', N'0972525252', N'nam@gmail.com', N'V?t tư')
INSERT [dbo].[Nhanvien] ([manv], [tennv], [gioitinh], [diachi], [sodt], [email], [phong]) VALUES (N'NV03      ', N'Tr?n H?a B?nh', N'N?        ', N'Hà N?i ', N'03283883', N'nhb@gmail.com', N'k? toán')
GO
INSERT [dbo].[Nhap] ([sohdn], [masp], [manv], [ngaynhap], [soluongN], [dongiaN]) VALUES (N'N01       ', N'SP02      ', N'NV01      ', CAST(N'2019-02-05' AS Date), 10, 17000000.0000)
INSERT [dbo].[Nhap] ([sohdn], [masp], [manv], [ngaynhap], [soluongN], [dongiaN]) VALUES (N'N02       ', N'SP01      ', N'NV02      ', CAST(N'2020-04-07' AS Date), 30, 6000000.0000)
INSERT [dbo].[Nhap] ([sohdn], [masp], [manv], [ngaynhap], [soluongN], [dongiaN]) VALUES (N'N03       ', N'SP04      ', N'NV02      ', CAST(N'2020-05-17' AS Date), 20, 1200000.0000)
INSERT [dbo].[Nhap] ([sohdn], [masp], [manv], [ngaynhap], [soluongN], [dongiaN]) VALUES (N'N04       ', N'SP01      ', N'NV03      ', CAST(N'2020-03-22' AS Date), 10, 6200000.0000)
INSERT [dbo].[Nhap] ([sohdn], [masp], [manv], [ngaynhap], [soluongN], [dongiaN]) VALUES (N'N05       ', N'SP05      ', N'NV01      ', CAST(N'2020-07-07' AS Date), 20, 7000000.0000)
GO
INSERT [dbo].[Sanpham] ([masp], [mahangsx], [tensp], [soluong], [mausac], [giaban], [donvitinh], [mota]) VALUES (N'SP01      ', N'H02       ', N'F1 Plus', 100, N'xám', 7000000.0000, N'Chi?c     ', N'Hàng c?n cao c?p')
INSERT [dbo].[Sanpham] ([masp], [mahangsx], [tensp], [soluong], [mausac], [giaban], [donvitinh], [mota]) VALUES (N'SP02      ', N'H01       ', N'Galaxy Note 11', 50, N'đ?', 19000000.0000, N'Chi?c     ', N'Hàng cao c?p')
INSERT [dbo].[Sanpham] ([masp], [mahangsx], [tensp], [soluong], [mausac], [giaban], [donvitinh], [mota]) VALUES (N'SP03      ', N'H02       ', N'F3 lite', 200, N'nâu', 3000000.0000, N'Chi?c     ', N'Hàng ph? thông')
INSERT [dbo].[Sanpham] ([masp], [mahangsx], [tensp], [soluong], [mausac], [giaban], [donvitinh], [mota]) VALUES (N'SP04      ', N'H03       ', N'Vjoy3', 200, N'xám', 1500000.0000, N'Chi?c     ', N'Hàng ph? thông')
INSERT [dbo].[Sanpham] ([masp], [mahangsx], [tensp], [soluong], [mausac], [giaban], [donvitinh], [mota]) VALUES (N'SP05      ', N'H01       ', N'Galaxy v11', 500, N'nâu', 8000000.0000, N'Chi?c     ', N'Hàng c?n cao c?p')
GO
INSERT [dbo].[Xuat] ([sohdx], [masp], [manv], [ngayxuat], [soluongX]) VALUES (N'X01       ', N'SP03      ', N'NV02      ', CAST(N'2020-06-14' AS Date), 5)
INSERT [dbo].[Xuat] ([sohdx], [masp], [manv], [ngayxuat], [soluongX]) VALUES (N'X02       ', N'SP01      ', N'NV03      ', CAST(N'2019-03-05' AS Date), 3)
INSERT [dbo].[Xuat] ([sohdx], [masp], [manv], [ngayxuat], [soluongX]) VALUES (N'X03       ', N'SP02      ', N'NV01      ', CAST(N'2020-12-12' AS Date), 1)
INSERT [dbo].[Xuat] ([sohdx], [masp], [manv], [ngayxuat], [soluongX]) VALUES (N'X04       ', N'SP03      ', N'NV02      ', CAST(N'2020-06-02' AS Date), 2)
INSERT [dbo].[Xuat] ([sohdx], [masp], [manv], [ngayxuat], [soluongX]) VALUES (N'X05       ', N'SP05      ', N'NV01      ', CAST(N'2020-05-18' AS Date), 1)
GO
ALTER TABLE [dbo].[Nhap]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[Nhanvien] ([manv])
GO
ALTER TABLE [dbo].[Nhap]  WITH CHECK ADD FOREIGN KEY([masp])
REFERENCES [dbo].[Sanpham] ([masp])
GO
ALTER TABLE [dbo].[Sanpham]  WITH CHECK ADD  CONSTRAINT [FK_Sanpham_Hangsx] FOREIGN KEY([mahangsx])
REFERENCES [dbo].[Hangsx] ([mahangsx])
GO
ALTER TABLE [dbo].[Sanpham] CHECK CONSTRAINT [FK_Sanpham_Hangsx]
GO
ALTER TABLE [dbo].[Xuat]  WITH CHECK ADD FOREIGN KEY([manv])
REFERENCES [dbo].[Nhanvien] ([manv])
GO
ALTER TABLE [dbo].[Xuat]  WITH CHECK ADD FOREIGN KEY([masp])
REFERENCES [dbo].[Sanpham] ([masp])
GO
