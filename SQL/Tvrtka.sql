USE [master]
GO
/****** Object:  Database [Tvrtka]    Script Date: 20.3.2019. 14:01:54 ******/
CREATE DATABASE [Tvrtka]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'Tvrtka', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tvrtka.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'Tvrtka_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.MSSQLSERVER\MSSQL\DATA\Tvrtka_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [Tvrtka] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [Tvrtka].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [Tvrtka] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [Tvrtka] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [Tvrtka] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [Tvrtka] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [Tvrtka] SET ARITHABORT OFF 
GO
ALTER DATABASE [Tvrtka] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [Tvrtka] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [Tvrtka] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [Tvrtka] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [Tvrtka] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [Tvrtka] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [Tvrtka] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [Tvrtka] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [Tvrtka] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [Tvrtka] SET  ENABLE_BROKER 
GO
ALTER DATABASE [Tvrtka] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [Tvrtka] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [Tvrtka] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [Tvrtka] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [Tvrtka] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [Tvrtka] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [Tvrtka] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [Tvrtka] SET RECOVERY FULL 
GO
ALTER DATABASE [Tvrtka] SET  MULTI_USER 
GO
ALTER DATABASE [Tvrtka] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [Tvrtka] SET DB_CHAINING OFF 
GO
ALTER DATABASE [Tvrtka] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [Tvrtka] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [Tvrtka] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'Tvrtka', N'ON'
GO
ALTER DATABASE [Tvrtka] SET QUERY_STORE = OFF
GO
USE [Tvrtka]
GO
/****** Object:  Table [dbo].[Odjel_za_marketing]    Script Date: 20.3.2019. 14:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odjel_za_marketing](
	[sifra] [int] NOT NULL,
	[naziv_radnog_mjesta] [nchar](50) NULL,
 CONSTRAINT [PK_Odjel_za_marketing] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odjel_za_sasije]    Script Date: 20.3.2019. 14:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odjel_za_sasije](
	[sifra] [int] NOT NULL,
	[naziv_radnog_mjesta] [nchar](50) NULL,
 CONSTRAINT [PK_Odjel_za_sasije] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Odjel_za_sklapanje]    Script Date: 20.3.2019. 14:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Odjel_za_sklapanje](
	[sifra] [int] NOT NULL,
	[naziv_radnog_mjesta] [nchar](50) NULL,
 CONSTRAINT [PK_Odjel_za_sklapanje] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Voditelji]    Script Date: 20.3.2019. 14:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Voditelji](
	[sifra] [int] NOT NULL,
	[ime] [nchar](50) NULL,
	[prezime] [nchar](50) NULL,
	[OIB] [nchar](25) NULL,
 CONSTRAINT [PK_Voditelji] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zaposlenici]    Script Date: 20.3.2019. 14:01:54 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zaposlenici](
	[sifra] [int] NOT NULL,
	[ime] [nchar](50) NULL,
	[prezime] [nchar](50) NULL,
	[OIB] [nchar](25) NULL,
 CONSTRAINT [PK_Zaposlenici] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Odjel_za_marketing]  WITH CHECK ADD  CONSTRAINT [FK_Odjel_za_marketing_Voditelji] FOREIGN KEY([sifra])
REFERENCES [dbo].[Voditelji] ([sifra])
GO
ALTER TABLE [dbo].[Odjel_za_marketing] CHECK CONSTRAINT [FK_Odjel_za_marketing_Voditelji]
GO
ALTER TABLE [dbo].[Odjel_za_marketing]  WITH CHECK ADD  CONSTRAINT [FK_Odjel_za_marketing_Zaposlenici] FOREIGN KEY([sifra])
REFERENCES [dbo].[Zaposlenici] ([sifra])
GO
ALTER TABLE [dbo].[Odjel_za_marketing] CHECK CONSTRAINT [FK_Odjel_za_marketing_Zaposlenici]
GO
ALTER TABLE [dbo].[Odjel_za_sasije]  WITH CHECK ADD  CONSTRAINT [FK_Odjel_za_sasije_Voditelji] FOREIGN KEY([sifra])
REFERENCES [dbo].[Voditelji] ([sifra])
GO
ALTER TABLE [dbo].[Odjel_za_sasije] CHECK CONSTRAINT [FK_Odjel_za_sasije_Voditelji]
GO
ALTER TABLE [dbo].[Odjel_za_sasije]  WITH CHECK ADD  CONSTRAINT [FK_Odjel_za_sasije_Zaposlenici] FOREIGN KEY([sifra])
REFERENCES [dbo].[Zaposlenici] ([sifra])
GO
ALTER TABLE [dbo].[Odjel_za_sasije] CHECK CONSTRAINT [FK_Odjel_za_sasije_Zaposlenici]
GO
ALTER TABLE [dbo].[Odjel_za_sklapanje]  WITH CHECK ADD  CONSTRAINT [FK_Odjel_za_sklapanje_Voditelji] FOREIGN KEY([sifra])
REFERENCES [dbo].[Voditelji] ([sifra])
GO
ALTER TABLE [dbo].[Odjel_za_sklapanje] CHECK CONSTRAINT [FK_Odjel_za_sklapanje_Voditelji]
GO
ALTER TABLE [dbo].[Odjel_za_sklapanje]  WITH CHECK ADD  CONSTRAINT [FK_Odjel_za_sklapanje_Zaposlenici] FOREIGN KEY([sifra])
REFERENCES [dbo].[Zaposlenici] ([sifra])
GO
ALTER TABLE [dbo].[Odjel_za_sklapanje] CHECK CONSTRAINT [FK_Odjel_za_sklapanje_Zaposlenici]
GO
USE [master]
GO
ALTER DATABASE [Tvrtka] SET  READ_WRITE 
GO
