USE [master]
GO
/****** Object:  Database [HastaneVeriTabani]    Script Date: 20.01.2017 00:50:07 ******/
CREATE DATABASE [HastaneVeriTabani]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HastaneVeriTabani', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HastaneVeriTabani.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'HastaneVeriTabani_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\HastaneVeriTabani_log.ldf' , SIZE = 1280KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
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
/****** Object:  Table [dbo].[Doktor]    Script Date: 20.01.2017 00:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Doktor](
	[DoktorAdSoyad] [varchar](50) NOT NULL,
	[PoliklinikAdi] [varchar](50) NOT NULL,
	[DoktorCinsiyet] [nchar](10) NOT NULL,
	[DoktorYas] [int] NOT NULL,
 CONSTRAINT [PK_Doktor_1] PRIMARY KEY CLUSTERED 
(
	[DoktorAdSoyad] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Hasta]    Script Date: 20.01.2017 00:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Hasta](
	[Hastaid] [int] IDENTITY(1,1) NOT NULL,
	[HastaTc] [nchar](11) NOT NULL,
	[HastaAd] [varchar](50) NOT NULL,
	[HastaSoyad] [varchar](50) NOT NULL,
	[HastaDogumTarihi] [date] NOT NULL,
	[HastaYas] [int] NOT NULL,
	[BabaAdi] [varchar](50) NOT NULL,
	[AnaAdi] [varchar](50) NOT NULL,
	[HastaCepTel] [nchar](11) NOT NULL,
	[HastaAdres] [varchar](50) NOT NULL,
	[HastaCinsiyet] [nchar](10) NOT NULL,
	[Meslek] [varchar](50) NOT NULL,
	[SigortaTuru] [varchar](50) NOT NULL,
	[PoliklinikAdi] [varchar](50) NOT NULL,
	[DoktorAdSoyad] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Hasta] PRIMARY KEY CLUSTERED 
(
	[Hastaid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Kullanici]    Script Date: 20.01.2017 00:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Kullanici](
	[KullaniciAdi] [varchar](50) NOT NULL,
	[KullaniciSifre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Kullanici] PRIMARY KEY CLUSTERED 
(
	[KullaniciAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Poliklinik]    Script Date: 20.01.2017 00:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Poliklinik](
	[PoliklinikAdi] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Poliklinik_1] PRIMARY KEY CLUSTERED 
(
	[PoliklinikAdi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Sigorta]    Script Date: 20.01.2017 00:50:07 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Sigorta](
	[SigortaTuru] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Sigorta_1] PRIMARY KEY CLUSTERED 
(
	[SigortaTuru] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Ahmet Sarı', N'Beyin Cerrahisi', N'Erkek     ', 32)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Ahmet Şatur', N'KBB     ', N'Erkek     ', 27)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Alev Korkmaz', N'Kardiyoloji', N'Kız       ', 27)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Ali Övelek', N'Kadın Doğum   ', N'Erkek     ', 38)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Ali Sümer', N'Nöroloji     ', N'Erkek     ', 43)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Ali Uzun', N'Psikiyatri   ', N'Erkek     ', 34)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Arda Karakulak', N'FTR    ', N'Erkek     ', 29)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Asya Yalçın', N'Göğüs Hastalıkları ', N'Kız       ', 29)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Aydın Özdemri', N'KBB       ', N'Erkek     ', 36)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Belirtilmedi', N'Belirtilmedi        ', N'0         ', 0)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Büşra Kel', N'Plastik Cerrahi', N'Kız       ', 37)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Ceren Karakaş', N'Göz', N'Kız       ', 42)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Dilay Dağaşan', N'Göz', N'Kız       ', 37)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Duran Durmaz', N'Ortopedi', N'Erkek     ', 30)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Duygu Çakmak', N'Ortopedi', N'Kız       ', 45)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Erdem Körmeçli', N'Üroloji', N'Erkek     ', 41)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Erol Çelebi', N'Kalp Damar', N'Erkek     ', 47)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Fırat Köse', N'Psikiyatri', N'Erkek     ', 38)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Furkan Kütük', N'Üroloji', N'Erkek     ', 40)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Habip Karataş', N'FTR', N'Erkek     ', 49)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Hakan Üzülmez', N'FTR', N'Erkek     ', 49)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'İlker Ayrık', N'Ortopedi', N'Erkek     ', 37)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'İlker Pala', N'Nöroloji', N'Erkek     ', 47)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Kader Aracı', N'Kadın Doğum', N'Kız       ', 43)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Kemal Şen', N'Beyin Cerrahisi', N'Erkek     ', 37)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Mahsum Kapalı', N'Kalp Damar', N'Erkek     ', 27)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Mehmet Hakyemez', N'Genel Cerrahi', N'Erkek     ', 31)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Mehmet Keltik', N'Plastik Cerrahi', N'Erkek     ', 33)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Mete Alabıyık', N'Kadın Doğum', N'Erkek     ', 36)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Murat Altıntop', N'Çocuk', N'Erkek     ', 31)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Musa İnan', N'Dahiliye', N'Erkek     ', 47)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Necmettin Sucu', N'Çocuk', N'Erkek     ', 51)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Nehir Kısa', N'Genel Cerrahi', N'Kadın     ', 53)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Osman Genç', N'Genel Cerrahi', N'Erkek     ', 43)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Samet Bayır', N'Cildiye', N'Erkek     ', 28)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Seyhan Benek', N'Kardiyoloji', N'Erkek     ', 33)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Süleyman Soylu', N'Cildiye', N'Erkek     ', 52)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Tolga Kara', N'Göğüs Hastalıkları', N'Erkek     ', 35)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Turap Ozan', N'Dahiliye', N'Erkek     ', 38)
INSERT [dbo].[Doktor] ([DoktorAdSoyad], [PoliklinikAdi], [DoktorCinsiyet], [DoktorYas]) VALUES (N'Yunus Aydın ', N'Kardiyoloji', N'Erkek     ', 42)
SET IDENTITY_INSERT [dbo].[Hasta] ON 

INSERT [dbo].[Hasta] ([Hastaid], [HastaTc], [HastaAd], [HastaSoyad], [HastaDogumTarihi], [HastaYas], [BabaAdi], [AnaAdi], [HastaCepTel], [HastaAdres], [HastaCinsiyet], [Meslek], [SigortaTuru], [PoliklinikAdi], [DoktorAdSoyad]) VALUES (89, N'12123345465', N'Ali', N'Temiz', CAST(N'1996-12-30' AS Date), 20, N'Hasan', N'Fatma', N'05675677698', N'mimar sinan', N'Erkek     ', N'öğrenci', N'SSK', N'Beyin Cerrahisi', N'Kemal Şen')
INSERT [dbo].[Hasta] ([Hastaid], [HastaTc], [HastaAd], [HastaSoyad], [HastaDogumTarihi], [HastaYas], [BabaAdi], [AnaAdi], [HastaCepTel], [HastaAdres], [HastaCinsiyet], [Meslek], [SigortaTuru], [PoliklinikAdi], [DoktorAdSoyad]) VALUES (90, N'98543987023', N'Ahmet', N'Taner', CAST(N'1994-12-30' AS Date), 22, N'Ali', N'Zehra', N'05348769887', N'atakum', N'Erkek     ', N'işsiz', N'Yok', N'Genel Cerrahi', N'Nehir Kısa')
INSERT [dbo].[Hasta] ([Hastaid], [HastaTc], [HastaAd], [HastaSoyad], [HastaDogumTarihi], [HastaYas], [BabaAdi], [AnaAdi], [HastaCepTel], [HastaAdres], [HastaCinsiyet], [Meslek], [SigortaTuru], [PoliklinikAdi], [DoktorAdSoyad]) VALUES (91, N'76567887908', N'Zehra', N'kara', CAST(N'1994-12-30' AS Date), 22, N'Halil', N'tülay', N'           ', N'alaçam', N'Kız       ', N'işsiz', N'SSK', N'Göğüs Hastalıkları', N'Asya Yalçın')
INSERT [dbo].[Hasta] ([Hastaid], [HastaTc], [HastaAd], [HastaSoyad], [HastaDogumTarihi], [HastaYas], [BabaAdi], [AnaAdi], [HastaCepTel], [HastaAdres], [HastaCinsiyet], [Meslek], [SigortaTuru], [PoliklinikAdi], [DoktorAdSoyad]) VALUES (92, N'41234564   ', N'ahmet', N'kel', CAST(N'2016-12-01' AS Date), 29, N'hüsamettin', N'cemile', N'0235235    ', N'asdlkjşasdkjasd', N'Erkek     ', N'memur', N'Emekli Sandığı', N'FTR', N'Habip Karataş')
INSERT [dbo].[Hasta] ([Hastaid], [HastaTc], [HastaAd], [HastaSoyad], [HastaDogumTarihi], [HastaYas], [BabaAdi], [AnaAdi], [HastaCepTel], [HastaAdres], [HastaCinsiyet], [Meslek], [SigortaTuru], [PoliklinikAdi], [DoktorAdSoyad]) VALUES (93, N'14020037546', N'sdfsdfs', N'sdfsdfsd', CAST(N'2016-12-01' AS Date), 45, N'dfgfd', N'dfgfd', N'0546456    ', N'sadsad', N'Erkek     ', N'asdas', N'Emekli Sandığı', N'Çocuk', N'Murat Altıntop')
INSERT [dbo].[Hasta] ([Hastaid], [HastaTc], [HastaAd], [HastaSoyad], [HastaDogumTarihi], [HastaYas], [BabaAdi], [AnaAdi], [HastaCepTel], [HastaAdres], [HastaCinsiyet], [Meslek], [SigortaTuru], [PoliklinikAdi], [DoktorAdSoyad]) VALUES (1089, N'12123345465', N'Ali', N'Temiz', CAST(N'1996-12-30' AS Date), 20, N'Hasan', N'Fatma', N'05675677698', N'mimar sinan', N'Erkek     ', N'öğrenci', N'SSK', N'Kadın Doğum', N'Kader Aracı')
SET IDENTITY_INSERT [dbo].[Hasta] OFF
INSERT [dbo].[Kullanici] ([KullaniciAdi], [KullaniciSifre]) VALUES (N'admin', N'123456')
INSERT [dbo].[Kullanici] ([KullaniciAdi], [KullaniciSifre]) VALUES (N'mevlitin', N'19961991')
INSERT [dbo].[Kullanici] ([KullaniciAdi], [KullaniciSifre]) VALUES (N'mturap', N'19961996')
INSERT [dbo].[Kullanici] ([KullaniciAdi], [KullaniciSifre]) VALUES (N'sadikbaba', N'123456')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Belirtilmedi')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Beyin Cerrahisi')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Cildiye')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Çocuk')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Dahiliye')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'FTR')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Genel Cerrahi')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Göğüs Hastalıkları')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Göz')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Kadın Doğum')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Kalp Damar')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Kardiyoloji')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'KBB')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Nöroloji')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Ortopedi')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Plastik Cerrahi')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Psikiyatri')
INSERT [dbo].[Poliklinik] ([PoliklinikAdi]) VALUES (N'Üroloji')
INSERT [dbo].[Sigorta] ([SigortaTuru]) VALUES (N'Bağkur')
INSERT [dbo].[Sigorta] ([SigortaTuru]) VALUES (N'Belirtilmedi')
INSERT [dbo].[Sigorta] ([SigortaTuru]) VALUES (N'Diğer')
INSERT [dbo].[Sigorta] ([SigortaTuru]) VALUES (N'Emekli Sandığı')
INSERT [dbo].[Sigorta] ([SigortaTuru]) VALUES (N'SSK')
INSERT [dbo].[Sigorta] ([SigortaTuru]) VALUES (N'Yok')
ALTER TABLE [dbo].[Doktor]  WITH CHECK ADD  CONSTRAINT [FK_Doktor_Poliklinik] FOREIGN KEY([PoliklinikAdi])
REFERENCES [dbo].[Poliklinik] ([PoliklinikAdi])
GO
ALTER TABLE [dbo].[Doktor] CHECK CONSTRAINT [FK_Doktor_Poliklinik]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_Doktor] FOREIGN KEY([DoktorAdSoyad])
REFERENCES [dbo].[Doktor] ([DoktorAdSoyad])
GO
ALTER TABLE [dbo].[Hasta] CHECK CONSTRAINT [FK_Hasta_Doktor]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_Poliklinik1] FOREIGN KEY([PoliklinikAdi])
REFERENCES [dbo].[Poliklinik] ([PoliklinikAdi])
GO
ALTER TABLE [dbo].[Hasta] CHECK CONSTRAINT [FK_Hasta_Poliklinik1]
GO
ALTER TABLE [dbo].[Hasta]  WITH CHECK ADD  CONSTRAINT [FK_Hasta_Sigorta] FOREIGN KEY([SigortaTuru])
REFERENCES [dbo].[Sigorta] ([SigortaTuru])
GO
ALTER TABLE [dbo].[Hasta] CHECK CONSTRAINT [FK_Hasta_Sigorta]
GO
USE [master]
GO
ALTER DATABASE [HastaneVeriTabani] SET  READ_WRITE 
GO
