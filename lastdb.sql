USE [master]
GO
/****** Object:  Database [photographyDb]    Script Date: 1/20/2020 9:56:22 PM ******/
CREATE DATABASE [photographyDb]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'photographyDb', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\photographyDb.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'photographyDb_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\photographyDb_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [photographyDb] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [photographyDb].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [photographyDb] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [photographyDb] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [photographyDb] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [photographyDb] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [photographyDb] SET ARITHABORT OFF 
GO
ALTER DATABASE [photographyDb] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [photographyDb] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [photographyDb] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [photographyDb] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [photographyDb] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [photographyDb] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [photographyDb] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [photographyDb] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [photographyDb] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [photographyDb] SET  DISABLE_BROKER 
GO
ALTER DATABASE [photographyDb] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [photographyDb] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [photographyDb] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [photographyDb] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [photographyDb] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [photographyDb] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [photographyDb] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [photographyDb] SET RECOVERY FULL 
GO
ALTER DATABASE [photographyDb] SET  MULTI_USER 
GO
ALTER DATABASE [photographyDb] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [photographyDb] SET DB_CHAINING OFF 
GO
ALTER DATABASE [photographyDb] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [photographyDb] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [photographyDb] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'photographyDb', N'ON'
GO
USE [photographyDb]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/20/2020 9:56:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoleClaims]    Script Date: 1/20/2020 9:56:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 1/20/2020 9:56:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 1/20/2020 9:56:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 1/20/2020 9:56:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 1/20/2020 9:56:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 1/20/2020 9:56:23 PM ******/
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
	[Discriminator] [nvarchar](max) NOT NULL,
	[FullName] [nvarchar](150) NULL,
 CONSTRAINT [PK_AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserTokens]    Script Date: 1/20/2020 9:56:23 PM ******/
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
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Categorie]    Script Date: 1/20/2020 9:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categorie](
	[CategoeryId] [int] IDENTITY(1,1) NOT NULL,
	[NameCategory] [nvarchar](25) NULL,
	[CategoryDate] [datetime] NOT NULL,
 CONSTRAINT [PK_Categorie] PRIMARY KEY CLUSTERED 
(
	[CategoeryId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[photosAlbum]    Script Date: 1/20/2020 9:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[photosAlbum](
	[PhotoId] [int] IDENTITY(1,1) NOT NULL,
	[CategoeryId] [int] NOT NULL,
	[AlbumName] [nvarchar](50) NULL,
	[AlbumTitle] [nvarchar](max) NULL,
	[AlbumDate] [datetime] NULL CONSTRAINT [DF_photosAlbum_AlbumDate]  DEFAULT (getdate()),
	[ImageNameO] [varchar](140) NULL,
	[ImageNameT] [varchar](140) NULL,
	[ImageNameTh] [varchar](140) NULL,
	[ImageNameF] [varchar](140) NULL,
	[ImageNameFi] [varchar](140) NULL,
	[ImageNameS] [varchar](140) NULL,
	[ImageNameSe] [varchar](140) NULL,
	[ImageNamE] [varchar](140) NULL,
	[ImageNameN] [varchar](140) NULL,
	[ImageNameTe] [varchar](140) NULL,
 CONSTRAINT [PK_photosAlbum] PRIMARY KEY CLUSTERED 
(
	[PhotoId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[User]    Script Date: 1/20/2020 9:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User](
	[ID] [nvarchar](450) NOT NULL,
	[FirstName] [nvarchar](max) NULL,
	[LastName] [nvarchar](max) NULL,
 CONSTRAINT [PK_User] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191110122303_AllTable', N'2.2.6-servicing-10079')
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20191202224642_LoginAndpermission', N'2.2.6-servicing-10079')
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'1', N'Admin', N'Admin', NULL)
INSERT [dbo].[AspNetRoles] ([Id], [Name], [NormalizedName], [ConcurrencyStamp]) VALUES (N'2', N'Customer', N'Customer', NULL)
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'2d0a34f0-3720-43c7-8710-c6577fe415e5', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'6261331b-b95a-4fc9-82df-73cc31e2428c', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'7a3aa479-2068-4cae-88f0-4b9786844f35', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'8f23be82-442d-479b-a987-f810df06288c', N'1')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'04a1328b-41d6-43ec-a14f-81440f988390', N'2')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'd258dae2-6c0b-4252-9288-a0548abf8a44', N'2')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'04a1328b-41d6-43ec-a14f-81440f988390', N'UserCustomer', N'USERCUSTOMER', N'UserCustomer@UserCustomer', N'USERCUSTOMER@USERCUSTOMER', 0, N'AQAAAAEAACcQAAAAEHWcg/umLJ+FHeVeBpzzvsvIzqmoE0Xj7KM1ygbaGeqyjJVLyX/Tg45yGuF/fgj9cg==', N'CPQWVHTNO2QBUQHX6UVCDCF44MKFNQSZ', N'9abf8947-4d79-4402-9404-da14e9963bb0', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'UserCustomer')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'2d0a34f0-3720-43c7-8710-c6577fe415e5', N'Kemo', N'KEMO', N'Kemo@Kemo.com', N'KEMO@KEMO.COM', 0, N'AQAAAAEAACcQAAAAEPRK7pv2TpuK21jV0q4/sWn1a8Dwvr3Eh6nnbbWdDSkpivYpsSfiljDx4WXyyqMfEg==', N'AS4T6WQ4AW5JRMRA4QZRMSQFXVFOGD32', N'2331ff6d-f66a-4214-bafb-8db5f6bd6c5e', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'Kemo')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'56260135-886f-49e0-b325-391ceb2a87ef', N'asdas', N'ASDAS', N'asdas@asdas.asdas', N'ASDAS@ASDAS.ASDAS', 0, N'AQAAAAEAACcQAAAAEOhJwQsjr6FGk8OVVKVPGcfftpngvrLIkfVa0wY47ok/BgY1Wtehqnjl2tYF+Kk+Rw==', N'Q6IM373KU3BCIGNQM5O6FGPB3ZGZY3AQ', N'77b31723-6796-4d20-9919-57aead7262a7', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'asdas')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'6261331b-b95a-4fc9-82df-73cc31e2428c', N'Nemo', N'NEMO', N'nemo@gmail.com', N'NEMO@GMAIL.COM', 0, N'AQAAAAEAACcQAAAAEH3wCnqKLExSJbm6mC8GWGZvszWzOS8mxHM4P8B9D6N8ajBNjvz/LrMta9mYWjNHzA==', N'RQIM4VNUKAZWMIO2467FUVAYFMUR5KUW', N'5e378d5a-7232-4bc9-9da8-e6e60275f265', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'nemo')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'7a3aa479-2068-4cae-88f0-4b9786844f35', N'UserAdmin', N'USERADMIN', N'UserAdmin@UserAdmin', N'USERADMIN@USERADMIN', 0, N'AQAAAAEAACcQAAAAEF6fBHRiOJg8GCqZTWPkdCS7dZVVxkCP5kpKOwJ6FgbzZsDSrsc3iPaEKbhnMHe7qg==', N'4D43TOSJ2CVVR73LBEVQMPFNASPX7YI6', N'92c3aa96-690d-4ed0-9c95-13d457f15e25', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'UserAdmin')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'8f23be82-442d-479b-a987-f810df06288c', N'User', N'USER', N'User@UserAdmin', N'USER@USERADMIN', 0, N'AQAAAAEAACcQAAAAEPdWRsqtJz7IdSdpxVOoZPGbx1ggJv1g/32s4UCNy4BLvqhfxPIMKp5RlZ2e8D965A==', N'LBDNUS2OANORG5V7VTJLEG3EAF6PVEV6', N'f7b725c1-8578-4a18-aa3d-a9b6439f3f22', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'User')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'bb5f0dbd-fca9-438d-983e-a500a233b3ba', N'bishoe', N'BISHOE', N'sadjsalkdjlk@yahoo.com', N'SADJSALKDJLK@YAHOO.COM', 0, N'AQAAAAEAACcQAAAAEO/1PXUmX/fcZDUSeVmCjIgR+eaFoAU3IEAQK1nrr0xApg+v4soiSdA/UYlfHKQUAw==', N'ESIFPC53UUQAEYRMCFMOSQTV6FEF3LJH', N'6246a9c4-b9c4-4f08-a60f-e1bd32099649', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'bishoenb')
INSERT [dbo].[AspNetUsers] ([Id], [UserName], [NormalizedUserName], [Email], [NormalizedEmail], [EmailConfirmed], [PasswordHash], [SecurityStamp], [ConcurrencyStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEnd], [LockoutEnabled], [AccessFailedCount], [Discriminator], [FullName]) VALUES (N'd258dae2-6c0b-4252-9288-a0548abf8a44', N'test', N'TEST', N'test@test.com', N'TEST@TEST.COM', 0, N'AQAAAAEAACcQAAAAEDPjYGmof0nxAQdQaRPieHWeEhuF6DgcHq99AuffZmMFYCfEub+35TQNN/+izC42jQ==', N'XP6Y2WXIHY575QZI6WZBZGU6KBRP6MMZ', N'7502d99b-f2c9-47d8-9b1b-5e148534eb5e', NULL, 0, 0, NULL, 1, 0, N'ApplicationUser', N'test')
SET IDENTITY_INSERT [dbo].[Categorie] ON 

