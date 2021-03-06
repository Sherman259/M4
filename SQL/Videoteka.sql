USE [master]
GO
/****** Object:  Database [Videoteka]    Script Date: 20.3.2019. 14:01:15 ******/
CREATE DATABASE [Videoteka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Videoteka', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Videoteka.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Videoteka_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Videoteka_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Videoteka] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Videoteka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Videoteka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Videoteka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Videoteka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Videoteka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Videoteka] SET ARITHABORT OFF 
GO
ALTER DATABASE [Videoteka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Videoteka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Videoteka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Videoteka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Videoteka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Videoteka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Videoteka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Videoteka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Videoteka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Videoteka] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Videoteka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Videoteka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Videoteka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Videoteka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Videoteka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Videoteka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Videoteka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Videoteka] SET RECOVERY FULL 
GO
ALTER DATABASE [Videoteka] SET  MULTI_USER 
GO
ALTER DATABASE [Videoteka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Videoteka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Videoteka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Videoteka] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Videoteka] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Videoteka', N'ON'
GO
ALTER DATABASE [Videoteka] SET QUERY_STORE = OFF
GO
USE [Videoteka]
GO
/****** Object:  Table [dbo].[Cijenik]    Script Date: 20.3.2019. 14:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cijenik](
	[sifra] [int] NOT NULL,
	[naziv] [nchar](50) NULL,
	[film] [nchar](50) NULL,
	[hit_film] [nchar](50) NULL,
	[stari_film] [nchar](50) NULL,
	[zakasnina] [nchar](50) NULL,
 CONSTRAINT [PK_Cijenik] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[clanovi]    Script Date: 20.3.2019. 14:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[clanovi](
	[sifra] [int] NOT NULL,
	[ime] [nchar](50) NULL,
	[prezime] [nchar](50) NULL,
	[OIB] [nchar](50) NULL,
 CONSTRAINT [PK_clanovi] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Datum_posudbe]    Script Date: 20.3.2019. 14:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Datum_posudbe](
	[sifra] [int] NOT NULL,
	[datum_posudbe] [nchar](50) NULL,
 CONSTRAINT [PK_Datum_posudbe] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Filmovi]    Script Date: 20.3.2019. 14:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Filmovi](
	[sifra] [int] NOT NULL,
	[naziv] [nchar](50) NULL,
 CONSTRAINT [PK_Filmovi] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zanr]    Script Date: 20.3.2019. 14:01:15 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zanr](
	[sifra] [int] NOT NULL,
	[western] [nchar](50) NULL,
	[krimi] [nchar](50) NULL,
	[akcijski] [nchar](50) NULL,
	[dvd] [nchar](50) NULL,
	[vhs] [nchar](50) NULL,
 CONSTRAINT [PK_Zanr] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Cijenik]  WITH CHECK ADD  CONSTRAINT [FK_Cijenik_Datum_posudbe] FOREIGN KEY([sifra])
REFERENCES [dbo].[Datum_posudbe] ([sifra])
GO
ALTER TABLE [dbo].[Cijenik] CHECK CONSTRAINT [FK_Cijenik_Datum_posudbe]
GO
ALTER TABLE [dbo].[clanovi]  WITH CHECK ADD  CONSTRAINT [FK_clanovi_Cijenik] FOREIGN KEY([sifra])
REFERENCES [dbo].[Cijenik] ([sifra])
GO
ALTER TABLE [dbo].[clanovi] CHECK CONSTRAINT [FK_clanovi_Cijenik]
GO
ALTER TABLE [dbo].[Datum_posudbe]  WITH CHECK ADD  CONSTRAINT [FK_Datum_posudbe_Filmovi] FOREIGN KEY([sifra])
REFERENCES [dbo].[Filmovi] ([sifra])
GO
ALTER TABLE [dbo].[Datum_posudbe] CHECK CONSTRAINT [FK_Datum_posudbe_Filmovi]
GO
ALTER TABLE [dbo].[Filmovi]  WITH CHECK ADD  CONSTRAINT [FK_Filmovi_Cijenik] FOREIGN KEY([sifra])
REFERENCES [dbo].[Cijenik] ([sifra])
GO
ALTER TABLE [dbo].[Filmovi] CHECK CONSTRAINT [FK_Filmovi_Cijenik]
GO
ALTER TABLE [dbo].[Filmovi]  WITH CHECK ADD  CONSTRAINT [FK_Filmovi_clanovi] FOREIGN KEY([sifra])
REFERENCES [dbo].[clanovi] ([sifra])
GO
ALTER TABLE [dbo].[Filmovi] CHECK CONSTRAINT [FK_Filmovi_clanovi]
GO
ALTER TABLE [dbo].[Zanr]  WITH CHECK ADD  CONSTRAINT [FK_Zanr_Filmovi] FOREIGN KEY([sifra])
REFERENCES [dbo].[Filmovi] ([sifra])
GO
ALTER TABLE [dbo].[Zanr] CHECK CONSTRAINT [FK_Zanr_Filmovi]
GO
USE [master]
GO
ALTER DATABASE [Videoteka] SET  READ_WRITE 
GO
