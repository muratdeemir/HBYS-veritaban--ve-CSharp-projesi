USE [master]
GO
/****** Object:  Database [HastaneVeriTabani]    Script Date: 24.12.2016 18:09:00 ******/
CREATE DATABASE [HastaneVeriTabani]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HastaneVeriTabani', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HastaneVeriTabani.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HastaneVeriTabani_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HastaneVeriTabani_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [HastaneVeriTabani] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HastaneVeriTabani].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HastaneVeriTabani] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET ARITHABORT OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HastaneVeriTabani] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HastaneVeriTabani] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HastaneVeriTabani] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HastaneVeriTabani] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET RECOVERY FULL 
GO
ALTER DATABASE [HastaneVeriTabani] SET  MULTI_USER 
GO
ALTER DATABASE [HastaneVeriTabani] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HastaneVeriTabani] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HastaneVeriTabani] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HastaneVeriTabani] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [HastaneVeriTabani] SET DELAYED_DURABILITY = DISABLED 
GO
USE [HastaneVeriTabani]
GO
/****** Object:  Table [dbo].[Doktor]    Script Date: 24.12.2016 18:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Doktor](
	[Doktorid] [int] IDENTITY(1,1) NOT NULL,
	[DoktorAdSoyad] [nvarchar](max) NOT NULL,
	[Poliklinikid] [int] NOT NULL,
 CONSTRAINT [PK_Doktor] PRIMARY KEY CLUSTERED 
(
	[Doktorid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Hasta]    Script Date: 24.12.2016 18:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hasta](
	[Hastaid] [int] IDENTITY(1,1) NOT NULL,
	[HastaTc] [bigint] NOT NULL,
	[HastaAd] [nvarchar](max) NOT NULL,
	[HastaSoyad] [nvarchar](max) NOT NULL,
	[HastaDogumTarihi] [date] NOT NULL,
	[HastaYas] [int] NOT NULL,
	[BabaAdi] [nvarchar](max) NOT NULL,
	[AnaAdi] [nvarchar](max) NOT NULL,
	[HastaCepTel] [bigint] NOT NULL,
	[HastaAdres] [nvarchar](max) NOT NULL,
	[HastaCinsiyet] [nchar](10) NOT NULL,
	[Meslekid] [int] NOT NULL,
	[Sigortaid] [int] NOT NULL,
	[Poliklinikid] [int] NOT NULL,
 CONSTRAINT [PK_Hasta] PRIMARY KEY CLUSTERED 
(
	[Hastaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Meslek]    Script Date: 24.12.2016 18:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Meslek](
	[Meslekid] [int] IDENTITY(1,1) NOT NULL,
	[MeslekAdi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Meslek] PRIMARY KEY CLUSTERED 
(
	[Meslekid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Poliklinik]    Script Date: 24.12.2016 18:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Poliklinik](
	[Poliklinikid] [int] IDENTITY(1,1) NOT NULL,
	[PoliklinikAdi] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Poliklinik] PRIMARY KEY CLUSTERED 
(
	[Poliklinikid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Sigorta]    Script Date: 24.12.2016 18:09:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sigorta](
	[Sigortaid] [int] IDENTITY(1,1) NOT NULL,
	[SigortaTuru] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_Sigorta] PRIMARY KEY CLUSTERED 
(
	[Sigortaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET IDENTITY_INSERT [dbo].[Doktor] ON 

INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (1, N'Ahmet Sarı', 1)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (2, N'Kemal Şen', 1)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (3, N'Süleymen Soylu', 2)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (4, N'Samet Bayır', 2)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (5, N'Necmettin Susonu', 3)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (6, N'Mevlüt Altıntop', 3)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (7, N'Musa Kolay', 4)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (8, N'Turap Talay', 4)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (9, N'Habip Karataş', 5)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (10, N'Arda Karakulak', 5)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (11, N'Osman Genç', 6)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (12, N'Nehir Kısa', 6)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (13, N'Asya Yalçın', 7)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (14, N'Tolga Kara', 7)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (15, N'Dilay Dilova', 8)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (16, N'Ceren Karakaş', 8)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (17, N'Kader Aracı', 9)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (18, N'Nebahat Bulut', 9)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (19, N'Masum Kapalıbaş', 10)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (20, N'Erol Çelebi', 10)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (21, N'Seyhan Benek', 11)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (22, N'Yunus Aydın', 11)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (23, N'Aydın Özdemir', 12)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (24, N'Ahmet Şatur', 12)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (25, N'Ali Sümer', 13)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (26, N'İlker Pala', 13)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (27, N'Turan Durmaz', 14)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (28, N'Duygu Çakmak', 14)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (29, N'Büşra Kel', 15)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (30, N'Mehmet Keltik', 15)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (31, N'Ali Uzun', 16)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (32, N'Fırat Köse', 16)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (33, N'Furkan Körmeçli', 17)
INSERT [dbo].[Doktor] ([Doktorid], [DoktorAdSoyad], [Poliklinikid]) VALUES (34, N'Erdem Kütük', 17)
SET IDENTITY_INSERT [dbo].[Doktor] OFF
SET IDENTITY_INSERT [dbo].[Hasta] ON 

INSERT [dbo].[Hasta] ([Hastaid], [HastaTc], [HastaAd], [HastaSoyad], [HastaDogumTarihi], [HastaYas], [BabaAdi], [AnaAdi], [HastaCepTel], [HastaAdres], [HastaCinsiyet], [Meslekid], [Sigortaid], [Poliklinikid]) VALUES (4, 14003235646, N'Ahmet', N'Ballı', CAST(N'1994-12-12' AS Date), 22, N'Kemal', N'Halime', 5333924813, N'Atakent', N'Erkek     ', 12, 5, 16)
INSERT [dbo].[Hasta] ([Hastaid], [HastaTc], [HastaAd], [HastaSoyad], [HastaDogumTarihi], [HastaYas], [BabaAdi], [AnaAdi], [HastaCepTel], [HastaAdres], [HastaCinsiyet], [Meslekid], [Sigortaid], [Poliklinikid]) VALUES (5, 54645645645, N'Galip', N'Öztürk', CAST(N'1954-12-24' AS Date), 62, N'Hasan', N'Ayşe', 5335645646, N'Mimarsinan', N'Erkek     ', 12, 4, 13)
SET IDENTITY_INSERT [dbo].[Hasta] OFF
SET IDENTITY_INSERT [dbo].[Meslek] ON 

INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (1, N'İmam')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (2, N'Öğretmen')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (3, N'Öğrenci')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (4, N'Memur')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (5, N'Ev Hanımı')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (6, N'Şoför')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (7, N'Garson')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (8, N'Komi')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (9, N'Doktor')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (10, N'Hemşire')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (11, N'Avukat')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (12, N'Mühendis')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (13, N'Mimar')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (14, N'Sanatçı')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (15, N'Futbolcu')
INSERT [dbo].[Meslek] ([Meslekid], [MeslekAdi]) VALUES (16, N'İşsiz')
SET IDENTITY_INSERT [dbo].[Meslek] OFF
SET IDENTITY_INSERT [dbo].[Poliklinik] ON 

INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (1, N'KBB')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (2, N'Göz')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (3, N'Göğüs Hastalıkları')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (4, N'Kardiyoloji')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (5, N'Nöroloji')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (6, N'Üroloji')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (7, N'Ortopedi')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (8, N'Kadın Doğum')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (9, N'Kalp Damar')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (10, N'FTR')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (11, N'Genel Cerrahi')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (12, N'Dahiliye')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (13, N'Cildiye')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (14, N'Beyin Cerrahisi')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (15, N'Çocuk')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (16, N'Plastik Cerrahi')
INSERT [dbo].[Poliklinik] ([Poliklinikid], [PoliklinikAdi]) VALUES (17, N'Psikiyatri')
SET IDENTITY_INSERT [dbo].[Poliklinik] OFF
SET IDENTITY_INSERT [dbo].[Sigorta] ON 

INSERT [dbo].[Sigorta] ([Sigortaid], [SigortaTuru]) VALUES (1, N'SSK')
INSERT [dbo].[Sigorta] ([Sigortaid], [SigortaTuru]) VALUES (2, N'Bağkur')
INSERT [dbo].[Sigorta] ([Sigortaid], [SigortaTuru]) VALUES (3, N'Emekli Sandığı')
INSERT [dbo].[Sigorta] ([Sigortaid], [SigortaTuru]) VALUES (4, N'Diğer')
INSERT [dbo].[Sigorta] ([Sigortaid], [SigortaTuru]) VALUES (5, N'Yok')
SET IDENTITY_INSERT [dbo].[Sigorta] OFF
ALTER TABLE [dbo].[Doktor]  WITH CHECK ADD  CONSTRAINT [FK_Doktor_Poliklinik1] FOREIGN KEY([Poliklinikid])
REFERENCES [dbo].[Poliklinik] ([Poliklinikid])
GO
ALTER TABLE [dbo].[Doktor] CHECK CONSTRAINT [FK_Doktor_Poliklinik1]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_Meslek] FOREIGN KEY([Meslekid])
REFERENCES [dbo].[Meslek] ([Meslekid])
GO
ALTER TABLE [dbo].[Hasta] CHECK CONSTRAINT [FK_Hasta_Meslek]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_Poliklinik] FOREIGN KEY([Poliklinikid])
REFERENCES [dbo].[Poliklinik] ([Poliklinikid])
GO
ALTER TABLE [dbo].[Hasta] CHECK CONSTRAINT [FK_Hasta_Poliklinik]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_Sigorta] FOREIGN KEY([Sigortaid])
REFERENCES [dbo].[Sigorta] ([Sigortaid])
GO
ALTER TABLE [dbo].[Hasta] CHECK CONSTRAINT [FK_Hasta_Sigorta]
GO
USE [master]
GO
ALTER DATABASE [HastaneVeriTabani] SET  READ_WRITE 
GO
