USE [Okul]
GO
/****** Object:  Table [dbo].[DersBilgisi]    Script Date: 25/03/2024 00:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DersBilgisi](
	[DersId] [int] NOT NULL,
	[Derskodu] [bigint] NOT NULL,
	[Dersadı] [nchar](30) NOT NULL,
	[Ogretmen] [int] NOT NULL,
	[DersSaati] [datetime] NOT NULL,
 CONSTRAINT [PK_DersBilgisi] PRIMARY KEY CLUSTERED 
(
	[DersId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KullaniciBilgileri]    Script Date: 25/03/2024 00:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KullaniciBilgileri](
	[KullanıcıId] [int] NOT NULL,
	[Ogretmen] [int] NOT NULL,
	[Ogrenci] [int] NOT NULL,
	[Personel] [int] NOT NULL,
 CONSTRAINT [PK_KullaniciBilgileri] PRIMARY KEY CLUSTERED 
(
	[KullanıcıId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NotBilgileri]    Script Date: 25/03/2024 00:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NotBilgileri](
	[NotId] [int] NOT NULL,
	[NotBilgisi] [int] NOT NULL,
	[Ogrenci] [int] NOT NULL,
	[SınavTarihi] [datetime] NOT NULL,
 CONSTRAINT [PK_NotBilgileri] PRIMARY KEY CLUSTERED 
(
	[NotId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgrenciBilgileri]    Script Date: 25/03/2024 00:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgrenciBilgileri](
	[OgrenciId] [int] NOT NULL,
	[No] [int] NOT NULL,
	[Ad] [nchar](30) NOT NULL,
	[Soyad] [nchar](30) NOT NULL,
	[Cinsiyet] [nchar](10) NULL,
	[DogumTarihi] [date] NULL,
 CONSTRAINT [PK_OgrenciBilgileri] PRIMARY KEY CLUSTERED 
(
	[OgrenciId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[OgretmenBilgisi]    Script Date: 25/03/2024 00:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[OgretmenBilgisi](
	[OgretmenId] [int] NOT NULL,
	[Ad] [nchar](30) NOT NULL,
	[Soyad] [nchar](30) NOT NULL,
	[UzmanlıkAlanı] [nchar](30) NOT NULL,
	[Email] [nchar](30) NULL,
	[Telefon] [bigint] NULL,
 CONSTRAINT [PK_OgretmenBilgisi] PRIMARY KEY CLUSTERED 
(
	[OgretmenId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PersonelBilgisi]    Script Date: 25/03/2024 00:12:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PersonelBilgisi](
	[PersonelId] [int] NOT NULL,
	[Ad] [nchar](30) NOT NULL,
	[Soyad] [nchar](30) NOT NULL,
	[Telefon] [bigint] NOT NULL,
	[email] [nchar](30) NOT NULL,
	[Adres] [nchar](600) NOT NULL,
 CONSTRAINT [PK_PersonelBilgisi] PRIMARY KEY CLUSTERED 
(
	[PersonelId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DersBilgisi]  WITH CHECK ADD  CONSTRAINT [FK_DersBilgisi_OgretmenBilgisi] FOREIGN KEY([Ogretmen])
REFERENCES [dbo].[OgretmenBilgisi] ([OgretmenId])
GO
ALTER TABLE [dbo].[DersBilgisi] CHECK CONSTRAINT [FK_DersBilgisi_OgretmenBilgisi]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_OgrenciBilgileri] FOREIGN KEY([Ogrenci])
REFERENCES [dbo].[OgrenciBilgileri] ([OgrenciId])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_OgrenciBilgileri]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_OgretmenBilgisi] FOREIGN KEY([Ogretmen])
REFERENCES [dbo].[OgretmenBilgisi] ([OgretmenId])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_OgretmenBilgisi]
GO
ALTER TABLE [dbo].[KullaniciBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_KullaniciBilgileri_PersonelBilgisi] FOREIGN KEY([Personel])
REFERENCES [dbo].[PersonelBilgisi] ([PersonelId])
GO
ALTER TABLE [dbo].[KullaniciBilgileri] CHECK CONSTRAINT [FK_KullaniciBilgileri_PersonelBilgisi]
GO
ALTER TABLE [dbo].[NotBilgileri]  WITH CHECK ADD  CONSTRAINT [FK_NotBilgileri_OgrenciBilgileri] FOREIGN KEY([Ogrenci])
REFERENCES [dbo].[OgrenciBilgileri] ([OgrenciId])
GO
ALTER TABLE [dbo].[NotBilgileri] CHECK CONSTRAINT [FK_NotBilgileri_OgrenciBilgileri]
GO
