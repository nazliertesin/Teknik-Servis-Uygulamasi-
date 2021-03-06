USE [master]
GO
/****** Object:  Database [TecnicalServisDB]    Script Date: 5.06.2022 23:21:18 ******/
CREATE DATABASE [TecnicalServisDB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'New Database', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\New Database.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'New Database_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\New Database.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [TecnicalServisDB] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [TecnicalServisDB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [TecnicalServisDB] SET ANSI_NULL_DEFAULT ON 
GO
ALTER DATABASE [TecnicalServisDB] SET ANSI_NULLS ON 
GO
ALTER DATABASE [TecnicalServisDB] SET ANSI_PADDING ON 
GO
ALTER DATABASE [TecnicalServisDB] SET ANSI_WARNINGS ON 
GO
ALTER DATABASE [TecnicalServisDB] SET ARITHABORT ON 
GO
ALTER DATABASE [TecnicalServisDB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [TecnicalServisDB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET CURSOR_DEFAULT  LOCAL 
GO
ALTER DATABASE [TecnicalServisDB] SET CONCAT_NULL_YIELDS_NULL ON 
GO
ALTER DATABASE [TecnicalServisDB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET QUOTED_IDENTIFIER ON 
GO
ALTER DATABASE [TecnicalServisDB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [TecnicalServisDB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [TecnicalServisDB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET RECOVERY FULL 
GO
ALTER DATABASE [TecnicalServisDB] SET  MULTI_USER 
GO
ALTER DATABASE [TecnicalServisDB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [TecnicalServisDB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [TecnicalServisDB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [TecnicalServisDB] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [TecnicalServisDB] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [TecnicalServisDB] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [TecnicalServisDB] SET QUERY_STORE = OFF
GO
USE [TecnicalServisDB]
GO
/****** Object:  Table [dbo].[Authority]    Script Date: 5.06.2022 23:21:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authority](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[AuthorityName] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Brand]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Brand](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand Name] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[Customer Id] [int] IDENTITY(1,1) NOT NULL,
	[Identification Number] [nchar](11) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
	[Email] [nvarchar](50) NULL,
	[Phone Number] [nchar](11) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
 CONSTRAINT [PK__Customer__3214EC07F4E6D7F3] PRIMARY KEY CLUSTERED 
(
	[Customer Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Malfunction]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Malfunction](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Customer Id] [int] NOT NULL,
	[Brand] [int] NOT NULL,
	[Model] [int] NOT NULL,
	[Malfunction Description] [text] NOT NULL,
	[Extenal Description] [text] NULL,
	[Device Accessories] [text] NULL,
	[Estimated Price] [money] NOT NULL,
	[Device Status] [bit] NOT NULL,
 CONSTRAINT [PK__Malfunct__3214EC07D7C80796] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Model]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Model](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Brand Id] [int] NOT NULL,
	[Model Name] [nvarchar](50) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Personnel]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Personnel](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserName] [nvarchar](30) NOT NULL,
	[Password] [nvarchar](30) NOT NULL,
	[Name] [nvarchar](20) NOT NULL,
	[Surname] [nvarchar](20) NOT NULL,
	[AuthorityId] [int] NOT NULL,
	[Email] [nvarchar](50) NOT NULL,
	[Address] [nvarchar](200) NOT NULL,
	[Salary] [int] NOT NULL,
	[Login Status] [bit] NOT NULL,
 CONSTRAINT [PK__Personnel__3214EC0705FB0DE9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Repair]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Repair](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Malfunction Id] [int] NOT NULL,
	[Customer Id] [int] NOT NULL,
	[Repair Process] [text] NOT NULL,
	[Workmanship Price] [int] NOT NULL,
	[Spare Part Id] [int] NOT NULL,
	[Spare Part Amount] [int] NULL,
	[Spare Part Price] [int] NULL,
 CONSTRAINT [PK__Repair__3214EC07CA5F916F] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[SparePart]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[SparePart](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Model Id] [int] NOT NULL,
	[Spare Part Name] [nvarchar](40) NOT NULL,
	[Price] [decimal](18, 2) NULL,
	[Stock Id] [int] NOT NULL,
 CONSTRAINT [PK__SparePar__3214EC0790C8BF10] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Stock]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Stock](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Spare Part Id] [int] NOT NULL,
	[Spare Part Amount] [int] NULL,
 CONSTRAINT [PK__Stock__3214EC075F6036F9] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authority] ON 

INSERT [dbo].[Authority] ([Id], [AuthorityName]) VALUES (1, N'
Human Resources')
INSERT [dbo].[Authority] ([Id], [AuthorityName]) VALUES (2, N'Finance')
INSERT [dbo].[Authority] ([Id], [AuthorityName]) VALUES (3, N'
Technical Affairs')
INSERT [dbo].[Authority] ([Id], [AuthorityName]) VALUES (4, N'
Customer Service')
SET IDENTITY_INSERT [dbo].[Authority] OFF
GO
SET IDENTITY_INSERT [dbo].[Brand] ON 

INSERT [dbo].[Brand] ([Id], [Brand Name]) VALUES (1, N'Apple')
INSERT [dbo].[Brand] ([Id], [Brand Name]) VALUES (2, N'Samsung')
INSERT [dbo].[Brand] ([Id], [Brand Name]) VALUES (3, N'Huawei')
INSERT [dbo].[Brand] ([Id], [Brand Name]) VALUES (4, N'Xiaomi')
INSERT [dbo].[Brand] ([Id], [Brand Name]) VALUES (5, N'BOŞ')
SET IDENTITY_INSERT [dbo].[Brand] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (1, N'40026889977', N'Fatma', N'Baş', N'fatmabas@gmail.com', N'05558902355', N'Kartal')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (2, N'40026889978', N'ALİ', N'KORKMAZ', N'alikorkmaz@gmail.com', N'05456309877', N'AVCILAR')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (3, N'40026889979', N'Yaşar', N'Ilgaz', N'yasarılgaz@gmail.com', N'05358902563', N'Bahçelievler')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (4, N'40026889974', N'Büşra', N'Tek', N'busratek@gmail.com', N'05368974560', N'Çekmeköy')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (17, N'55999888444', N'Yılmaz', N'Tek', N'yilmaztek@gmail.com', N'05987895644', N'Kartal')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (19, N'12356897777', N'Elif', N'Tatari', N'eliftatari@gmail.com', N'05987778445', N'Ümitköy')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (20, N'56987456321', N'Ayşe', N'Bazu', N'aysebazu@gmail.com', N'05897564321', N'Keçiören')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (21, N'15987845632', N'Hülya', N'Bulut', N'', N'56545456462', N'Bakırköy')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (23, N'89762232333', N'Halime', N'Yeter', N'', N'59793323556', N'Kazan')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (25, N'89713306513', N'Selvi', N'Yılmaz', N'selviyilmaz@gmail.co', N'05897263236', N'Balıkesir')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (26, N'56412349741', N'Fırat', N'Doğru', N'', N'05976264567', N'Kadıköy')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (27, N'56139636212', N'Furkan', N'Korkmaz', N'furkankorkmaz@gmail.', N'05613356582', N'Ümraniye')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (34, N'26598631318', N'Murat', N'Aydın', N'murataydin@gmail.com', N'05618236635', N'Bakırköy')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (36, N'69234668789', N'Hatice', N'Başkonuş', N'haticebaskonus@gmail', N'05697812312', N'Çapa')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (38, N'55555555555', N'Onur', N'SSMS', N'', N'56235555555', N'A')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (39, N'10559998855', N'Gökhan', N'Hasbal', N'gkhnnhasbal@gmail.co', N'05951331221', N'Beykoz')
INSERT [dbo].[Customer] ([Customer Id], [Identification Number], [Name], [Surname], [Email], [Phone Number], [Address]) VALUES (40, N'56595454545', N'Sezer', N'Varol', N'sezervarol@gmail.com', N'55566555555', N'Esenyurt')
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Malfunction] ON 

INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (1, 3, 2, 12, N'a', N'a', N'', 5.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (2, 4, 2, 14, N'a', N'a', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (3, 1, 1, 4, N'aa', N'', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (4, 2, 2, 14, N'a', N'', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (5, 1, 1, 3, N'a', N'', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (6, 1, 1, 4, N'Telefon şarj olmuyor.', N'', N'', 200.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (7, 1, 2, 13, N'z', N'z', N'', 5.0000, 0)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (8, 17, 4, 32, N'a', N'', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (9, 2, 1, 3, N'a', N'', N'', 2.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (10, 2, 3, 24, N'a', N'', N'', 2.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (11, 3, 3, 23, N'a', N'', N'', 4.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (12, 3, 2, 13, N'a', N'a', N'a', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (13, 1, 1, 4, N'a', N'', N'', 500.0000, 0)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (14, 1, 1, 3, N'a', N'', N'', 2.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (16, 1, 1, 1, N'a', N'a', NULL, 5.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (17, 1, 1, 1, N'fff', N'dd', NULL, 5.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (19, 1, 1, 3, N'Bozuk', NULL, NULL, 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (20, 2, 1, 8, N'sss', N'', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (21, 1, 1, 1, N'Deneme', NULL, NULL, 200.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (22, 39, 1, 1, N'ksdjjısud', N'', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (23, 1, 1, 3, N'sss', N'', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (24, 39, 1, 6, N'Bozuk', N'', N'', 500.0000, 1)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (25, 1, 1, 3, N'Ekhghs', N'', N'', 200.0000, 0)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (26, 23, 1, 1, N'aa', N'', N'', 200.0000, 0)
INSERT [dbo].[Malfunction] ([Id], [Customer Id], [Brand], [Model], [Malfunction Description], [Extenal Description], [Device Accessories], [Estimated Price], [Device Status]) VALUES (27, 34, 1, 1, N'aa', N'', N'', 200.0000, 0)
SET IDENTITY_INSERT [dbo].[Malfunction] OFF
GO
SET IDENTITY_INSERT [dbo].[Model] ON 

INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (1, 1, N'iPhone5')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (3, 1, N'iPhone6')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (4, 1, N'İphone7')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (6, 1, N'iPhone8')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (7, 1, N'İphone X')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (8, 1, N'İphone 11')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (9, 1, N'İphone 12')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (10, 1, N'İphone 13')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (11, 1, N'İphone SE')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (12, 2, N'SM-C115')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (13, 2, N'SM-A520Y')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (14, 2, N'SM-A320Y')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (15, 2, N'SM-J310F')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (16, 2, N'SM-J320P')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (17, 2, N'SM-G9289')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (18, 2, N'SM-G9250')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (19, 2, N'GT-I9303I')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (20, 2, N'GT-I9082')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (21, 2, N'GT-B5512(B)')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (22, 3, N'Huawei Ascend Mate ')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (23, 3, N'Huawei Mate 30 Pro')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (24, 3, N'Huawei P8 Lite ')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (25, 3, N'Huawei P Smart ')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (26, 3, N'Huawei P50 4G ')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (27, 3, N'Huawei Ascend Y635')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (28, 3, N'Huawei Ascend GX-9')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (29, 3, N'Honor Magic 3 SE')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (30, 4, N'Xiaomi Redmi Note 10S 128 GB.')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (31, 4, N'Xiaomi Redmi 9C 64 GB.')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (32, 4, N'Xiaomi Redmi Note 10 Pro 128 GB 8 GB.')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (33, 4, N'Xiaomi Redmi Note 9 Pro 128 GB.')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (34, 4, N'Redmi K20 Pro Premium')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (35, 4, N'Redmi Y1 Lite')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (36, 4, N'Redmi K30i')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (37, 4, N'Redmi Note 9 Pro 5G')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (38, 4, N'Redmi Note 4X')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (39, 4, N'Redmi Note 6 Pro')
INSERT [dbo].[Model] ([Id], [Brand Id], [Model Name]) VALUES (40, 4, N'Redmi K30 5G')
SET IDENTITY_INSERT [dbo].[Model] OFF
GO
SET IDENTITY_INSERT [dbo].[Personnel] ON 

INSERT [dbo].[Personnel] ([Id], [UserName], [Password], [Name], [Surname], [AuthorityId], [Email], [Address], [Salary], [Login Status]) VALUES (1, N'nazliertesin', N'111', N'NAZLI', N'ERTESİN', 1, N'nazliertesin@gmail.com', N'Ataşehir', 8000, 0)
INSERT [dbo].[Personnel] ([Id], [UserName], [Password], [Name], [Surname], [AuthorityId], [Email], [Address], [Salary], [Login Status]) VALUES (2, N'ayseyilmaz', N'111', N'AYŞE', N'YILMAZ', 2, N'ayseyilmaz@gmail.com', N'Üsküdar', 8000, 0)
INSERT [dbo].[Personnel] ([Id], [UserName], [Password], [Name], [Surname], [AuthorityId], [Email], [Address], [Salary], [Login Status]) VALUES (3, N'muratkaya', N'111', N'MURAT', N'KAYA', 3, N'muratkaya@gmail.com', N'Kadıköy', 8000, 0)
INSERT [dbo].[Personnel] ([Id], [UserName], [Password], [Name], [Surname], [AuthorityId], [Email], [Address], [Salary], [Login Status]) VALUES (4, N'umutdag', N'111', N'UMUT', N'DAĞ', 4, N'umutdag@gmail.com', N'Beşiktaş', 8000, 0)
INSERT [dbo].[Personnel] ([Id], [UserName], [Password], [Name], [Surname], [AuthorityId], [Email], [Address], [Salary], [Login Status]) VALUES (9, N'bestesemiz', N'111', N'Beste', N'Semiz', 4, N'bestesemiz@gmail.com', N'Kartal', 8000, 0)
INSERT [dbo].[Personnel] ([Id], [UserName], [Password], [Name], [Surname], [AuthorityId], [Email], [Address], [Salary], [Login Status]) VALUES (10, N'onursen', N'111', N'Onur', N'Şen', 3, N'onursen@gmail.com', N'Maltepe', 1000, 0)
INSERT [dbo].[Personnel] ([Id], [UserName], [Password], [Name], [Surname], [AuthorityId], [Email], [Address], [Salary], [Login Status]) VALUES (11, N'gökay', N'111', N'Gökay', N'Ürenc', 3, N'aa@gamil.com', N'Kartal', 8000, 0)
SET IDENTITY_INSERT [dbo].[Personnel] OFF
GO
SET IDENTITY_INSERT [dbo].[Repair] ON 

INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (1, 5, 1, N'Çözüldü', 100, 1, 0, 0)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (2, 6, 1, N'aaaa', 600, 14, 2, 1000)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (3, 20, 2, N'DENEME', 500, 18, 4, 2000)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (4, 2, 4, N'ggjgj', 50, 29, 2, 1000)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (5, 1, 3, N'gjgjhghh', 100, 25, 3, 1500)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (6, 10, 2, N'aaaa', 3, 1, 0, 0)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (7, 9, 2, N'aaa', 100, 11, 1, 500)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (8, 3, 1, N'jdjdhjsdh', 100, 14, 5, 2500)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (9, 22, 39, N'jfhjfhf', 100, 1, 0, 0)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (10, 24, 39, N'Ekran bozuk', 100, 16, 1, 500)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (11, 4, 2, N'aaaa', 200, 1, 0, 0)
INSERT [dbo].[Repair] ([Id], [Malfunction Id], [Customer Id], [Repair Process], [Workmanship Price], [Spare Part Id], [Spare Part Amount], [Spare Part Price]) VALUES (12, 23, 1, N'a', 100, 1, 1, 500)
SET IDENTITY_INSERT [dbo].[Repair] OFF
GO
SET IDENTITY_INSERT [dbo].[SparePart] ON 

INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (1, 1, N'Boş', CAST(0.00 AS Decimal(18, 2)), 19)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (2, 1, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 20)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (3, 1, N'Batarya', CAST(600.00 AS Decimal(18, 2)), 21)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (11, 3, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 23)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (12, 3, N'Batarya', CAST(600.00 AS Decimal(18, 2)), 24)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (14, 4, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 25)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (16, 6, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 26)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (17, 7, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 27)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (18, 8, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 28)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (19, 9, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 29)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (21, 10, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 30)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (23, 11, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 31)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (25, 12, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 32)
INSERT [dbo].[SparePart] ([Id], [Model Id], [Spare Part Name], [Price], [Stock Id]) VALUES (29, 14, N'Ekran', CAST(500.00 AS Decimal(18, 2)), 34)
SET IDENTITY_INSERT [dbo].[SparePart] OFF
GO
SET IDENTITY_INSERT [dbo].[Stock] ON 

INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (19, 1, -101)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (20, 2, 60)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (21, 3, 200)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (23, 11, 100)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (24, 12, 70)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (25, 14, 95)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (26, 16, 2)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (27, 17, 100)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (28, 18, 16)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (29, 19, 40)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (30, 21, 100)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (31, 23, 120)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (32, 25, 37)
INSERT [dbo].[Stock] ([Id], [Spare Part Id], [Spare Part Amount]) VALUES (34, 29, 98)
SET IDENTITY_INSERT [dbo].[Stock] OFF
GO
ALTER TABLE [dbo].[Malfunction]  WITH CHECK ADD  CONSTRAINT [FK_Malfunction_Brand] FOREIGN KEY([Brand])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Malfunction] CHECK CONSTRAINT [FK_Malfunction_Brand]
GO
ALTER TABLE [dbo].[Malfunction]  WITH CHECK ADD  CONSTRAINT [FK_Malfunction_Customer1] FOREIGN KEY([Customer Id])
REFERENCES [dbo].[Customer] ([Customer Id])
GO
ALTER TABLE [dbo].[Malfunction] CHECK CONSTRAINT [FK_Malfunction_Customer1]
GO
ALTER TABLE [dbo].[Malfunction]  WITH CHECK ADD  CONSTRAINT [FK_Malfunction_Model] FOREIGN KEY([Model])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[Malfunction] CHECK CONSTRAINT [FK_Malfunction_Model]
GO
ALTER TABLE [dbo].[Model]  WITH CHECK ADD  CONSTRAINT [FK_Model_Brand] FOREIGN KEY([Brand Id])
REFERENCES [dbo].[Brand] ([Id])
GO
ALTER TABLE [dbo].[Model] CHECK CONSTRAINT [FK_Model_Brand]
GO
ALTER TABLE [dbo].[Personnel]  WITH CHECK ADD  CONSTRAINT [FK_Personnel_Authority1] FOREIGN KEY([AuthorityId])
REFERENCES [dbo].[Authority] ([Id])
GO
ALTER TABLE [dbo].[Personnel] CHECK CONSTRAINT [FK_Personnel_Authority1]
GO
ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_Customer] FOREIGN KEY([Customer Id])
REFERENCES [dbo].[Customer] ([Customer Id])
GO
ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_Customer]
GO
ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_Malfunction] FOREIGN KEY([Malfunction Id])
REFERENCES [dbo].[Malfunction] ([Id])
GO
ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_Malfunction]
GO
ALTER TABLE [dbo].[Repair]  WITH CHECK ADD  CONSTRAINT [FK_Repair_SparePart] FOREIGN KEY([Spare Part Id])
REFERENCES [dbo].[SparePart] ([Id])
GO
ALTER TABLE [dbo].[Repair] CHECK CONSTRAINT [FK_Repair_SparePart]
GO
ALTER TABLE [dbo].[SparePart]  WITH CHECK ADD  CONSTRAINT [FK_SparePart_Model] FOREIGN KEY([Model Id])
REFERENCES [dbo].[Model] ([Id])
GO
ALTER TABLE [dbo].[SparePart] CHECK CONSTRAINT [FK_SparePart_Model]
GO
ALTER TABLE [dbo].[SparePart]  WITH CHECK ADD  CONSTRAINT [FK_SparePart_Stock] FOREIGN KEY([Stock Id])
REFERENCES [dbo].[Stock] ([Id])
GO
ALTER TABLE [dbo].[SparePart] CHECK CONSTRAINT [FK_SparePart_Stock]
GO
ALTER TABLE [dbo].[Stock]  WITH CHECK ADD  CONSTRAINT [FK_Stock_SparePart] FOREIGN KEY([Spare Part Id])
REFERENCES [dbo].[SparePart] ([Id])
GO
ALTER TABLE [dbo].[Stock] CHECK CONSTRAINT [FK_Stock_SparePart]
GO
/****** Object:  StoredProcedure [dbo].[AddCustomer]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddCustomer]
@IdentificationNumber nchar(11),
@Name nvarchar(20),
@Surname nvarchar(20),
@Email varchar(20),
@PhoneNumber nchar(50),
@Address nvarchar(200)

as begin

insert into Customer([Identification Number],[Name],Surname,Email,[Phone Number],[Address]) values (@IdentificationNumber,@Name,@Surname,@Email,@PhoneNumber,@Address)

end
GO
/****** Object:  StoredProcedure [dbo].[AddMalfunction]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddMalfunction]
@CustomerId int,
@Brand int,
@Model int,
@MalfunctionDescription text,
@ExternalDescription text,
@DeviceAccessories text,
@EstimatedPrice money,
@DeviceStatus bit

as begin

insert into Malfunction([Customer Id],[Brand],Model,[Malfunction Description],[Extenal Description],[Device Accessories],[Estimated Price],[Device Status]) values (@CustomerId,@Brand,@Model,@MalfunctionDescription,@ExternalDescription,@DeviceAccessories,@EstimatedPrice,@DeviceStatus)

end
GO
/****** Object:  StoredProcedure [dbo].[AddPersonnel]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddPersonnel]
@UserName nvarchar(30),
@Password nvarchar(30),
@Name nvarchar(20),
@Surname nvarchar(20),
@AuthorityId int,
@Email nvarchar(50),
@Address nvarchar(200),
@Salary int,
@LoginStatus bit

as begin

insert into Personnel(UserName,[Password],[Name],Surname,AuthorityId,Email,[Address],[Salary],[Login Status]) values (@UserName,@Password,@Name,@Surname,@AuthorityId,@Email,@Address,@Salary,@LoginStatus)

end
GO
/****** Object:  StoredProcedure [dbo].[AddRepair]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[AddRepair]

@MalfunctionId int,
@CustomerId int,
@RepairProcess text,
@WorkmanshipPrice int,
@SparePartId int,
@SparePartAmount int,
@SparePartPrice int

as begin

insert into Repair([Malfunction Id],[Customer Id],[Repair Process],[Workmanship Price],[Spare Part Id],[Spare Part Amount],[Spare Part Price]) values (@MalfunctionId,@CustomerId,@RepairProcess,@WorkmanshipPrice,@SparePartId,@SparePartAmount,@SparePartPrice)

end
GO
/****** Object:  StoredProcedure [dbo].[DeleteCustomer]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[DeleteCustomer]
@CustomerId int
as begin

delete from Customer where [Customer Id]=@CustomerId
end
GO
/****** Object:  StoredProcedure [dbo].[DeletePersonnel]    Script Date: 5.06.2022 23:21:19 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[DeletePersonnel]
@UserName nvarchar(30)
as begin

delete from Personnel where UserName=@UserName
end
GO
USE [master]
GO
ALTER DATABASE [TecnicalServisDB] SET  READ_WRITE 
GO
