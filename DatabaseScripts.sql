/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23/07/2021 19:06:48 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[AspNetUsers]') AND type in (N'U'))
DROP TABLE [dbo].[AspNetUsers]
GO

/****** Object:  Table [dbo].[AspNetUsers]    Script Date: 23/07/2021 19:06:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[AspNetUsers](
	[UserName] [varchar](255) NOT NULL,
	[Id] [int] NOT NULL,
	[Email] [varchar](255) NOT NULL,
	[EmailConfirmed] [varchar](255) NOT NULL,
	[PasswordHash] [varchar](255) NOT NULL,
	[SecurityStamp] [varchar](255) NOT NULL,
	[PhoneNumber] [int] NULL,
	[PhoneNumberConfirmed] [int] NULL,
	[TwoFactorEnabled] [bit] NOT NULL,
	[AccessFailedCount] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY NONCLUSTERED 
(
	[UserName] ASC
)WITH (STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Games] DROP CONSTRAINT [CK__Games__Rating__6B24EA82]
GO

/****** Object:  Table [dbo].[Games]    Script Date: 23/07/2021 19:08:19 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Games]') AND type in (N'U'))
DROP TABLE [dbo].[Games]
GO

/****** Object:  Table [dbo].[Games]    Script Date: 23/07/2021 19:08:19 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Games](
	[GameID] [int] IDENTITY(1,1) NOT NULL,
	[Title] [varchar](255) NOT NULL,
	[Price] [decimal](10, 2) NOT NULL,
	[YearPublished] [date] NOT NULL,
	[Genre] [varchar](255) NOT NULL,
	[Rating] [int] NOT NULL
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[Games]  WITH CHECK ADD CHECK  (([Rating]>=(1) AND [Rating]<=(5)))
GO

/****** Object:  Table [dbo].[Reviews]    Script Date: 23/07/2021 19:09:38 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Reviews]') AND type in (N'U'))
DROP TABLE [dbo].[Reviews]
GO

/****** Object:  Table [dbo].[Reviews]    Script Date: 23/07/2021 19:09:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Reviews](
	[ReviewID] [int] IDENTITY(1,1) NOT NULL,
	[GameTitle] [varchar](255) NOT NULL,
	[ReviewTxT] [varchar](255) NOT NULL,
	[Rating] [int] NOT NULL
) ON [PRIMARY]
GO

INSERT INTO [dbo].[Games]
           ([Title]
           ,[Price]
           ,[YearPublished]
           ,[Genre]
           ,[Rating])
     VALUES
           ('Fifa 21', '39.99', '2020', 'Sport', '3'),
		   ('The Witcher 3', '35.99', '2015', 'Action_Adventure', '5'),
		   ('GTA 5', '29.99', '2013', 'Action_Adventure', '4'),
		   ('Mortal Kombat 11', '19.99', '2019', 'Fighting', '4'),
		   ('Minecraft', '17.99', '2011', 'Sandbox', '2')

GO


