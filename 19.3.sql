USE [Ispisi]
GO
/****** Object:  Table [dbo].[polaz]    Script Date: 19.3.2019. 18:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[polaz](
	[sifra] [int] NOT NULL,
	[ime] [nchar](50) NULL,
	[prezime] [nchar](50) NULL,
	[mjesto_stanovanja] [nchar](50) NULL,
 CONSTRAINT [PK_polaz_1] PRIMARY KEY CLUSTERED 
(
	[sifra] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[polaznici id]    Script Date: 19.3.2019. 18:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[polaznici id](
	[polaznici] [nchar](10) NOT NULL,
	[tecajevi id] [varchar](50) NOT NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tecajevi]    Script Date: 19.3.2019. 18:13:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tecajevi](
	[id] [int] NOT NULL,
	[naziv] [varchar](50) NOT NULL,
	[cijena] [smallmoney] NULL,
	[mjesto_stanovanja] [nchar](10) NOT NULL,
 CONSTRAINT [PK_tecajevi_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
