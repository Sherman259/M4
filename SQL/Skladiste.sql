USE [master]
GO
/****** Object:  Database [Skladiste_trgovine]    Script Date: 20.3.2019. 13:58:45 ******/
CREATE DATABASE [Skladiste_trgovine]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Skladiste_trgovine', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Skladiste_trgovine.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Skladiste_trgovine_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Skladiste_trgovine_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Skladiste_trgovine] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Skladiste_trgovine].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Skladiste_trgovine] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET ARITHABORT OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Skladiste_trgovine] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Skladiste_trgovine] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Skladiste_trgovine] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Skladiste_trgovine] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET RECOVERY FULL 
GO
ALTER DATABASE [Skladiste_trgovine] SET  MULTI_USER 
GO
ALTER DATABASE [Skladiste_trgovine] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Skladiste_trgovine] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Skladiste_trgovine] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Skladiste_trgovine] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Skladiste_trgovine] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Skladiste_trgovine', N'ON'
GO
ALTER DATABASE [Skladiste_trgovine] SET QUERY_STORE = OFF
GO
USE [Skladiste_trgovine]
GO
/****** Object:  Table [dbo].[Proizvod]    Script Date: 20.3.2019. 13:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Proizvod](
	[sifra] [int] NOT NULL,
	[naziv_proizvoda] [nchar](50) NULL,
 CONSTRAINT [PK_Proizvod] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Radi]    Script Date: 20.3.2019. 13:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radi](
	[sifra] [int] NOT NULL,
	[radno mjesto] [nchar](50) NULL,
 CONSTRAINT [PK_Radi] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Radnik]    Script Date: 20.3.2019. 13:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Radnik](
	[sifra] [int] NOT NULL,
	[ime] [nchar](50) NULL,
	[prezime] [nchar](50) NULL,
	[OIB] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Radnik] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Se_nalazi]    Script Date: 20.3.2019. 13:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Se_nalazi](
	[sifra] [int] NOT NULL,
	[Drvena grada] [nchar](50) NULL,
	[Sanitarije] [nchar](50) NULL,
	[Boke i lakovi] [nchar](50) NULL,
 CONSTRAINT [PK_Se_nalazi] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Skladisno_mjesto]    Script Date: 20.3.2019. 13:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Skladisno_mjesto](
	[sifra] [int] NOT NULL,
	[grad] [nchar](50) NULL,
	[postanski_broj] [nchar](50) NULL,
	[adresa] [nchar](50) NULL,
 CONSTRAINT [PK_Skladisno_mjesto] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voditelji]    Script Date: 20.3.2019. 13:58:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voditelji](
	[sifra] [int] NOT NULL,
	[ime] [nchar](50) NULL,
	[prezime] [nchar](50) NULL,
	[OIB] [nchar](50) NOT NULL,
 CONSTRAINT [PK_Voditelji] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Proizvod]  WITH CHECK ADD  CONSTRAINT [FK_Proizvod_Se_nalazi] FOREIGN KEY([sifra])
REFERENCES [dbo].[Se_nalazi] ([sifra])
GO
ALTER TABLE [dbo].[Proizvod] CHECK CONSTRAINT [FK_Proizvod_Se_nalazi]
GO
ALTER TABLE [dbo].[Radi]  WITH CHECK ADD  CONSTRAINT [FK_Radi_Radnik] FOREIGN KEY([sifra])
REFERENCES [dbo].[Radnik] ([sifra])
GO
ALTER TABLE [dbo].[Radi] CHECK CONSTRAINT [FK_Radi_Radnik]
GO
ALTER TABLE [dbo].[Radnik]  WITH CHECK ADD  CONSTRAINT [FK_Radnik_Voditelji] FOREIGN KEY([sifra])
REFERENCES [dbo].[Voditelji] ([sifra])
GO
ALTER TABLE [dbo].[Radnik] CHECK CONSTRAINT [FK_Radnik_Voditelji]
GO
ALTER TABLE [dbo].[Se_nalazi]  WITH CHECK ADD  CONSTRAINT [FK_Se_nalazi_Skladisno_mjesto] FOREIGN KEY([sifra])
REFERENCES [dbo].[Skladisno_mjesto] ([sifra])
GO
ALTER TABLE [dbo].[Se_nalazi] CHECK CONSTRAINT [FK_Se_nalazi_Skladisno_mjesto]
GO
ALTER TABLE [dbo].[Skladisno_mjesto]  WITH CHECK ADD  CONSTRAINT [FK_Skladisno_mjesto_Radi] FOREIGN KEY([sifra])
REFERENCES [dbo].[Radi] ([sifra])
GO
ALTER TABLE [dbo].[Skladisno_mjesto] CHECK CONSTRAINT [FK_Skladisno_mjesto_Radi]
GO
USE [master]
GO
ALTER DATABASE [Skladiste_trgovine] SET  READ_WRITE 
GO
