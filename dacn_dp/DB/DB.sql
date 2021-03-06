USE [master]
GO
/****** Object:  Database [Petpro]    Script Date: 12/11/2020 3:32:42 PM ******/
CREATE DATABASE [Petpro]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Petpro', FILENAME = N'D:\thucung\Petpro.mdf' , SIZE = 4096KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'Petpro_log', FILENAME = N'D:\thucung\Petpro_log.ldf' , SIZE = 3456KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [Petpro] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Petpro].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Petpro] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Petpro] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Petpro] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Petpro] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Petpro] SET ARITHABORT OFF 
GO
ALTER DATABASE [Petpro] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [Petpro] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Petpro] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Petpro] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Petpro] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Petpro] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Petpro] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Petpro] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Petpro] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Petpro] SET  DISABLE_BROKER 
GO
ALTER DATABASE [Petpro] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Petpro] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Petpro] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Petpro] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Petpro] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Petpro] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Petpro] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Petpro] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [Petpro] SET  MULTI_USER 
GO
ALTER DATABASE [Petpro] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Petpro] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Petpro] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Petpro] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [Petpro] SET DELAYED_DURABILITY = DISABLED 
GO
USE [Petpro]
GO
/****** Object:  Table [dbo].[__MigrationHistory]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[__MigrationHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ContextKey] [nvarchar](300) NOT NULL,
	[Model] [varbinary](max) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK_dbo.__MigrationHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC,
	[ContextKey] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[AccountLogin]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AccountLogin](
	[Username] [nvarchar](50) NULL,
	[Password] [nchar](10) NULL
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetRoles]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetRoles](
	[Id] [nvarchar](128) NOT NULL,
	[Name] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetRoles] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserClaims]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserClaims](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
	[ClaimType] [nvarchar](max) NULL,
	[ClaimValue] [nvarchar](max) NULL,
 CONSTRAINT [PK_dbo.AspNetUserClaims] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserLogins]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserLogins](
	[LoginProvider] [nvarchar](128) NOT NULL,
	[ProviderKey] [nvarchar](128) NOT NULL,
	[UserId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserLogins] PRIMARY KEY CLUSTERED 
(
	[LoginProvider] ASC,
	[ProviderKey] ASC,
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUserRoles]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUserRoles](
	[UserId] [nvarchar](128) NOT NULL,
	[RoleId] [nvarchar](128) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUserRoles] PRIMARY KEY CLUSTERED 
(
	[UserId] ASC,
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AspNetUsers](
	[Id] [nvarchar](128) NOT NULL,
	[Email] [nvarchar](256) NULL,
	[EmailConfirmed] [bit] NOT NULL,
	[PasswordHash] [nvarchar](max) NULL,
	[SecurityStamp] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[PhoneNumberConfirmed] [bit] NOT NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[LockoutEndDateUtc] [datetime] NULL,
	[LockoutEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NOT NULL,
	[UserName] [nvarchar](256) NOT NULL,
 CONSTRAINT [PK_dbo.AspNetUsers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaGH] [int] IDENTITY(1,1) NOT NULL,
	[MaTaiKhoan] [nchar](128) NULL,
	[TenSP] [nvarchar](50) NULL,
	[SoLuong] [int] NULL,
	[Gia] [int] NULL,
	[TongTien] [int] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaGH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[KhachHang_dk]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[KhachHang_dk](
	[MaKH] [int] NOT NULL,
	[HoTen] [nvarchar](50) NULL,
	[TaiKhoan] [varchar](50) NULL,
	[MatKhau] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[DiaChi] [nvarchar](200) NULL,
	[DienThoai] [varchar](50) NULL,
	[NgaySinh] [datetime] NULL,
 CONSTRAINT [PK_KhachHang_dk] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LoaiSanPham]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LoaiSanPham](
	[MaLoaiSP] [varchar](10) NOT NULL,
	[TenLoaiSP] [nvarchar](50) NULL,
	[TinhTrang] [nvarchar](3) NULL CONSTRAINT [DF_LoaiSanPham_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_LoaiSanPham] PRIMARY KEY CLUSTERED 
(
	[MaLoaiSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhaSanXuat]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhaSanXuat](
	[MaNSX] [varchar](10) NOT NULL,
	[TenNSX] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_NhaSanXuat_TinhTrang]  DEFAULT ((0)),
 CONSTRAINT [PK_NhaSanXuat] PRIMARY KEY CLUSTERED 
(
	[MaNSX] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PhuongThucThanhToan]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PhuongThucThanhToan](
	[MaPTTT] [varchar](10) NOT NULL,
	[TenPTTT] [nvarchar](50) NULL,
	[TinhTrang] [nchar](10) NULL,
 CONSTRAINT [PK_PhuongThucThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaPTTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SanPham]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[SanPham](
	[MaSP] [varchar](10) NOT NULL,
	[MaLoaiSP] [varchar](10) NULL,
	[MaNSX] [varchar](10) NULL,
	[TenSP] [nvarchar](50) NULL,
	[MoTa] [nvarchar](max) NULL,
	[ChucNang] [nvarchar](max) NULL,
	[HinhChinh] [nvarchar](50) NULL,
	[Hinh1] [nvarchar](50) NULL,
	[Hinh2] [nvarchar](50) NULL,
	[Hinh3] [nvarchar](50) NULL,
	[Hinh4] [nvarchar](50) NULL,
	[Gia] [float] NULL CONSTRAINT [DF_SanPham_Gia]  DEFAULT ((0)),
	[SLDaBan] [int] NULL CONSTRAINT [DF_SanPham_SLDaBan]  DEFAULT ((0)),
	[LuotView] [int] NULL CONSTRAINT [DF_SanPham_LuotView]  DEFAULT ((0)),
	[TinhTrang] [nchar](10) NULL CONSTRAINT [DF_SanPham_TinhTrang]  DEFAULT ((0)),
	[GhiChu] [nvarchar](50) NULL CONSTRAINT [DF_SanPham_GhiChu]  DEFAULT (N'New'),
 CONSTRAINT [PK_SanPham] PRIMARY KEY CLUSTERED 
(
	[MaSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThanhToan]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThanhToan](
	[MaTT] [int] NOT NULL,
	[HoTenKH] [nvarchar](50) NULL,
	[SoDT] [varchar](20) NULL,
	[Email] [nvarchar](100) NULL,
	[DiaChiNhanHang] [nvarchar](50) NULL,
	[TinhThanh] [nvarchar](100) NULL,
	[QuanHuyen] [nvarchar](100) NULL,
	[GhiChu] [nvarchar](100) NULL,
	[TinhTrang] [nvarchar](50) NULL,
	[MaPTTT] [varchar](10) NULL,
 CONSTRAINT [PK_ThanhToan] PRIMARY KEY CLUSTERED 
(
	[MaTT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[__MigrationHistory] ([MigrationId], [ContextKey], [Model], [ProductVersion]) VALUES (N'202004121248405_InitialCreate', N'Thu_Cung_Petpro.Models.ApplicationDbContext', 0x1F8B0800000000000400DD5CDB6EE336107D2FD07F10F4D416A9954B77B10DEC1659276983E68675B6E85B404BB423AC44A912954D50F4CBFAD04FEA2F742851375E74B115DB592CB088C8E199E170480E8743FFF7CFBFE39F9F7CCF78C451EC0664621E8CF64D03133B705CB29C98095D7CFFCEFCF9A7AFBF1A9F39FE93F17B4E77C4E8A0258927E603A5E1B165C5F603F6513CF25D3B0AE260414776E05BC809ACC3FDFD1FAD83030B038409588631FE9010EAFA38FD80CF69406C1CD20479578183BD989743CD2C4535AE918FE310D97862DE3D24F7D3842CEF6F310DA36094B5308D13CF4520CD0C7B0BD3408404145190F5F8638C67340AC872164201F2EE9E430C740BE4C598F7E1B824EFDA9DFD43D61DAB6C9843D9494C03BF27E0C111D78F25365F49CB66A13FD0E019689A3EB35EA75A9C98170E4E8B3E041E284064783CF522463C31AF0A162771788DE9286F38CA20CF2380FB1C449F4655C43DA373BBBDC29E0E47FBECDF9E314D3C9A447842704223E4ED19B7C9DC73EDDFF0F35DF00993C9D1C17C71F4EECD5BE41CBDFD011FBDA9F614FA0A74B50228BA8D821047201B5E14FD370DABDECE121B16CD2A6D32AD802DC1D4308D2BF47489C9923EC0A4397C671AE7EE1376F2126E5C1F890B33091AD12881CFEBC4F3D0DCC345BDD5C893FDDFC0F5F0CDDB41B85EA34777990EBDC01F264E04F3EA03F6D2DAF8C10DB3E9551BEF7B4E761E053EFBAEDB57567B3F0B92C8669D09B42477285A625A976E6C95C6DBC9A419D4F0669DA3EEBE69334965F35692B20EAD321372169B9E0DB9BC2FCBB7B3C59D84210C5E6A5A4C234D06A7DEB04602C29E017406A33332BAD2840EBA9A1081AE7DC92BE2998F5C6F8025B10317F048166EE4E3A297EF033040447ACB7C8BE2185604E757143F34880E7F0E20FA0CDB4904863AA3C80F5F9CDBED4340F075E2CF99FD6F8ED7604373F7393847360DA233C25AAD8D7719D89F82849E11E71451FC91DA3920FBBC73FDEE0083887362DB388ECFC198B1330DC0E1CE012F083D3AEC0DC716A96DBB24530FB9BEDA271196D3FB9CB4F44BD414926FA22153F9274DA25E064B9774133527D58B9A51B48ACAC9FA8ACAC0BA49CA29F582A604AD72665483797CE9080DEFF2A5B0BBEFF3ADB779EBD6828A1A67B042E25F30C1112C63CE2DA21447A41C812EEBC6369C8574F818D317DF9B524EBF232F199AD54AB3215D04869F0D29ECEECF86544C287E741DE695743808E5C400DF895E7DC66A9F7382649B9E0EB56E6E9AF966D600DD743989E3C076D359A00881F100465D7EF0E18CF66846D61B3122021D034377D9960725D0375334AA1B728A3D4CB171626721C2298A6DE4C86A840E393D04CB775485606564A42EDC77124FB0741CB146881D826298A92EA1F2B47089ED86C86BD592D0B2E316C6FA5EF0106B4E71880963D8AA892ECCD581102640C1471894360D8DAD8AC5351BA2C66BD58D799B0B5B8EBB149FD8884DB6F8CE1ABBE4FEDB8B1866B3C636609CCD2AE9228036A8B70D03E56795AE06201E5C76CD40851393C640B94BB51103AD6B6C0B065A57C9AB33D0EC88DA75FC85F3EAAE9967FDA0BCF96DBD515D5BB0CD9A3E76CC3433DF13DA50688123D93C4FE7AC123F51C5E10CE4E4E7B398BBBAA28930F019A6F5904DE9EF2AFD50AB194434A226C0D2D05A40F975A004244DA81EC2E5B1BC46E9B817D103368FBB35C2F2B55F80ADD8808C5DBD16AD10EA2F4F45E3EC74FA287A56588364E49D0E0B151C8541888B57BDE31D94A28BCBCA8AE9E20BF7F1862B1DE383D1A0A016CF55A3A4BC33836B2937CD762DA91CB23E2ED95A5A12DC278D96F2CE0CAE256EA3ED4A5238053DDC82B55454DFC2079A6C79A4A3D86D8ABAB195654CF182B1A549AD1A5FA13074C9B2926AC54B8C59966735FD7ED63FF9C8CF302C3B56E42015D2169C6810A125166A8135487AEE46313D4514CD118BF34C1D5F2253EEAD9AE53F6759DD3EE541CCF7819C9AFDCDEF0AD597F8B5FD56764838CE39F4D2675E4D1A4A57D880BAB9C1D2DF90872245F47E1A78894FF44E96BE757687576D9F95C808634B905F72A2248D49AE6E5DFD9D06479E18030E54E1C7AC3E587A089DCA732FB4AA749D67AA47C9035555145DF06A6B83A773687A0F98E82FF61FAF568497995F3C49A50AC08B7A6254F21C24B04A5D77D47A2A4A15B35ED31D51C837A9420A553DA4AC6695D484AC56AC84A7D1A89AA23B07398FA48A2ED7764756649454A115D52B602B6416EBBAA32A924EAAC08AEAEED865068AB890EEF00EA63DC5ACB5856587DDF5F6300DC6CBAC8AC36C81953BFD2A50A5B82716BFB597C078F94E5A94F6C4B7964565718EF52C4A83A15F816A37E2F505A8F11A5F8F59BBE6AE2DF24DD7FC7ABC7E76FBA2D6211DFA4492827B71F8130E79637EE06A7F64239DC03212D3C8D5081BFC734CB13F6204A3D99FDED473315BCE73822B44DC058E6996DA61C201F19DF0466777DECB5871EC788A03ABEED14C7DCC3690A5451E51643FA048CE9958E34D49092A85A32F88839F26E65F69ABE334B2C1FE4A8BF78C8BF82371FF4CA0E22E4AB0F1B79C033A4C8E7DF3816B475F4474D7EAC51FF759D33DE3268219736CEC0BBA5C6584EBEF247A4993355D439A955F4FBCDE09557B92A0441526C4EA2F10E62E1DE4F5412EE5373E7AFAB6AF68CA17066B212A5E110C8537880A75AF0456C1D2BE1070E093A62F04FA7556FD626015D1B4AF055CD21F4C7C2BD07D19CA5B6E71AB519C8B36B124A57A6ECDB55E2BF172DB7B939492BDD64497D3AE7BC0AD915ABD8265BCB2ACE4C1764745D2F160D8DB34ED17CF34DE95E4E232ED63BB39C59B4C236EB822FAA2B2877720DF4D91BFB3FD1CE14DDB9A2E96BBE38996FD328177CCD87856D7F6F37D376D6CBA30EF8E1B5BAFACDE1DB3B56DED9F5BB6B4CE5BE8D67374E57423CD9D8C2A16DC96839B05CEE1843F0FC008328F327B3AA94EFA6A4A586D615892E899EAB3CD44C6D2C491F84A14CD6CFBF5956FF88D9DE534CD6C35399A4DBCF9FADFC89BD334F3D6643E6E237B58997BA8CAE86E59C79A12A25E53B670AD272DC9E96D3E6BE305FB6B4A0E1E4429B5D9A3B9237E3DB9C083A864C8A9D323F757BEEE85BDB3F2CB8BB07FC7EEB28460BFC348B05DDB350B9A0BB208F2CD5B90282711223457982207B6D49388BA0B6453A86631E6F4ED771AB763371D73EC5C909B848609852E637FEED5025ECC0968E29F2638D7651EDF84E9CF980CD10510D365B1F91BF23E713DA790FB5C1113D24030EF824774D9585216D95D3E1748D701E908C4D557384577D80F3D008B6FC80C3DE2556403F3BBC44B643F9711401D48FB40D4D53E3E75D132427ECC31CAF6F00936ECF84F3FFD0F79BA1E0180540000, N'6.1.3-40302')
INSERT [dbo].[AspNetRoles] ([Id], [Name]) VALUES (N'5c13330d-54c2-4032-8373-1860fb4ae5c2', N'Admin')
INSERT [dbo].[AspNetUserRoles] ([UserId], [RoleId]) VALUES (N'932edd55-4887-4d89-98de-c9fe2e9995b4', N'5c13330d-54c2-4032-8373-1860fb4ae5c2')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'4cdf5a29-d54d-4e69-ac0b-0a386280769a', N'Admin123@gmail.com', 0, N'AHbLCCZZ2dUpWS6ksqA5O6hJ65owbNYWplp0LQSacJC5tzjP2brhZ7OzP3QwAud9Sg==', N'087ea2fe-592f-492f-8d1b-2ca5bc5acd33', NULL, 0, 0, NULL, 0, 0, N'Admin123@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'932edd55-4887-4d89-98de-c9fe2e9995b4', N'Admin@gmail.com', 0, N'AIdgAEeOv1SAhHP2BhjYReYJfdihoFYs/aYAkJ76afWoNWohQSCUiPwUioN/zn4lPQ==', N'b890e988-3b5f-423e-a0ea-e27d2dcc6281', NULL, 0, 0, NULL, 0, 0, N'Admin@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'bb1196a2-3d07-4e66-98fb-1f4f96dc5549', N'hoangduong.nguyen@gmail.com', 0, N'AHhmWbk5p4tkW+lboc9mRxt49/MNO6UeuMA7jZpYvkJmwiuVX7BSrI+vfCyt82JWLA==', N'11ae2833-e3f7-42e7-bc59-23d3fe8c430a', NULL, 0, 0, NULL, 1, 0, N'hoangduong.nguyen@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'cfde9e12-9f79-45a9-9069-84aec2a01b89', N'123.nguyen@gmail.com', 0, N'AK9/EwOEDMbaXQ+R7XsDSBl0hgEhnctI7Wi3bgVbsEKMMF19Krzc0ZVERR3Q33KTjQ==', N'17e277ff-04f7-49b0-b90f-09dce91222b6', NULL, 0, 0, NULL, 1, 0, N'123.nguyen@gmail.com')
INSERT [dbo].[AspNetUsers] ([Id], [Email], [EmailConfirmed], [PasswordHash], [SecurityStamp], [PhoneNumber], [PhoneNumberConfirmed], [TwoFactorEnabled], [LockoutEndDateUtc], [LockoutEnabled], [AccessFailedCount], [UserName]) VALUES (N'e6b1e643-4026-4aa0-ac64-8828e4fcbfbc', N'hoangduong.nguyen98@gmail.com', 0, N'ACI7RRyhoZo4kxWO6Rey4LVwhJiztyem8aPRWr6WT+rRd48+7gBlOUi+TPA1Efhd8Q==', N'9eda1c37-3609-42d4-92c1-a559655533c2', NULL, 0, 0, NULL, 1, 0, N'hoangduong.nguyen98@gmail.com')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TinhTrang]) VALUES (N'LSP01', N'Thời  Trang      ', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TinhTrang]) VALUES (N'LSP02', N'Dụng Cụ Hàng Ngày  ', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TinhTrang]) VALUES (N'LSP03', N'Thức Ăn', N'0')
INSERT [dbo].[LoaiSanPham] ([MaLoaiSP], [TenLoaiSP], [TinhTrang]) VALUES (N'LSP04', N'Sức Khỏe', N'0')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX01', N'Royal canin     ', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX02', N'Fitmin  ', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX03', N'Cat Eye  ', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX04', N'Whiskas', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX05', N'Meo-O', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX06', N'CityZoo', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX07', N'Forcans', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX08', N'Pedigree', N'0         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX09', N'France ', N'1         ')
INSERT [dbo].[NhaSanXuat] ([MaNSX], [TenNSX], [TinhTrang]) VALUES (N'NSX10', N'Japan ', N'1         ')
INSERT [dbo].[PhuongThucThanhToan] ([MaPTTT], [TenPTTT], [TinhTrang]) VALUES (N'PTTT01', N'Thanh toán khi giao hàng (COD)', N'0         ')
INSERT [dbo].[PhuongThucThanhToan] ([MaPTTT], [TenPTTT], [TinhTrang]) VALUES (N'PTTT02', N'Chuyển khoản qua ngân hàng', N'0         ')
INSERT [dbo].[PhuongThucThanhToan] ([MaPTTT], [TenPTTT], [TinhTrang]) VALUES (N'PTTT03', N'Chuyển khoản qua PayPal', N'0         ')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP01', N'LSP01', N'NSX01', N'YU SƠ MI NHIỀU MÀU 1-2-3-4', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', N'MOI', N'1TT.JPG', N'1TT.JPG', N'1TT.JPG', N'1TT.JPG', NULL, 65000, 100, 0, N'0         ', N'KM')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP02', N'LSP01', N'NSX01', N'ÁO LÍNH CÓ NÓN', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', N'HOT', N'2TT.JPG', N'2TT.JPG', N'2TT.JPG', N'2TT.JPG', NULL, 35000, 100, 0, N'0         ', N'KM')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP03', N'LSP01', N'NSX01', N'ÁO BA LỖ FBI', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', N'KM', N'3TT.JPG', N'3TT.JPG', N'3TT.JPG', N'3TT.JPG', NULL, 35000, 100, 0, N'0         ', N'MOI')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP04', N'LSP01', N'NSX01', N'ÁO CÓ TAY ANGEL', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', NULL, N'4TT.JPG', N'4TT.JPG', N'4TT.JPG', N'4TT.JPG', NULL, 30000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP05', N'LSP01', N'NSX01', N'BỘ SƯU TẦM HÈ THU', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', N'MOI', N'5TT.JPG', N'5TT.JPG', N'5TT.JPG', N'5TT.JPG', NULL, 40000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP06', N'LSP01', N'NSX01', N'ÁO BA LỖ PUG', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', N'KM', N'6TT.JPG', N'6TT.JPG', N'6TT.JPG', N'6TT.JPG', NULL, 30000, 100, 0, N'0         ', N'MOI')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP07', N'LSP01', N'NSX02', N'ÁO THUN RÁP TAY', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', NULL, N'7TT.JPG', N'7TT.JPG', N'7TT.JPG', N'7TT.JPG', NULL, 30000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP08', N'LSP01', N'NSX02', N'ÁO 3 LỖ THE DOG FACE', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', NULL, N'8TT.JPG', N'8TT.JPG', N'8TT.JPG', N'8TT.JPG', NULL, 25000, 100, 0, N'0         ', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP09', N'LSP01', N'NSX02', N'DÂY DẮT YẾM ÁO VEST', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', NULL, N'9TT.JPG', N'9TT.JPG', N'9TT.JPG', N'9TT.JPG', NULL, 120000, 100, 0, N'0         ', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP10', N'LSP01', N'NSX02', N'JUMP ÁO TẾT', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', NULL, N'10TT.JPG', N'10TT.JPG', N'10TT.JPG', N'10TT.JPG', NULL, 170000, 100, 0, N'0         ', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP11', N'LSP01', N'NSX02', N'VÁY XÒE REN', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', NULL, N'11TT.JPG', N'11TT.JPG', N'11TT.JPG', N'11TT.JPG', NULL, 120000, 100, 0, N'0         ', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP12', N'LSP01', N'NSX02', N' ÁO SƠ MI CARO QUẦN JEAN', N'Áo phù hợp đủ size cho các giống thú cưng từ 0.5-5kg

Được làm từ chất liệu vải cao cấp, nó là lạnh và thoáng khí, bền và chống mài mòn, dễ dàng duy trì.​', NULL, N'12TT.JPG', N'12TT.JPG', N'12TT.JPG', N'12TT.JPG', NULL, 150000, 100, 0, N'0         ', N'TT')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP13', N'LSP02', N'NSX03', N'MÁY CHO ĂN TỰ ĐỘNG MINI 2,85LIT', N'TIỆN LỢI, XỊN XÒ
MÁY HOẠT ĐỘNG ĐƯỢC KHI MẤT TÍN HIỆU WF 
THÍCH HỢP CHO BA MẸ NÀO HAY ĐI CÔNG TÁC NGẮN HẠN', NULL, N'1DC.JPG', N'1DC.JPG', N'1DC.JPG', N'1DC.JPG', NULL, 2050000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP14', N'LSP02', N'NSX03', N'CHÉN ĂN CHẬM CHO CÚN THAM ĂN', N'KÉO DÀI BỮA ĂN THỜI GIAN VÀ NGĂN NGỪA CHỨNG KHÓ TIÊU NHƯ VẬY LÀ ĐỂ QUẢNG BÁ CHO ĂN UỐNG LÀNH MẠNH VÀ ĐIỀU CHỈNH CỦA CÚN TRỌNG LƯỢNG.
- THIẾT KẾ CHỐNG TRƯỢT: ĐÁY BỐN MẶT ĐỀU GẮN VỚI CHỐNG TRƯỢT ĐỆM NGĂN NGỪA BỊ LOẠI DO VẬT NUÔI.
- AN TOÀN VÀ BỀN ĐẸP: ĐƯỢC LÀM TỪ THỰC PHẨM-AN TOÀN CHẤT LIỆU ABS, AN TOÀN VÀ KHÔNG ĐỘC HẠI, DỄ DÀNG VỆ SINH.', N'HOT', N'2DC.JPG', N'2DC.JPG', N'2DC.JPG', N'2DC.JPG', NULL, 85000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP15', N'LSP02', N'NSX03', N'TRỤ CÀO MÓNG MÈO ', N'Kích thước: 80*30*52
Chất liệu: Plywood siêu bền, thẩm mỹ cao.
Phù hợp với các bé mèo có cân nặng <5kg.', N'MOI', N'3DC.JPG', N'3DC.JPG', N'3DC.JPG', N'3DC.JPG', NULL, 800000, 100, 0, N'0         ', N'KM')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP16', N'LSP02', N'NSX03', N'TRỤ CÀO MÓNG XƯƠNG RỒNG', N'Dễ dàng lắp ráp
Dễ vệ sinh, vận chuyển.
Độ bền cao
Size M:  Kích thước: 65x38x80
SIZE L: KÍCH THƯỚC 65x45x110
Đường kính cây: 11cm.
Chiều cao đế: 3,5cm.
Phù hợp với các chú mèo < 10kg.
Chất liệu: Dây thừng 6 ly, gỗ thông cao cấp', N'KM', N'4DC.JPG', N'4DC.JPG', N'4DC.JPG', N'4DC.JPG', NULL, 950000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP17', N'LSP02', N'NSX03', N'ĐỒ CHƠI BÁNH RĂNG CÓ GAI', N'Công dụng: sản phẩm có độ dẻo dai và đặc biệt an toàn, phù hợp cho việc cắn ngậm, làm sạch răng, giúp cho thú cưng khỏe khoắn, nhanh nhẹn

Thành phần: 100% cao su thiên nhiên

Xuất xứ: Việt Nam ', NULL, N'5DC.JPG', N'5DC.JPG', N'5DC.JPG', N'5DC.JPG', NULL, 120000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP18', N'LSP02', N'NSX03', N'GHẾ MÈO LZ0214.15', N'- Đồ cào móng hình ghế kiểu dáng đa dạng

- Kích thước lớn phù hợp với mọi bé Mèo 

- Thích hợp cho Sen trong việc sống ảo nữa nè

- Chất liệu bìa cứng qua sơ chế', N'HOT', N'6DC.JPG', N'6DC.JPG', N'6DC.JPG', N'6DC.JPG', NULL, 450000, 100, 0, N'0         ', N'MOI')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP19', N'LSP02', N'NSX04', N'ĐỒ CHƠI BANH DÂY THỪNG ', N'100% thương hiệu mới, chất lượng cao.

Nó là một món quà tốt cho thú cưng của bạn

Giai trí cho bạn và chú chó của bạn

Chăm sóc răng miệng, làm sạch răng

Chất liệu không độc hại, an toàn để nhai và chơi.', NULL, N'7DC.JPG', N'7DC.JPG', N'7DC.JPG', N'7DC.JPG', NULL, 35000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP20', N'LSP02', N'NSX04', N'BỘ UỐNG NƯỚC TỰ ĐỘNG', N'-Thích hợp cho thú cưng ăn và uống.
-Thêm thảm chống trượt ở phía dưới không dễ di chuyển.', NULL, N'8DC.JPG', N'8DC.JPG', N'8DC.JPG', N'8DC.JPG', NULL, 100000, 100, 0, N'0         ', N'DC')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP21', N'LSP02', N'NSX04', N'HÀNG RÀO 10 TẤM PURMI', N'- Sản phẩm được Nhập khẩu từ TRUNG Quốc.

- Hàng rào phép thuật dùng cho thú cưng theo phong cách Châu Âu.

- Tùy ý lắp ráp theo hình dạng mà bạn mong muốn.

- Tạo nên không gian mà CÚN YÊU luôn ao ước.

- Tháo lắp dễ dàng, mang lại sự tiện nghi và sang trọng cho ngôi nhà của bạn.

- Sản phẩm không bị mạ màu như các sản phẩm khác nên bạn có thể sử dụng trong thời gian dài.', N'KM', N'9DC.JPG', N'9DC.JPG', N'9DC.JPG', N'9DC.JPG', NULL, 720000, 100, 0, N'0         ', N'DC')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP22', N'LSP02', N'NSX04', N'NHÀ VỆ SINH KÈM XẺNG', N'NHÀ VỆ SINH CHO MÈO CÓ NẮP ĐẬY CHỐNG MÙI PHÒNG NGỪA VI KHUẨN PHÁT SINH.
CHẤT LIỆU NHỰA AN TOÀN, BỀN CHẮC
THIẾT KẾ XINH XẮN, KHÔNG GIAN VỆ SINH THOẢI MÁI', NULL, N'10DC.JPG', N'10DC.JPG', N'10DC.JPG', N'10DC.JPG', NULL, 460000, 100, 0, N'0         ', N'DC')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP23', N'LSP02', N'NSX04', N'CÂY LĂN LÔNG THÚ CƯNG', N'- CƠ CHẾ LÀM SẠCH THÔNG MINH VỚI MIẾNG LÓT BẰNG CÁC SỢI LÔNG NHỎ, CÓ TĨNH ĐIỆN KHẢ NĂNG QUẤN DÍNH TỰ ĐỘNG CAO.', NULL, N'11DC.JPG', N'11DC.JPG', N'11DC.JPG', N'11DC.JPG', NULL, 95000, 100, 0, N'0         ', N'DC')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP24', N'LSP02', N'NSX04', N'TẢ QUẦN CHO BÉ TRAI', N'Thiết kế phù hợp với các bé chó đực, ôm khít cơ thể một cách linh hoạt. 
Bề mặt thấm hút rộng, tăng lượng thấm hút. Các rãnh gơn sóng giúp tăng tốc độ thấm hút và chống thấm ngược. 
Vách chống tràn 2 bên ngăn nước tiểu tràn ra bắn ra phía trước.
Mặt lưng thoáng khí, không gây hầm bí. 
Băng dính một lần chạm được đặt ở vị trí trung tâm, giúp tập trung lực kéo nên tránh lỏng lẻo và lệch tã. ', NULL, N'12DC.JPG', N'12DC.JPG', N'12DC.JPG', N'12DC.JPG', NULL, 18000, 100, 0, N'0         ', N'DC')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP25', N'LSP03', N'NSX05', N'THỨC ĂN MÈO TRƯỞNG THÀNH', N'-Thức ăn hoàn chỉnh cho mèo

-Béo thấp – Đạm cao

-Thức ăn cho mèo hương vị tuyệt hảo

-Chất xơ giúp ngăn ngừa búi lông và giảm mùi hôi của phân

-Cho bộ lông khỏe và bóng mượt

-Vitamin A cho đôi mắt sáng khỏe

-Với Canxin và Phốt pho giúp xương phát triển và răng khỏe mạnh.', NULL, N'1TA.JPG', N'1TA.JPG', N'1TA.JPG', N'1TA.JPG', NULL, 120000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP26', N'LSP03', N'NSX05', N'THỨC ĂN CHO MÈO VỊ GÀ', N'EARTHBORN HOLISTIC Primitive Feline là nguồn dinh dưỡng cho mèo được cải tiến, không ngũ cốc thay thế, không gluten. Công thức với các thành phần lành mạnh, nuôi dưỡng như thịt gà, hoa quả và rau. EARTHBORN HOLISTIC Primitive Feline cung cấp dinh dưỡng hoàn chỉnh và chế độ ăn cân bằng mà không sử dụng ngũ cốc, màu, vị nhân tạo hoặc chất bảo quản. Màu biến đổi tự nhiên. EARTHBORN HOLISTIC Primitive Feline đáp ứng các mức độ dinh dưỡng được thiết lập bởi Hiệp hội quản lý thức ăn chăn nuôi Mỹ)  cho thức ăn mèo tất cả giai đoạn cuộc đời, bao gồm mèo con và mèo trưởng thành.', NULL, N'2TA.JPG', N'2TA.JPG', N'2TA.JPG', N'2TA.JPG', NULL, 595000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP27', N'LSP03', N'NSX05', N'THỨC ĂN CHO MÈO ', N'Thức ăn dành cho mèo trưởng thành, mèo dị ứng, nhạy cảm.

Có tôm Nam cực, một siêu thức phẩm có chứa nhiều axits béo Omega3 có tính sinh học cao và bền vững, rất hữu ích để duy trì làn da mềm mại.

Được chiết xuất từ Bưởi, nho, đinh hương, nghệ, hương thảo.

Giúp tăng cường khả năng phòng vệ tự nhiên của cơ thể. 

Làm chậm quá trình lão hóa cua tế bào.

Khong có chất gây dị ứng,

Giúp tiêu hóa, ruột và da khỏe mạnh', N'MOI', N'3TA.JPG', N'3TA.JPG', N'3TA.JPG', N'3TA.JPG', NULL, 75000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP28', N'LSP03', N'NSX05', N'THỨC ĂN HẠT MỀM CHO CHÓ', N'Dành cho mọi giống chó trên 1 tuổi
Giúp xương khớp chắc khoẻ, phòng tránh bệnh loãng xương
Không chứa ngũ cốc, không gây dị ứng
Được chế biến từ thịt cừu, bột gà, gạo lứt, yến mạch
Giúp giảm bớt mùi phân và mùi cơ thể
Giúp tăng cường sức đề kháng, phòng tránh bệnh tật
Duy trì cơ thể cân đối, đốt cháy lượng mỡ dư thừa, cho các chú chó vóc dáng đẹp', NULL, N'4TA.JPG', N'4TA.JPG', N'4TA.JPG', N'4TA.JPG', NULL, 200000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP29', N'LSP03', N'NSX05', N'DÀNH CHO GIỐNG CHÓ NHỎ', N'+ Năng lượng cao (Dành cho chó năng động hoặc năng động)

+ Xây dựng cơ bắp

+ Tăng sức mạnh cơ thể và bảo tồn khối lượng cơ bắp

+  Kẽm hữu cơ & Omega 6 giúp hỗ trợ làn da và bộ lông khỏe mạnh

+  L-Carnitine được thêm vào cho cơ bắp nạc

+  Hệ thống miễn dịch mạnh mẽ

+  Chất xơ chất lượng cho tiêu hóa khỏe mạnh', NULL, N'5TA.JPG', N'5TA.JPG', N'5TA.JPG', N'5TA.JPG', NULL, 600000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP30', N'LSP03', N'NSX05', N'GANADOR ADULT GÀ NƯỚNG', N'Thức ăn hỗn hợp Ganador Adult với  Thịt Gà nướng có công thức được pha chế và thiết kế từ Pháp đảm bảo giá trị dinh dưỡng cao nhằm duy trì hợp lí giai đoạn trưởng thành dài nhất của chó cưng cho nhiều giống loài và kích cỡ.', N'KM', N'6TA.JPG', N'6TA.JPG', N'6TA.JPG', N'6TA.JPG', NULL, 125000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP31', N'LSP03', N'NSX06', N'AATAS CAT PATE CHO MÈO', N'SẢN XUẤT: Singapore

Mùi vị đa dạng ngon đồi với mèo kén ăn', N'KM', N'7TA.JPG', N'7TA.JPG', N'7TA.JPG', N'7TA.JPG', NULL, 25000, 100, 0, N'0         ', N'KM')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP32', N'LSP03', N'NSX06', N'XỐT CHO CHÓ DOGGY MAN', N'Là thức ăn dạng sốt đóng túi cho chó

Thơm ngon bổ dưỡng,

Bao gồm độ béo và khoáng chất tối đa,

Giúp nuôi dưỡng da lông chó', NULL, N'8TA.JPG', N'8TA.JPG', N'8TA.JPG', N'8TA.JPG', NULL, 19000, 100, 0, N'0         ', N'TA')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP33', N'LSP03', N'NSX06', N'PATE MONGE CHỨC NĂNG', N'+ Lựa chọn đúng đắn khi ba mẹ mua sản phầm này cho con ăn

+ Vừa là bữa ăn chính vừa hỗ trợ chức năng', NULL, N'9TA.JPG', N'9TA.JPG', N'9TA.JPG', N'9TA.JPG', NULL, 31000, 100, 0, N'0         ', N'TA')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP34', N'LSP03', N'NSX06', N'CIAO CHURUTORI 4 QUE', N'- Ciao ChuruTori 4 que là dòng sản phẩm thưởng nhân kem phầm thuộc công ty INABA NHẬT BẢN

- Mèo có thể thưởng thức 2 hương vị khác nhau snack bên ngoài và kem mịn bên trong

- Trọng lượng 10gr x4', N'HOT', N'10TA.JPG', N'10TA.JPG', N'10TA.JPG', N'10TA.JPG', NULL, 40000, 100, 0, N'0         ', N'TA')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP35', N'LSP03', N'NSX06', N'PATE CHO CHÓ UNICO', N'Thức ăn dạng ướt cho chó, thành phần gồm 100% thịt cừu non. Giúp bé nhà mình ngon miêng hơn bao giờ hết.

Trong gói đó có miếng thịt cừu luôn nha..

Hàng cao cấp của Morando - Ý

Xuất xứ: Ý', N'KM', N'11TA.JPG', N'11TA.JPG', N'11TA.JPG', N'11TA.JPG', NULL, 40000, 100, 0, N'0         ', N'TA')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP36', N'LSP03', N'NSX06', N'ROYAL CANIN INSTINCTIVE', N'Thức ăn Royal canin từ pháp thì chắc hẳn khách đã biết đến chất lượng của nó thế nào rồi đúng không ah.

Nhưng các bé mèo không thể ăn hạt khô mãi được vì bé rất làm biếng uống nước.

Chính vì thế công ty Royal canin đưa ra các dòng sản phẩm thức ăn dạng ướt để thay đổi khẩu vị cũng như giúp các bé không cần uống nước nhiều. vẫn đủ nước cho cơ thể.

Đây là sản phẩm không chứa chất bảo quản và rất an toàn cho mèo khi dùng lâu dài. 

Xốt Royal Canin được làm từ thịt, các vitamin cần thiết, rau củ quả.', NULL, N'12TA.JPG', N'12TA.JPG', N'12TA.JPG', N'12TA.JPG', NULL, 32000, 100, 0, N'0         ', N'TA')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP37', N'LSP04', N'NSX07', N'BIOLINE DUNG DỊCH NHỎ MẮT', N'Sử dụng an toàn cho chó mèo 7 tuần tuổi và chó mèo lớn hơn

• Điều trị phổ thông các bệnh truyền nhiễm về mắt, như viêm giác mạc, viêm kết mạc, viêm bờ mi…;

• Điều trị hiệu quả các loại truyền nhiễm Mycoplasma, Chlamydia;

• Điều trị hiệu quả các loại truyền nhiễm vi-rút, vi khuẩn;

• Loại trừ các chứng viêm, chảy nước mắt, ngứa, sưng đỏ, có giử mắt, khô mắt, có chất tiết bất thường…;

• Nước mắt nhân tạo Lacrimal Mimetic, giúp mắt dễ chịu và có hồn hơn.', NULL, N'1SK.JPG', N'1SK.JPG', N'1SK.JPG', N'1SK.JPG', NULL, 65000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP38', N'LSP04', N'NSX07', N'GEL LÀM SẠCH RĂNG MIỆNG ', N'Sản phẩm chăm sóc răng miệng dạng gel, không cần dùng bàn chải hay ngón tay. Tác dụng nhanh chóng, giúp xử lý mảng bám và cao răng cho vật nuôi.

Sản phẩm được làm hoàn toàn từ các thánh phần thiên nhiên, giúp ngăn ngừa và chống lại các bệnh vaaef răng và nướu.

Thiết kế đầu chóp nhỏ giúp gel co thể đến những nơi khó tiếp cận

Xuất xứ: Mỹ', N'MOI', N'2SK.JPG', N'2SK.JPG', N'2SK.JPG', N'2SK.JPG', NULL, 295000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP39', N'LSP04', N'NSX07', N'QUE TEST BỆNH CARE VÀ PRAVO', N'RẤT HIỆU QUẢ', NULL, N'3SK.JPG', N'3SK.JPG', N'3SK.JPG', N'3SK.JPG', NULL, 90000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP40', N'LSP04', N'NSX07', N'FRONTLINE TRI-ACT', N'Frontline Tri-act ,diệt ve,ruồi,muỗi (hộp 3 tuýp)

CHUYÊN GIA BẢO VỆ CÚN YÊU NHÀ BẠN

Frontline Tri-act ,diệt ve,ruồi,muỗi (hộp 3 tuýp)

CHUYÊN GIA BẢO VỆ CÚN YÊU NHÀ BẠN

- Diệt 99% bọ chét trong vòng 1 tháng ngay cả khi tiếp xúc với nước( 1 lần tắm xà phòng hoặc 2-3 lần tắm nước)

- Hiệu quả với Ctenocephalides và C.canis', NULL, N'4SK.JPG', N'4SK.JPG', N'4SK.JPG', N'4SK.JPG', NULL, 190000, 100, 0, N'0         ', N'MOI')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP41', N'LSP04', N'NSX07', N'NEXGARD SPECTRA', N'Công dụng: Trị bọ chét, ve, giun tim và giun tròn trên chó.

Liều dùng: 1 viên 1 con

Viên Nexgard Spectra là viên nhai ngon miệng với hầu hết các giống chó. Nếu chó không dùng trực tiếp thì có thể trộn vào thức ăn.', NULL, N'5SK.JPG', N'5SK.JPG', N'5SK.JPG', N'5SK.JPG', NULL, 230000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP42', N'LSP04', N'NSX07', N'VIÊN UỐNG EXCEL BỔ SUNG VITAMIN', N'BỔ SUNG VITAMIN VÀ KHOÁNG CHẤT TOÀN DIỆN ĐƯỢC XÂY DỰNG ĐẶC BIỆT CHO NHU CẦU CỦA CHÓ CON VÀ CHÓ ĐANG PHÁT TRIỂN. ', NULL, N'6SK.JPG', N'6SK.JPG', N'6SK.JPG', N'6SK.JPG', NULL, 370000, 100, 0, N'0         ', N'KM')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP43', N'LSP04', N'NSX08', N'HAIRBALL CURE GEL ', N'- Giúp ngăn ngừa búi lông ở mèo
- Giúp hệ tiêu hóa khỏe mạnh
- Chống táo bón
- Ngăn ngừa sự hình thành của búi lông trong dạ dày và đường ruột hạn chế các vấn đề liên quan đến búi lông như táo bón, nôn mửa', N'HOT', N'7SK.JPG', N'7SK.JPG', N'7SK.JPG', N'7SK.JPG', NULL, 70000, 100, 0, N'0         ', N'New')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP44', N'LSP04', N'NSX08', N'MEN HỖ TRỢ TIÊU HÓA', N'Sản phẩm chứa vi sinh vật hữu ích và enzyme tiêu hóa giúp:

- Kích thích tiêu hóa, cân bằng hệ vi sinh vật ruột, phòng rối loạn tiêu hóa, giảm mùi hôi phân thú cưng.

- Beta-Glucan giúp tăng sức đề kháng, có thể dùng kèm với kháng sinh trong phòng và trị bệnh, dùng trong lúc chủng ngừa để tăng hiệu quả.', NULL, N'8SK.JPG', N'8SK.JPG', N'8SK.JPG', N'8SK.JPG', NULL, 10000, 100, 0, N'0         ', N'SK')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP45', N'LSP04', N'NSX08', N'THỨC UỐNG NĂNG LƯỢNG', N' - Thức uống bổ sung dinh dưỡng và năng lượng cho Cún cưng Wan Wan Calorie
 - Với thành phần cung năng lượng và bổ sung thêm vitamin A, D3, E, B1, B2, B6, B12, Nicotinamid, Acid Folic và khoáng Zn, Fe sẽ giúp Cún cưng khoẻ mạnh và linh hoạt nhất.
 - Sản phẩm dùng cho chó bệnh cần bổ sung dinh dưỡng, chó già, chó đang mang thai và chó con trên 2 tháng tuổi.
 - Hàng nội địa Nhật nay đã được chính thức đăng ký và lưu hành tại Việt Nam', N'KM', N'9SK.JPG', N'9SK.JPG', N'9SK.JPG', N'9SK.JPG', NULL, 50000, 100, 0, N'0         ', N'SK')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP46', N'LSP04', N'NSX08', N'DƯỠNG DA & LÔNG ', N'Cung cấp các axit béo thiết yếu có nguồn gốc thiên nhiên.
Giảm triệu chứng ngứa và dị ứng, tăng cường làm lành vết thương.
Duy trì vẻ mượt mà của da, lông.
Megaderm cung cấp các axit béo thiết yếu từ nhóm omega 3 và omega 6 có nguồn gốc từ thiên nhiên, với tỷ lệ lý tưởng 1:5, đảm bảo điều trị hiệu quả và kéo dài cho da lông bị hư hại.', N'KM', N'10SK.JPG', N'10SK.JPG', N'10SK.JPG', N'10SK.JPG', NULL, 200000, 100, 0, N'0         ', N'SK')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP47', N'LSP04', N'NSX08', N'CANXI TỔNG HỢP ', N'Daily Best For Puppies là thực phẩm chức năng multivitamin  dành cho chó con dưới 12 tháng tuổi của Pet Naturals, Mỹ.

Trên 35 thành phần dinh dưỡng tác động hiệp lực cho chó yêu sức khỏe tối ưu:

- Omega 3 giúp lông da đẹp.

- Vitamin nhóm B cân bằng và hoàn chỉnh giúp chống stress.

Các loại men tiêu hóa thức ăn và tăng hiệu quả hấp thu dinh dưỡng từ bữa ăn.', NULL, N'11SK.JPG', N'11SK.JPG', N'11SK.JPG', N'11SK.JPG', NULL, 280000, 100, 0, N'0         ', N'SK')
INSERT [dbo].[SanPham] ([MaSP], [MaLoaiSP], [MaNSX], [TenSP], [MoTa], [ChucNang], [HinhChinh], [Hinh1], [Hinh2], [Hinh3], [Hinh4], [Gia], [SLDaBan], [LuotView], [TinhTrang], [GhiChu]) VALUES (N'SP48', N'LSP04', N'NSX08', N'VIBRAVET', N'Vibravet 100 Paste - 2.5 gm HIỆU QUẢ VÀ AN TÒN TUYỆT ĐỐI 

- Trị nhiễm trùng đường tiêu hóa, hô hấp, sinh dục, viêm da, viêm tủy xương, viêm ống tai trên chó mèo

- CHIA SẴN LƯỢNG THUỐC, RẤT DỄ SỬ DỤNG', NULL, N'12SK.JPG', N'12SK.JPG', N'12SK.JPG', N'12SK.JPG', NULL, 185000, 100, 0, N'0         ', N'SK')
INSERT [dbo].[ThanhToan] ([MaTT], [HoTenKH], [SoDT], [Email], [DiaChiNhanHang], [TinhThanh], [QuanHuyen], [GhiChu], [TinhTrang], [MaPTTT]) VALUES (0, N'nguyễn văn c', N'0126873228', N'hoangduong.nguyen98@gmail.com', N'123 nguyễn sơn', N'tphcm', N'tân phú', N'giao hàng nhanh', NULL, N'PTTT01')
INSERT [dbo].[ThanhToan] ([MaTT], [HoTenKH], [SoDT], [Email], [DiaChiNhanHang], [TinhThanh], [QuanHuyen], [GhiChu], [TinhTrang], [MaPTTT]) VALUES (1, N'nguyễn văn a', N'123456789', N'123@gmail.com', N'nguyễn văn cừ', N'tphcm', N'tân phú', N'giao hàng nhanh', N'0', N'PTTT01')
INSERT [dbo].[ThanhToan] ([MaTT], [HoTenKH], [SoDT], [Email], [DiaChiNhanHang], [TinhThanh], [QuanHuyen], [GhiChu], [TinhTrang], [MaPTTT]) VALUES (2, N'nguyễn văn b', N'0234456789', N'hoangduong.nguyen@gmail.com', N'123 nguyễn sơn', N'tphcm', N'tân phú', N'giao hàng tiết kiệm', N'0', N'PTTT01')
SET ANSI_PADDING ON

GO
/****** Object:  Index [RoleNameIndex]    Script Date: 12/11/2020 3:32:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [RoleNameIndex] ON [dbo].[AspNetRoles]
(
	[Name] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/11/2020 3:32:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserClaims]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/11/2020 3:32:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserLogins]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_RoleId]    Script Date: 12/11/2020 3:32:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_RoleId] ON [dbo].[AspNetUserRoles]
(
	[RoleId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [IX_UserId]    Script Date: 12/11/2020 3:32:42 PM ******/
