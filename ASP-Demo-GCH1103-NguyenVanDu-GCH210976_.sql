USE [master]
GO
/****** Object:  Database [ASPCoreNet]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE DATABASE [ASPCoreNet]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'ASPCoreNet', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASPCoreNet.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'ASPCoreNet_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\ASPCoreNet_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [ASPCoreNet] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ASPCoreNet].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ASPCoreNet] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ASPCoreNet] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ASPCoreNet] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ASPCoreNet] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ASPCoreNet] SET ARITHABORT OFF 
GO
ALTER DATABASE [ASPCoreNet] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ASPCoreNet] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ASPCoreNet] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ASPCoreNet] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ASPCoreNet] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ASPCoreNet] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ASPCoreNet] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ASPCoreNet] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ASPCoreNet] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ASPCoreNet] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ASPCoreNet] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ASPCoreNet] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ASPCoreNet] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ASPCoreNet] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ASPCoreNet] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ASPCoreNet] SET READ_COMMITTED_SNAPSHOT ON 
GO
ALTER DATABASE [ASPCoreNet] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ASPCoreNet] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ASPCoreNet] SET  MULTI_USER 
GO
ALTER DATABASE [ASPCoreNet] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ASPCoreNet] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ASPCoreNet] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ASPCoreNet] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ASPCoreNet] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ASPCoreNet] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ASPCoreNet] SET QUERY_STORE = OFF
GO
USE [ASPCoreNet]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoleClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoleClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](450) NOT NULL,
	[Name] [nvarchar](256) NULL,
	[NormalizedName] [nvarchar](256) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](450) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[ProviderDisplayName] [nvarchar](max) NULL,
	[UserId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](450) NOT NULL,
	[RoleId] [nvarchar](450) NOT NULL,
 CONSTRAINT [PK_AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](450) NOT NULL,
	[UserName] [nvarchar](256) NULL,
	[NormalizedUserName] [nvarchar](256) NULL,
	[Email] [nvarchar](256) NULL,
	[NormalizedEmail] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[ConcurrencyStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEnd] [datetimeoffset](7) NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserTokens](
	[UserId] [nvarchar](450) NOT NULL,
	[LoginProvider] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](128) NOT NULL,
	[Value] [nvarchar](max) NULL,
 CONSTRAINT [PK_AspNetUserTokens] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[LoginProvider] ASC,
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Book]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Book](
	[BookID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [nvarchar](60) NOT NULL,
	[Author] [nvarchar](max) NULL,
	[UrlImage] [nvarchar](max) NULL,
	[Description] [nvarchar](max) NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[Rating] [nvarchar](max) NULL,
	[CategoryID] [int] NOT NULL,
	[Status] [nvarchar](max) NULL,
 CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED 
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Category]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Category](
	[CategoryID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](max) NULL,
 CONSTRAINT [PK_Category] PRIMARY KEY CLUSTERED 
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OrderItems]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OrderItems](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[BookID] [int] NOT NULL,
	[Quantity] [int] NOT NULL,
	[Price] [decimal](18, 2) NOT NULL,
	[OrderId] [int] NOT NULL,
 CONSTRAINT [PK_OrderItems] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Orders]    Script Date: 12/16/2023 8:30:50 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Orders](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](max) NOT NULL,
	[OrderDate] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_Orders] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'00000000000000_CreateIdentitySchema', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231204173623_initialCreate', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231204185652_AddStatusToProduct', N'6.0.23')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20231206062430_Order', N'6.0.23')
GO
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'AD', N'Admin', N'Admin', N'Admin')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'MOD', N'Mod', N'Mod', N'Mod')
GO
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'57cf47b0-db00-4fdb-883d-969239c5a065', N'AD')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'44d740f2-c3eb-4dc7-85b2-9949040bae63', N'MOD')
GO
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'44d740f2-c3eb-4dc7-85b2-9949040bae63', N'mod@gmail.com', N'MOD@GMAIL.COM', N'mod@gmail.com', N'MOD@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKD+7CHg5XDCwzQM/7teoA4tkM/+EjzzFwaLJnopJ/niuUmzVQ28+Pt/2Pws334s/Q==', N'5OH3PX4XUVCABY7D2V6NV7FU4C2DUL3D', N'74e4f561-09c1-463d-9bf7-c7eabba214c8', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'57cf47b0-db00-4fdb-883d-969239c5a065', N'admin@gmail.com', N'ADMIN@GMAIL.COM', N'admin@gmail.com', N'ADMIN@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEB/deBkdXfkm9/y8E+vuLv8G7aMrggKwp2hQcmPCXGnU+79AYeTpMpGRdPzkfYK/jg==', N'JJRYGSHKPMWUDYHCNUEWNVF4ZC4ZEE7H', N'd817b482-8024-4bae-a894-c133e36980e5', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'70c1dfdd-b349-49bd-9813-4726dee249af', N'test2@gmail.com', N'TEST2@GMAIL.COM', N'test2@gmail.com', N'TEST2@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEJ42DqwWoKLH55Ggr/gmHrrkBipcj5SO6t4rj/mppPPpU/J5A2gChUUhrj1190Ge7Q==', N'E3Z66EOYTK6QVPRYA6HJYOCF3QO3GJJP', N'ba67351d-51a1-4ab6-8bd4-cd2b75b841a2', NULL, 0, 0, NULL, 1, 0)
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount]) VALUES (N'898d47b5-c536-402f-aad0-1bfd7caad043', N'test1@gmail.com', N'TEST1@GMAIL.COM', N'test1@gmail.com', N'TEST1@GMAIL.COM', 1, N'AQAAAAEAACcQAAAAEKPupzgCnrXFWcEbc3gYgR9dRFIRdgUnjqLMwQ+IIwKioeKDD/qjmcc1Mnf4f2TkZg==', N'3YCPLKF6LWFIKK5LNXSDFPX5MJXKRKRC', N'57b24544-b81f-46c1-9a04-08b578ea6709', NULL, 0, 0, NULL, 1, 0)
GO
SET IDENTITY_INSERT [dbo].[Book] ON 

INSERT [dbo].[Book] ([BookID], [Title], [Author], [UrlImage], [Description], [Price], [Rating], [CategoryID], [Status]) VALUES (1, N'Prefecture D', N'George Orwell', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/282/917/products/41ahnsgy0bl-sx331-bo1-204-203-200.jpg?v=1690190585883', N'From the internationally bestselling creator of Wreck This Journal, a curious, engaging, and creative rethinking of all the different things a book can be.', CAST(6.00 AS Decimal(18, 2)), N'5', 1, NULL)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [UrlImage], [Description], [Price], [Rating], [CategoryID], [Status]) VALUES (2, N'Down and Out in Paris', N'Dream Fairy World', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/282/917/products/41hr1wwilql-sx326-bo1-204-203-200.jpg?v=1690189784107', N'A collection of tense thrilllers, each centered on a mystery and the unfortunate officer tasked with solving it, set in the world of Hideo Yokoyama''s bestselling Six Four.', CAST(3.20 AS Decimal(18, 2)), N'5', 2, NULL)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [UrlImage], [Description], [Price], [Rating], [CategoryID], [Status]) VALUES (3, N'The Great Butler Is The Beast', N'Dream Fairy World', N'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSTieW5cy6yRZDIXuiXjVsw5Myih7tcgaGMo5m_EUlo9QSQ0a0zt-dW99JOWhmUitY-lfM&usqp=CAU', N'A collection of tense thrilllers, each centered on a mystery and the unfortunate officer tasked with solving it, set in the world of Hideo Yokoyama''s bestselling Six Four.', CAST(15.00 AS Decimal(18, 2)), N'3', 2, NULL)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [UrlImage], [Description], [Price], [Rating], [CategoryID], [Status]) VALUES (4, N'Empire of the Sun', N'J. G. Ballard', N'https://bizweb.dktcdn.net/thumb/1024x1024/100/282/917/products/41umhbkrool-sx324-bo1-204-203-200.jpg?v=1690172814120', N'From the author of 1984, the classic semi-autobiographical story about the adventures of a penniless British writer in two cities.', CAST(6.00 AS Decimal(18, 2)), N'3', 2, NULL)
INSERT [dbo].[Book] ([BookID], [Title], [Author], [UrlImage], [Description], [Price], [Rating], [CategoryID], [Status]) VALUES (5, N'This Is Not a Book', N'Hideo Yokoyama', N'https://st.nettruyenus.com/data/comics/188/dai-quan-gia-la-ma-hoang-904.jpg', N'From the author of 1984, the classic semi-autobiographical story about the adventures of a penniless British writer in two cities.', CAST(5.00 AS Decimal(18, 2)), N'5', 2, NULL)
SET IDENTITY_INSERT [dbo].[Book] OFF
GO
SET IDENTITY_INSERT [dbo].[Category] ON 

INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (1, N'Anime')
INSERT [dbo].[Category] ([CategoryID], [Name]) VALUES (2, N'Action')
SET IDENTITY_INSERT [dbo].[Category] OFF
GO
SET IDENTITY_INSERT [dbo].[OrderItems] ON 

INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (1, 1, 2, CAST(12.00 AS Decimal(18, 2)), 1)
INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (2, 2, 2, CAST(6.40 AS Decimal(18, 2)), 2)
INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (3, 2, 1, CAST(3.20 AS Decimal(18, 2)), 3)
INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (4, 3, 1, CAST(15.00 AS Decimal(18, 2)), 4)
INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (5, 2, 3, CAST(9.60 AS Decimal(18, 2)), 5)
INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (6, 2, 1, CAST(3.20 AS Decimal(18, 2)), 6)
INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (7, 3, 1, CAST(15.00 AS Decimal(18, 2)), 6)
INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (8, 4, 2, CAST(12.00 AS Decimal(18, 2)), 7)
INSERT [dbo].[OrderItems] ([Id], [BookID], [Quantity], [Price], [OrderId]) VALUES (9, 3, 1, CAST(15.00 AS Decimal(18, 2)), 7)
SET IDENTITY_INSERT [dbo].[OrderItems] OFF
GO
SET IDENTITY_INSERT [dbo].[Orders] ON 

INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (1, N'57cf47b0-db00-4fdb-883d-969239c5a065', CAST(N'2023-12-06T13:32:50.1609598' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (2, N'57cf47b0-db00-4fdb-883d-969239c5a065', CAST(N'2023-12-07T22:08:21.6116866' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (3, N'57cf47b0-db00-4fdb-883d-969239c5a065', CAST(N'2023-12-07T22:24:54.2167927' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (4, N'57cf47b0-db00-4fdb-883d-969239c5a065', CAST(N'2023-12-07T22:25:10.1935465' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (5, N'57cf47b0-db00-4fdb-883d-969239c5a065', CAST(N'2023-12-07T22:27:09.1697325' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (6, N'57cf47b0-db00-4fdb-883d-969239c5a065', CAST(N'2023-12-07T23:39:38.3002709' AS DateTime2))
INSERT [dbo].[Orders] ([Id], [UserId], [OrderDate]) VALUES (7, N'44d740f2-c3eb-4dc7-85b2-9949040bae63', CAST(N'2023-12-08T13:41:38.4642574' AS DateTime2))
SET IDENTITY_INSERT [dbo].[Orders] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [EmailIndex]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_Book_CategoryID]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_Book_CategoryID] ON [dbo].[Book]
(
	[CategoryID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_BookID]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_BookID] ON [dbo].[OrderItems]
(
	[BookID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
/****** Object:  Index [IX_OrderItems_OrderId]    Script Date: 12/16/2023 8:30:50 AM ******/
CREATE NONCLUSTERED INDEX [IX_OrderItems_OrderId] ON [dbo].[OrderItems]
(
	[OrderId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetRoleClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetRoleClaims] CHECK CONSTRAINT [FK_AspNetRoleClaims_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_AspNetUserClaims_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_AspNetUserLogins_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_AspNetUserRoles_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserTokens]  WITH CHECK ADD  CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserTokens] CHECK CONSTRAINT [FK_AspNetUserTokens_AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[Book]  WITH CHECK ADD  CONSTRAINT [FK_Book_Category_CategoryID] FOREIGN KEY([CategoryID])
REFERENCES [dbo].[Category] ([CategoryID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[Book] CHECK CONSTRAINT [FK_Book_Category_CategoryID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Book_BookID] FOREIGN KEY([BookID])
REFERENCES [dbo].[Book] ([BookID])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Book_BookID]
GO
ALTER TABLE [dbo].[OrderItems]  WITH CHECK ADD  CONSTRAINT [FK_OrderItems_Orders_OrderId] FOREIGN KEY([OrderId])
REFERENCES [dbo].[Orders] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[OrderItems] CHECK CONSTRAINT [FK_OrderItems_Orders_OrderId]
GO
USE [master]
GO
ALTER DATABASE [ASPCoreNet] SET  READ_WRITE 
GO