INSERT [dbo].[Categorie] ([CategoeryId], [NameCategory], [CategoryDate]) VALUES (2, N'Sports', CAST(N'2010-01-01 00:00:00.000' AS DateTime))
INSERT [dbo].[Categorie] ([CategoeryId], [NameCategory], [CategoryDate]) VALUES (3, N'News', CAST(N'2010-10-10 00:00:00.000' AS DateTime))
INSERT [dbo].[Categorie] ([CategoeryId], [NameCategory], [CategoryDate]) VALUES (4, N'TestCat', CAST(N'2020-10-10 00:00:00.000' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categorie] OFF
SET IDENTITY_INSERT [dbo].[photosAlbum] ON 

INSERT [dbo].[photosAlbum] ([PhotoId], [CategoeryId], [AlbumName], [AlbumTitle], [AlbumDate], [ImageNameO], [ImageNameT], [ImageNameTh], [ImageNameF], [ImageNameFi], [ImageNameS], [ImageNameSe], [ImageNamE], [ImageNameN], [ImageNameTe]) VALUES (1, 3, N'3.jpgUpdate', N'3.jpgUpdate', CAST(N'2019-12-28 19:55:36.867' AS DateTime), N'3.jpg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[photosAlbum] ([PhotoId], [CategoeryId], [AlbumName], [AlbumTitle], [AlbumDate], [ImageNameO], [ImageNameT], [ImageNameTh], [ImageNameF], [ImageNameFi], [ImageNameS], [ImageNameSe], [ImageNamE], [ImageNameN], [ImageNameTe]) VALUES (5, 4, N'sads', N'sads', CAST(N'2019-11-28 19:55:36.867' AS DateTime), N'3.jpg', N'', N'', N'', N'', N'', N'', N'', N'', NULL)
INSERT [dbo].[photosAlbum] ([PhotoId], [CategoeryId], [AlbumName], [AlbumTitle], [AlbumDate], [ImageNameO], [ImageNameT], [ImageNameTh], [ImageNameF], [ImageNameFi], [ImageNameS], [ImageNameSe], [ImageNamE], [ImageNameN], [ImageNameTe]) VALUES (1005, 4, N'cxz Update ', N'cxz Update ', CAST(N'2019-11-29 05:11:27.173' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[photosAlbum] ([PhotoId], [CategoeryId], [AlbumName], [AlbumTitle], [AlbumDate], [ImageNameO], [ImageNameT], [ImageNameTh], [ImageNameF], [ImageNameFi], [ImageNameS], [ImageNameSe], [ImageNamE], [ImageNameN], [ImageNameTe]) VALUES (2005, 4, N'dwsas', N'asdsad', CAST(N'2019-11-26 05:11:27.173' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[photosAlbum] ([PhotoId], [CategoeryId], [AlbumName], [AlbumTitle], [AlbumDate], [ImageNameO], [ImageNameT], [ImageNameTh], [ImageNameF], [ImageNameFi], [ImageNameS], [ImageNameSe], [ImageNamE], [ImageNameN], [ImageNameTe]) VALUES (2006, 2, N'dwsas', N'asdsad', CAST(N'2019-10-29 05:11:27.173' AS DateTime), NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL)
INSERT [dbo].[photosAlbum] ([PhotoId], [CategoeryId], [AlbumName], [AlbumTitle], [AlbumDate], [ImageNameO], [ImageNameT], [ImageNameTh], [ImageNameF], [ImageNameFi], [ImageNameS], [ImageNameSe], [ImageNamE], [ImageNameN], [ImageNameTe]) VALUES (2007, 4, N'http://localhost/', N'http://localhost/', CAST(N'2020-01-12 00:37:37.033' AS DateTime), N'1.jpg', N'3b75218d-4a03-4d82-86af-9efe9f3e4d00encodedna.png', N'3a7e9650-928f-4a0b-9c31-aca89f7479f0feed-icon16x16.png', N'cf229ac5-195d-4bd4-a57c-013bb2e8a725JAVASCRIPT(1).png', N'77a76281-b8b1-4fd6-82c1-e4c3d9ebac2dJAVASCRIPT.png', N'7de0fb6d-05fe-407a-a2b0-dafd1f521bb1jq1.png', N'b011c266-11c0-42e4-9b14-ed4f550a7f18popular.html', N'def93199-7bb2-4ac7-9c48-5f2b4ff3c30dSQLSERVER.png', N'1a3ad70f-f4a6-4c4e-aff5-b07e0792cbfcusing-angular-4-with-select-dropdown-list-using-web-api.png', N'def93199-7bb2-4ac7-9c48-5f2b4ff3c30dSQLSERVER.png')
SET IDENTITY_INSERT [dbo].[photosAlbum] OFF
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetRoleClaims_RoleId]    Script Date: 1/20/2020 9:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetRoleClaims_RoleId] ON [dbo].[AspNetRoleClaims]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 1/20/2020 9:56:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[NormalizedName] ASC
)
WHERE ([NormalizedName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserClaims_UserId]    Script Date: 1/20/2020 9:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserClaims_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserLogins_UserId]    Script Date: 1/20/2020 9:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserLogins_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_AspNetUserRoles_RoleId]    Script Date: 1/20/2020 9:56:23 PM ******/
CREATE NONCLUSTERED INDEX [IX_AspNetUserRoles_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [EmailIndex]    Script Date: 1/20/2020 9:56:23 PM ******/
CREATE NONCLUSTERED INDEX [EmailIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedEmail] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 1/20/2020 9:56:23 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[NormalizedUserName] ASC
)
WHERE ([NormalizedUserName] IS NOT NULL)
WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
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
/****** Object:  StoredProcedure [dbo].[_SelectAbumById]    Script Date: 1/20/2020 9:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO



CREATE proc [dbo].[_SelectAbumById]
@CategoeryId int

as
begin
SELECT        Categorie.CategoeryId, photosAlbum.PhotoId, photosAlbum.AlbumName, photosAlbum.ImageNameO, photosAlbum.CategoeryId AS Expr1, photosAlbum.AlbumTitle, photosAlbum.AlbumDate, photosAlbum.ImageNameT, 
                         photosAlbum.ImageNameTh, photosAlbum.ImageNameF, photosAlbum.ImageNameFi, photosAlbum.ImageNameS, photosAlbum.ImageNameSe, photosAlbum.ImageNamE, photosAlbum.ImageNameN, 
                         photosAlbum.ImageNameTe
FROM            Categorie INNER JOIN
                         photosAlbum ON Categorie.CategoeryId = photosAlbum.CategoeryId where Categorie.CategoeryId = @CategoeryId

end

GO
/****** Object:  StoredProcedure [dbo].[_SPSlider]    Script Date: 1/20/2020 9:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE proc [dbo].[_SPSlider]
as
begin
select top(4) * from photosAlbum order by  PhotoId desc 
end


GO
/****** Object:  StoredProcedure [dbo].[Usp_GetAllphotosAlbum]    Script Date: 1/20/2020 9:56:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[Usp_GetAllphotosAlbum]  
 @PageNo INT ,  
 @PageSize INT ,  
 @SortOrder VARCHAR(200)  ,
 @CategoeryId int
As  
Begin  
  
    Select * From   (Select ROW_NUMBER() Over (  
    Order by AlbumName ) AS 'RowNum', *  
         from   [photosAlbum]  
        )t  where t.RowNum Between ((@PageNo-1)*@PageSize +1) AND (@PageNo*@pageSize)  and CategoeryId = @CategoeryId
        
End   

GO
USE [master]
GO
ALTER DATABASE [photographyDb] SET  READ_WRITE 
GO