CREATE NONCLUSTERED INDEX [IX_UserId] ON [dbo].[AspNetUserRoles]
(
	[UserId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
SET ANSI_PADDING ON

GO
/****** Object:  Index [UserNameIndex]    Script Date: 12/11/2020 3:32:42 PM ******/
CREATE UNIQUE NONCLUSTERED INDEX [UserNameIndex] ON [dbo].[AspNetUsers]
(
	[UserName] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AspNetUserClaims]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserClaims] CHECK CONSTRAINT [FK_dbo.AspNetUserClaims_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserLogins]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserLogins] CHECK CONSTRAINT [FK_dbo.AspNetUserLogins_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId] FOREIGN KEY([RoleId])
REFERENCES [dbo].[AspNetRoles] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetRoles_RoleId]
GO
ALTER TABLE [dbo].[AspNetUserRoles]  WITH CHECK ADD  CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId] FOREIGN KEY([UserId])
REFERENCES [dbo].[AspNetUsers] ([Id])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[AspNetUserRoles] CHECK CONSTRAINT [FK_dbo.AspNetUserRoles_dbo.AspNetUsers_UserId]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_LoaiSanPham] FOREIGN KEY([MaLoaiSP])
REFERENCES [dbo].[LoaiSanPham] ([MaLoaiSP])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_LoaiSanPham]
GO
ALTER TABLE [dbo].[SanPham]  WITH CHECK ADD  CONSTRAINT [FK_SanPham_NhaSanXuat] FOREIGN KEY([MaNSX])
REFERENCES [dbo].[NhaSanXuat] ([MaNSX])
GO
ALTER TABLE [dbo].[SanPham] CHECK CONSTRAINT [FK_SanPham_NhaSanXuat]
GO
ALTER TABLE [dbo].[ThanhToan]  WITH CHECK ADD  CONSTRAINT [FK_ThanhToan_PhuongThucThanhToan] FOREIGN KEY([MaPTTT])
REFERENCES [dbo].[PhuongThucThanhToan] ([MaPTTT])
GO
ALTER TABLE [dbo].[ThanhToan] CHECK CONSTRAINT [FK_ThanhToan_PhuongThucThanhToan]
GO
/****** Object:  StoredProcedure [dbo].[Sp_Account_Login]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create proc [dbo].[Sp_Account_Login]
	@Username nvarchar(50),
	@Password nchar(10)
as
begin
	declare @count int
	declare @res bit
	select @count = count(*) from Account where Username=@Username and Password=@Password
	if @count >0
		set @res = 1
	else 
		set @res = 0
	select @res
end
GO
/****** Object:  StoredProcedure [dbo].[sp_SanPham_TuSinhID]    Script Date: 12/11/2020 3:32:42 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[sp_SanPham_TuSinhID]
as
begin
declare @ma_next varchar(10);
declare @max int
select @max=COUNT(MaSP)+ 1 from SanPham where MaSP like 'SP'
set @ma_next='SP'+ RIGHT('0'+CAST(@max as varchar(18)),18)
while(exists(select MaSP from SanPham where MaSP=@ma_next))
begin
	set @max=@max+1
	set @ma_next='SP'+RIGHT('0'+ CAST(@max as varchar(18)),18)
end
select @ma_next
end

GO
USE [master]
GO
ALTER DATABASE [Petpro] SET  READ_WRITE 
GO
