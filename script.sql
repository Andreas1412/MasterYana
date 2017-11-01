USE [tesdb]
GO
/****** Object:  Table [dbo].[TR_HEADER_PENJUALAN]    Script Date: 08/11/2017 14:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TR_HEADER_PENJUALAN](
	[NO_NOTA] [varchar](50) NOT NULL,
	[TANGGAL_TRANSAKSI] [date] NULL,
	[HARGA_TOTAL] [int] NULL,
	[GLOBAL_DISKON] [int] NULL,
	[KODE_CUSTOMER] [varchar](50) NOT NULL,
	[KODE_KARYAWAN] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TR_HEADER_PENJUALAN] PRIMARY KEY CLUSTERED 
(
	[NO_NOTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TR_HEADER_PENJUALAN] ([NO_NOTA], [TANGGAL_TRANSAKSI], [HARGA_TOTAL], [GLOBAL_DISKON], [KODE_CUSTOMER], [KODE_KARYAWAN]) VALUES (N'tescobagan', CAST(0x1A3D0B00 AS Date), 504630, 30, N'C002', N'k002')
INSERT [dbo].[TR_HEADER_PENJUALAN] ([NO_NOTA], [TANGGAL_TRANSAKSI], [HARGA_TOTAL], [GLOBAL_DISKON], [KODE_CUSTOMER], [KODE_KARYAWAN]) VALUES (N'TR001', CAST(0xDA360B00 AS Date), 194400, 20, N'C002', N'k001')
/****** Object:  Table [dbo].[TR_DETAIL_PENJUALAN]    Script Date: 08/11/2017 14:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TR_DETAIL_PENJUALAN](
	[KODE_DETAIL] [varchar](50) NOT NULL,
	[QTY] [int] NULL,
	[SUBTOTAL] [int] NULL,
	[DISKON] [int] NULL,
	[HARGA_SATUAN] [int] NULL,
	[KODE_BARANG] [varchar](50) NOT NULL,
	[NO_NOTA] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TR_DETAIL_PENJUALAN] PRIMARY KEY CLUSTERED 
(
	[KODE_DETAIL] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[TR_DETAIL_PENJUALAN] ([KODE_DETAIL], [QTY], [SUBTOTAL], [DISKON], [HARGA_SATUAN], [KODE_BARANG], [NO_NOTA]) VALUES (N'D001', 1, 90000, 10, 100000, N'B002', N'TR001')
INSERT [dbo].[TR_DETAIL_PENJUALAN] ([KODE_DETAIL], [QTY], [SUBTOTAL], [DISKON], [HARGA_SATUAN], [KODE_BARANG], [NO_NOTA]) VALUES (N'D008', 2, 180000, 10, 100000, N'B002', N'TR001')
INSERT [dbo].[TR_DETAIL_PENJUALAN] ([KODE_DETAIL], [QTY], [SUBTOTAL], [DISKON], [HARGA_SATUAN], [KODE_BARANG], [NO_NOTA]) VALUES (N'dfff', 12, 756000, 10, 70000, N'b44', N'tescobagan')
INSERT [dbo].[TR_DETAIL_PENJUALAN] ([KODE_DETAIL], [QTY], [SUBTOTAL], [DISKON], [HARGA_SATUAN], [KODE_BARANG], [NO_NOTA]) VALUES (N'dsada', 1, 45000, 10, 50000, N'b44', N'tescobagan')
/****** Object:  Table [dbo].[MST_SUPPLIER]    Script Date: 08/11/2017 14:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_SUPPLIER](
	[KODE_SUPPLIER] [varchar](50) NOT NULL,
	[NAMA_SUPPLIER] [varchar](50) NULL,
	[ALAMAT_SUPPLIER] [varchar](100) NULL,
	[TELP_SUPPLIER] [varchar](20) NULL,
	[EMAIL_SUPPLIER] [varchar](50) NULL,
	[KODE_KOTA] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MST_SUPPLIER] PRIMARY KEY CLUSTERED 
(
	[KODE_SUPPLIER] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MST_SUPPLIER] ([KODE_SUPPLIER], [NAMA_SUPPLIER], [ALAMAT_SUPPLIER], [TELP_SUPPLIER], [EMAIL_SUPPLIER], [KODE_KOTA]) VALUES (N'coba', N'tes gan', N'jalan aja', NULL, N'aa@aa.com', N'K001')
INSERT [dbo].[MST_SUPPLIER] ([KODE_SUPPLIER], [NAMA_SUPPLIER], [ALAMAT_SUPPLIER], [TELP_SUPPLIER], [EMAIL_SUPPLIER], [KODE_KOTA]) VALUES (N'S001', N'jiji', N'jalan koko', NULL, N'a@a.com', N'K005')
/****** Object:  Table [dbo].[MST_PROVINSI]    Script Date: 08/11/2017 14:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_PROVINSI](
	[KODE_PROVINSI] [varchar](50) NOT NULL,
	[NAMA_PROVINSI] [varchar](50) NULL,
 CONSTRAINT [PK_MST_PROVINSI] PRIMARY KEY CLUSTERED 
(
	[KODE_PROVINSI] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MST_PROVINSI] ([KODE_PROVINSI], [NAMA_PROVINSI]) VALUES (N'P001', N'DKI JAKARTA')
INSERT [dbo].[MST_PROVINSI] ([KODE_PROVINSI], [NAMA_PROVINSI]) VALUES (N'P002', N'JAWA TENGAH')
INSERT [dbo].[MST_PROVINSI] ([KODE_PROVINSI], [NAMA_PROVINSI]) VALUES (N'P003', N'JAWA BARAT')
/****** Object:  Table [dbo].[MST_KOTA]    Script Date: 08/11/2017 14:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_KOTA](
	[KODE_KOTA] [varchar](50) NOT NULL,
	[NAMA_KOTA] [varchar](50) NULL,
	[KODE_PROVINSI] [varchar](50) NULL,
 CONSTRAINT [PK_MST_KOTA] PRIMARY KEY CLUSTERED 
(
	[KODE_KOTA] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K001', N'Jakarta', N'P001')
INSERT [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K002', N'Malang', N'P002')
INSERT [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K003', N'Semarang', N'P002')
INSERT [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K004', N'Bekasi', N'P003')
INSERT [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K005', N'Bandung', N'P003')
INSERT [dbo].[MST_KOTA] ([KODE_KOTA], [NAMA_KOTA], [KODE_PROVINSI]) VALUES (N'K006', N'Depok', N'P003')
/****** Object:  Table [dbo].[MST_KARYAWAN]    Script Date: 08/11/2017 14:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_KARYAWAN](
	[KODE_KARYAWAN] [varchar](50) NOT NULL,
	[NAMA_KARYAWAN] [varchar](50) NULL,
	[USERNAME] [varchar](50) NULL,
	[PASSWORD] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MST_KARYAWAN] PRIMARY KEY CLUSTERED 
(
	[KODE_KARYAWAN] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MST_KARYAWAN] ([KODE_KARYAWAN], [NAMA_KARYAWAN], [USERNAME], [PASSWORD]) VALUES (N'k001', N'B.B', N'321', N'321')
INSERT [dbo].[MST_KARYAWAN] ([KODE_KARYAWAN], [NAMA_KARYAWAN], [USERNAME], [PASSWORD]) VALUES (N'k002', N'mamat', N'123', N'123')
INSERT [dbo].[MST_KARYAWAN] ([KODE_KARYAWAN], [NAMA_KARYAWAN], [USERNAME], [PASSWORD]) VALUES (N'k003', N'jon', N'asd', N'asd')
/****** Object:  Table [dbo].[MST_CUSTOMER]    Script Date: 08/11/2017 14:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_CUSTOMER](
	[KODE_CUSTOMER] [varchar](50) NOT NULL,
	[NAMA_CUSTOMER] [varchar](50) NULL,
	[ALAMAT_CUSTOMER] [varchar](50) NULL,
	[JENIS_KELAMIN] [varchar](10) NULL,
	[EMAIL_CUSTOMER] [varchar](50) NULL,
	[KODE_KOTA] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MST_CUSTOMER] PRIMARY KEY CLUSTERED 
(
	[KODE_CUSTOMER] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MST_CUSTOMER] ([KODE_CUSTOMER], [NAMA_CUSTOMER], [ALAMAT_CUSTOMER], [JENIS_KELAMIN], [EMAIL_CUSTOMER], [KODE_KOTA]) VALUES (N'C002', N'Hihi', N'jalan apa', N'PRIA', N'a@a.com', N'K001')
/****** Object:  Table [dbo].[MST_BARANG]    Script Date: 08/11/2017 14:58:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MST_BARANG](
	[KODE_BARANG] [varchar](50) NOT NULL,
	[NAMA_BARANG] [varchar](50) NULL,
	[STOK_BARANG] [int] NULL,
	[KODE_SUPPLIER] [varchar](50) NOT NULL,
 CONSTRAINT [PK_MST_BARANG] PRIMARY KEY CLUSTERED 
(
	[KODE_BARANG] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[MST_BARANG] ([KODE_BARANG], [NAMA_BARANG], [STOK_BARANG], [KODE_SUPPLIER]) VALUES (N'b44', N'rr', 42, N'coba')
