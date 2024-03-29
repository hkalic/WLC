USE [master]
GO
/****** Object:  Database [WLC]    Script Date: 11/16/2007 13:01:09 ******/
CREATE DATABASE [WLC] ON  PRIMARY 
( NAME = N'WLC', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\WLC.mdf' , SIZE = 3072KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'WLC_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL.1\MSSQL\Data\WLC_log.ldf' , SIZE = 1024KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
EXEC dbo.sp_dbcmptlevel @dbname=N'WLC', @new_cmptlevel=90
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [WLC].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [WLC] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [WLC] SET ANSI_NULLS OFF
GO
ALTER DATABASE [WLC] SET ANSI_PADDING OFF
GO
ALTER DATABASE [WLC] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [WLC] SET ARITHABORT OFF
GO
ALTER DATABASE [WLC] SET AUTO_CLOSE ON
GO
ALTER DATABASE [WLC] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [WLC] SET AUTO_SHRINK ON
GO
ALTER DATABASE [WLC] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [WLC] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [WLC] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [WLC] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [WLC] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [WLC] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [WLC] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [WLC] SET  DISABLE_BROKER
GO
ALTER DATABASE [WLC] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [WLC] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [WLC] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [WLC] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [WLC] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [WLC] SET  READ_WRITE
GO
ALTER DATABASE [WLC] SET RECOVERY SIMPLE
GO
ALTER DATABASE [WLC] SET  MULTI_USER
GO
ALTER DATABASE [WLC] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [WLC] SET DB_CHAINING OFF
GO
USE [WLC]
GO
/****** Object:  Table [dbo].[Natjecanja]    Script Date: 11/16/2007 13:01:10 ******/
DROP TABLE [dbo].[Natjecanja]
GO
/****** Object:  Table [dbo].[Kategorije]    Script Date: 11/16/2007 13:01:09 ******/
DROP TABLE [dbo].[Kategorije]
GO
/****** Object:  Table [dbo].[Klubovi]    Script Date: 11/16/2007 13:01:09 ******/
DROP TABLE [dbo].[Klubovi]
GO
/****** Object:  Table [dbo].[NatjecanjeDetail]    Script Date: 11/16/2007 13:01:10 ******/
DROP TABLE [dbo].[NatjecanjeDetail]
GO
/****** Object:  StoredProcedure [dbo].[sp_VaganjeGrid]    Script Date: 11/16/2007 13:01:10 ******/
DROP PROCEDURE [dbo].[sp_VaganjeGrid]
GO
/****** Object:  Table [dbo].[PomocniStatus]    Script Date: 11/16/2007 13:01:10 ******/
DROP TABLE [dbo].[PomocniStatus]
GO
/****** Object:  Table [dbo].[VrsteNatjecanja]    Script Date: 11/16/2007 13:01:10 ******/
DROP TABLE [dbo].[VrsteNatjecanja]
GO
/****** Object:  UserDefinedFunction [dbo].[f_NadjiKategoriju]    Script Date: 11/16/2007 13:01:10 ******/
DROP FUNCTION [dbo].[f_NadjiKategoriju]
GO
/****** Object:  Table [dbo].[Vaganje]    Script Date: 11/16/2007 13:01:10 ******/
DROP TABLE [dbo].[Vaganje]
GO
/****** Object:  Table [dbo].[Ucesnici]    Script Date: 11/16/2007 13:01:10 ******/
DROP TABLE [dbo].[Ucesnici]
GO
/****** Object:  User [zdravko]    Script Date: 11/16/2007 13:01:09 ******/
DROP USER [zdravko]
GO
/****** Object:  User [zdravko]    Script Date: 11/16/2007 13:01:09 ******/
CREATE USER [zdravko] WITHOUT LOGIN WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[Natjecanja]    Script Date: 11/16/2007 13:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Natjecanja](
	[NatjecanjeID] [int] IDENTITY(1,1) NOT NULL,
	[NazivNatjecanja] [nvarchar](80) NOT NULL,
	[MjestoNatjecanja] [nvarchar](20) NULL,
	[DatumNatjecanja] [datetime] NULL,
	[SinclairKonstanta] [float] NOT NULL,
	[SinclairKonstanta2] [float] NOT NULL,
	[SinclairKonstantaZene] [float] NOT NULL,
	[SinclairKonstantaZene2] [float] NOT NULL,
	[Sudac1] [nvarchar](30) NULL,
	[S1Rang] [nvarchar](10) NULL,
	[Sudac2] [nvarchar](30) NULL,
	[S2Rang] [nvarchar](10) NULL,
	[Sudac3] [nvarchar](30) NULL,
	[S3Rang] [nvarchar](10) NULL,
	[Zapisnicar] [nvarchar](30) NULL,
	[ZRang] [nvarchar](10) NULL,
	[Delegat] [nvarchar](30) NULL,
	[DRang] [nvarchar](10) NULL,
	[StatusNatjecanja] [nvarchar](1) NOT NULL CONSTRAINT [DF_Natjecanja_StatusNatjecanja]  DEFAULT (N'V'),
 CONSTRAINT [PK_Natjecanja] PRIMARY KEY CLUSTERED 
(
	[NatjecanjeID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sinclair konstanta na dan natjecanja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Natjecanja', @level2type=N'COLUMN',@level2name=N'SinclairKonstanta'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sinclair konstanta na dan natjecanja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Natjecanja', @level2type=N'COLUMN',@level2name=N'SinclairKonstanta2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sinclair konstanta za žene na dan natjecanja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Natjecanja', @level2type=N'COLUMN',@level2name=N'SinclairKonstantaZene'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Sinclair konstanta za žene na dan natjecanja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Natjecanja', @level2type=N'COLUMN',@level2name=N'SinclairKonstantaZene2'
GO
/****** Object:  Table [dbo].[Kategorije]    Script Date: 11/16/2007 13:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Kategorije](
	[SifraKategorije] [int] NOT NULL,
	[NazivKategorije] [nvarchar](20) NULL,
	[OdKG] [float] NULL,
	[DoKG] [float] NULL,
	[Spol] [nvarchar](1) NULL,
	[Kadeti] [nvarchar](1) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Klubovi]    Script Date: 11/16/2007 13:01:09 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Klubovi](
	[KlubID] [int] IDENTITY(1,1) NOT NULL,
	[NazivKluba] [nvarchar](30) NOT NULL,
	[MjestoKluba] [nvarchar](30) NULL,
 CONSTRAINT [PK_Klubovi] PRIMARY KEY CLUSTERED 
(
	[KlubID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NatjecanjeDetail]    Script Date: 11/16/2007 13:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NatjecanjeDetail](
	[NatjecanjeDetailID] [int] IDENTITY(1,1) NOT NULL,
	[NatjecanjeID] [int] NOT NULL,
	[RedniBrojVaganja] [int] NOT NULL,
	[SifraDizaca] [int] NOT NULL,
	[SifraKluba] [int] NOT NULL,
	[TjelesnaTezina] [float] NULL,
	[SifraKategorije] [int] NOT NULL,
	[SinclairKoeficijen] [float] NOT NULL,
	[SifraEkipno] [nvarchar](20) NULL,
	[SifraSeniorsko] [nvarchar](1) NULL CONSTRAINT [DF_NatjecanjeDetail_SifraSeniorsko]  DEFAULT (N'N'),
	[SifraJuniorsko] [nvarchar](1) NULL,
	[PocetnaTTrzaj] [float] NOT NULL CONSTRAINT [DF_NatjecanjeDetail_PocetnaTTrzaj]  DEFAULT ((0)),
	[PocetnaTIzbacaj] [float] NOT NULL CONSTRAINT [DF_NatjecanjeDetail_PocetnaTIzbacaj]  DEFAULT ((0)),
	[Trzaj1] [float] NULL,
	[Trzaj2] [float] NULL,
	[Trzaj3] [float] NULL,
	[OcijenaTrzaj1] [nvarchar](1) NULL CONSTRAINT [DF_NatjecanjeDetail_OcijenaTrzaj1]  DEFAULT (N'-'),
	[OcijenaTrzaj2] [nvarchar](1) NULL CONSTRAINT [DF_NatjecanjeDetail_OcijenaTrzaj11]  DEFAULT (N'-'),
	[OcijenaTrzaj3] [nvarchar](1) NULL CONSTRAINT [DF_NatjecanjeDetail_OcijenaTrzaj12]  DEFAULT (N'-'),
	[Izbacaj1] [float] NULL,
	[Izbacaj2] [float] NULL,
	[Izbacaj3] [float] NULL,
	[OcijenaIzbacaj1] [nvarchar](1) NULL CONSTRAINT [DF_NatjecanjeDetail_OcijenaTrzaj11_1]  DEFAULT (N'-'),
	[OcijenaIzbacaj2] [nvarchar](1) NULL CONSTRAINT [DF_NatjecanjeDetail_OcijenaIzbacaj12]  DEFAULT (N'-'),
	[OcijenaIzbacaj3] [nvarchar](1) NULL CONSTRAINT [DF_NatjecanjeDetail_OcijenaIzbacaj11]  DEFAULT (N'-'),
	[TotalPodignuto] [float] NULL,
	[SinclairBodovi] [float] NULL,
	[Prioritet] [int] NULL CONSTRAINT [DF_NatjecanjeDetail_Prioritet]  DEFAULT ((0)),
	[TDizeSe] [float] NULL,
	[IDizeSe] [float] NULL,
	[TPokusaj] [int] NULL CONSTRAINT [DF_NatjecanjeDetail_TPokusaj1]  DEFAULT ((0)),
	[IPokusaj] [int] NULL CONSTRAINT [DF_NatjecanjeDetail_Pokusaj]  DEFAULT ((0)),
	[IzvanKonkurencije] [nvarchar](1) NULL CONSTRAINT [DF_NatjecanjeDetail_IzvanKonkurencije]  DEFAULT (N'N'),
	[Grupa] [int] NOT NULL CONSTRAINT [DF_NatjecanjeDetail_Grupa]  DEFAULT ((1)),
 CONSTRAINT [PK_NatjecanjeDetail] PRIMARY KEY CLUSTERED 
(
	[NatjecanjeDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Tjelesna težina dizača' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'TjelesnaTezina'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Početna težina za Trzaj' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'PocetnaTTrzaj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Početna težina za Izbačaj' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'PocetnaTIzbacaj'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Težina prvog pokušaja Trzaja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'Trzaj1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Težina drugog pokušaja Trzaja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'Trzaj2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Težina trećeg pokušaja Trzaja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'Trzaj3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ocijena za prvi Trzaj' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'OcijenaTrzaj1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ocijena za drugi Trzaj' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'OcijenaTrzaj2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ocijena za treći Trzaj' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'OcijenaTrzaj3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Težina prvog pokušaja Izbačaja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'Izbacaj1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Težina drugog pokušaja Izbačaja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'Izbacaj2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Težina trećeg pokušaja Izbačaja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'Izbacaj3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ocijena za prvi Izbačaj' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'OcijenaIzbacaj1'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ocijena za drugi Izbačaj' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'OcijenaIzbacaj2'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ocijena za treći Izbačaj' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'OcijenaIzbacaj3'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ukupno podignuto u Izbačaju i Trzaju' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'TotalPodignuto'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prioritet pri redosljedu dizanja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail', @level2type=N'COLUMN',@level2name=N'Prioritet'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Detalji natjecanja' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'NatjecanjeDetail'
GO
/****** Object:  Table [dbo].[PomocniStatus]    Script Date: 11/16/2007 13:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PomocniStatus](
	[glupiID] [int] IDENTITY(1,1) NOT NULL,
	[NatjecanjeID] [int] NOT NULL,
	[Grupa] [int] NOT NULL CONSTRAINT [DF_PomocniStatus_Grupa]  DEFAULT ((1)),
	[IzbacajIliTrzaj] [nvarchar](1) NOT NULL CONSTRAINT [DF_PomocniStatus_IzbacajIliTrzaj]  DEFAULT (N'T'),
 CONSTRAINT [PK_PomocniStatus] PRIMARY KEY CLUSTERED 
(
	[glupiID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[VrsteNatjecanja]    Script Date: 11/16/2007 13:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[VrsteNatjecanja](
	[SifraVNatjecanja] [nvarchar](1) NOT NULL CONSTRAINT [DF_VrsteNatjecanja_SifraVNatjecanja]  DEFAULT (N'S'),
	[NazivVNatjecanja] [nvarchar](20) NULL,
 CONSTRAINT [PK_VrsteNatjecanja] PRIMARY KEY CLUSTERED 
(
	[SifraVNatjecanja] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[f_NadjiKategoriju]    Script Date: 11/16/2007 13:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		hCo
-- Create date: 
-- Description:	Nađi šifru kategorije
-- =============================================
CREATE FUNCTION [dbo].[f_NadjiKategoriju] 
(
	-- Add the parameters for the function here
	@TTezina float,
	@Sex	nvarchar(1),
	@Kadet	nvarchar(1)
)
RETURNS int
AS
BEGIN
	-- Declare the return variable here
	DECLARE @Result int

	-- Add the T-SQL statements to compute the return value here
	SELECT @Result = SifraKategorije
	FROM Kategorije
	WHERE (Spol = @Sex) 
	AND (Kadeti = @Kadet)
	AND (DoKG >= @TTezina) 
	AND (OdKG < @TTezina) 

	-- Return the result of the function
	RETURN @Result

END
GO
/****** Object:  Table [dbo].[Ucesnici]    Script Date: 11/16/2007 13:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Ucesnici](
	[UcesnikID] [int] IDENTITY(1,1) NOT NULL,
	[Prezime] [nvarchar](20) NOT NULL,
	[Ime] [nvarchar](20) NOT NULL,
	[Spol] [nvarchar](1) NULL CONSTRAINT [DF_Ucesnici_Spol]  DEFAULT (N'M'),
	[JuniorKadet] [nvarchar](1) NULL CONSTRAINT [DF_Ucesnici_JuniorKadet]  DEFAULT (N'N'),
	[GodinaRodjenja] [int] NULL,
 CONSTRAINT [PK_Ucesnici] PRIMARY KEY CLUSTERED 
(
	[UcesnikID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Šifra registriranog dizača utega' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ucesnici', @level2type=N'COLUMN',@level2name=N'UcesnikID'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Prezime dizača utega' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ucesnici', @level2type=N'COLUMN',@level2name=N'Prezime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Ime dizača utega' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ucesnici', @level2type=N'COLUMN',@level2name=N'Ime'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_Description', @value=N'Popis svih dizača utega' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'TABLE',@level1name=N'Ucesnici'
GO
/****** Object:  Table [dbo].[Vaganje]    Script Date: 11/16/2007 13:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Vaganje](
	[NatjecanjeDetailID] [int] IDENTITY(1,1) NOT NULL,
	[NatjecanjeID] [int] NOT NULL,
	[RedniBrojVaganja] [int] NOT NULL,
	[SifraDizaca] [int] NULL,
	[Ime] [nvarchar](20) NULL,
	[Prezime] [nvarchar](20) NULL,
	[Spol] [nchar](1) NULL,
	[GodinaRodjenja] [int] NULL,
	[DaLiJeJunior] [nvarchar](1) NULL,
	[SifraKluba] [int] NULL,
	[NazivKluba] [nvarchar](30) NULL,
	[MjestoKluba] [nvarchar](30) NULL,
	[TjelesnaTezina] [float] NULL,
	[SinclairKoeficijent] [float] NULL,
	[SifraKategorije] [int] NULL,
	[NazivKategorije] [nvarchar](20) NULL,
	[Ekipno] [nvarchar](20) NULL,
	[Seniorsko] [nvarchar](1) NULL,
	[Juniorsko] [nvarchar](1) NULL,
	[PocetnaTTrzaj] [float] NULL,
	[PocetnaTIzbacaj] [float] NULL,
	[Prioritet] [int] NOT NULL CONSTRAINT [DF_Vaganje_Prioritet]  DEFAULT ((0)),
	[IzvanKonkurencije] [nchar](1) NOT NULL CONSTRAINT [DF_Vaganje_IzvanKonkurencije]  DEFAULT (N'N'),
	[Grupa] [int] NOT NULL CONSTRAINT [DF_Vaganje_Grupa]  DEFAULT ((1)),
 CONSTRAINT [PK_Vaganje] PRIMARY KEY CLUSTERED 
(
	[NatjecanjeDetailID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  StoredProcedure [dbo].[sp_VaganjeGrid]    Script Date: 11/16/2007 13:01:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- =============================================
-- Author:		<Author,,Name>
-- Create date: <Create Date,,>
-- Description:	<Description,,>
-- =============================================
CREATE PROCEDURE [dbo].[sp_VaganjeGrid]
	-- Add the parameters for the stored procedure here
	@SifraNatjecanja int = 0 
AS
BEGIN
	-- SET NOCOUNT ON added to prevent extra result sets from
	-- interfering with SELECT statements.
	SET NOCOUNT ON;

    -- Insert statements for procedure here
SELECT     dbo.NatjecanjeDetail.NatjecanjeDetailID, dbo.NatjecanjeDetail.NatjecanjeID, dbo.NatjecanjeDetail.RedniBrojVaganja, dbo.NatjecanjeDetail.SifraDizaca,
                       dbo.NatjecanjeDetail.SifraKluba, dbo.NatjecanjeDetail.TjelesnaTezina, dbo.NatjecanjeDetail.SifraKategorije, dbo.NatjecanjeDetail.SinclairKoeficijen, 
                      dbo.NatjecanjeDetail.SifraEkipno, dbo.NatjecanjeDetail.SifraSeniorsko, dbo.NatjecanjeDetail.SifraJuniorsko, dbo.NatjecanjeDetail.PocetnaTTrzaj, dbo.NatjecanjeDetail.PocetnaTIzbacaj, 
                      dbo.NatjecanjeDetail.Prioritet, dbo.Klubovi.NazivKluba, dbo.Ucesnici.Prezime + ' ' + dbo.Ucesnici.Ime AS Ucesnik, dbo.NatjecanjeDetail.IzvanKonkurencije
FROM         dbo.NatjecanjeDetail INNER JOIN
                      dbo.Klubovi ON dbo.NatjecanjeDetail.SifraKluba = dbo.Klubovi.KlubID INNER JOIN
                      dbo.Ucesnici ON dbo.NatjecanjeDetail.SifraDizaca = dbo.Ucesnici.UcesnikID
WHERE     (dbo.NatjecanjeDetail.NatjecanjeID = @SifraNatjecanja)
ORDER BY dbo.NatjecanjeDetail.RedniBrojVaganja DESC

END
GO
