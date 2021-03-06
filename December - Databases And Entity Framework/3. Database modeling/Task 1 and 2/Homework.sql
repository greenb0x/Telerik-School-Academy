USE [Homework]
GO
/****** Object:  Table [dbo].[Address]    Script Date: 12.1.2015 г. 18:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Address](
	[id] [int] NOT NULL,
	[Address_text] [text] NULL,
	[town_id] [int] NULL,
 CONSTRAINT [PK_Address] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Continent]    Script Date: 12.1.2015 г. 18:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Continent](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
 CONSTRAINT [PK_Continent] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Country]    Script Date: 12.1.2015 г. 18:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Country](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[Continent_id] [int] NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Person]    Script Date: 12.1.2015 г. 18:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Person](
	[id] [int] NOT NULL,
	[first_name] [nvarchar](50) NULL,
	[last_name] [nvarchar](50) NULL,
	[address_id] [int] NULL,
 CONSTRAINT [PK_Person] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[Town]    Script Date: 12.1.2015 г. 18:56:30 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Town](
	[id] [int] NOT NULL,
	[name] [nvarchar](50) NULL,
	[country_id] [int] NULL,
 CONSTRAINT [PK_Town] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (1, N'Al. Malinov Street', 1)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (2, N'1 street', 2)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (3, N'2 street', 3)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (4, N'3 street', 4)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (5, N'4 street', 5)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (6, N'5 street', 6)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (7, N'6 street', 7)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (8, N'7 street', 8)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (9, N'8 street', 9)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (10, N'9 street', 10)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (11, N'10 street', 11)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (12, N'11 street', 12)
INSERT [dbo].[Address] ([id], [Address_text], [town_id]) VALUES (13, N'12 street', 13)
INSERT [dbo].[Continent] ([id], [name]) VALUES (1, N'Europe')
INSERT [dbo].[Continent] ([id], [name]) VALUES (2, N'Asia')
INSERT [dbo].[Continent] ([id], [name]) VALUES (3, N'North America')
INSERT [dbo].[Continent] ([id], [name]) VALUES (4, N'South America')
INSERT [dbo].[Continent] ([id], [name]) VALUES (5, N'Australia')
INSERT [dbo].[Continent] ([id], [name]) VALUES (6, N'Antarctica')
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (1, N'Bulgaria', 1)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (2, N'Germany', 1)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (3, N'France', 1)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (4, N'Russia', 2)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (5, N'China', 2)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (6, N'India', 2)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (7, N'Mexico', 3)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (8, N'USA', 3)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (9, N'Canada', 3)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (10, N'Brazil', 4)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (11, N'Chile', 4)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (12, N'Peru', 4)
INSERT [dbo].[Country] ([id], [name], [Continent_id]) VALUES (13, N'Australia', 5)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (1, N'Boko', N'Tikvata', 1)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (2, N'Gosho', N'Peshov', 2)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (3, N'Kiro', N'Angelov', 3)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (4, N'Gancho', N'Petrov', 4)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (5, N'Mincho', N'Stamatov', 5)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (6, N'Stamat', N'Ivanov', 6)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (7, N'Ivan', N'Stoichev', 7)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (8, N'Stoicho', N'Stoev', 8)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (9, N'Toshko', N'Georgiev', 9)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (10, N'Dilma', N'Rousseff', 10)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (11, N'Toncho', N'Stoqnov', 11)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (12, N'Stefan', N'Krumov', 12)
INSERT [dbo].[Person] ([id], [first_name], [last_name], [address_id]) VALUES (13, N'Dragan', N'Petkanov', 13)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (1, N'Sofia', 1)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (2, N'Berlin', 2)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (3, N'Paris', 3)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (4, N'Moscow', 4)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (5, N'Beijing', 5)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (6, N'Delhi', 6)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (7, N'Mexico City', 7)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (8, N'New York', 8)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (9, N'Ottawa', 9)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (10, N'Brazil', 10)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (11, N'Lima', 11)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (12, N'Santiago de Chile', 12)
INSERT [dbo].[Town] ([id], [name], [country_id]) VALUES (13, N'Sidney', 13)
ALTER TABLE [dbo].[Address]  WITH CHECK ADD  CONSTRAINT [FK_Address_Town] FOREIGN KEY([town_id])
REFERENCES [dbo].[Town] ([id])
GO
ALTER TABLE [dbo].[Address] CHECK CONSTRAINT [FK_Address_Town]
GO
ALTER TABLE [dbo].[Country]  WITH CHECK ADD  CONSTRAINT [FK_Country_Continent] FOREIGN KEY([Continent_id])
REFERENCES [dbo].[Continent] ([id])
GO
ALTER TABLE [dbo].[Country] CHECK CONSTRAINT [FK_Country_Continent]
GO
ALTER TABLE [dbo].[Person]  WITH CHECK ADD  CONSTRAINT [FK_Person_Address] FOREIGN KEY([address_id])
REFERENCES [dbo].[Address] ([id])
GO
ALTER TABLE [dbo].[Person] CHECK CONSTRAINT [FK_Person_Address]
GO
ALTER TABLE [dbo].[Town]  WITH CHECK ADD  CONSTRAINT [FK_Town_Country] FOREIGN KEY([country_id])
REFERENCES [dbo].[Country] ([id])
GO
ALTER TABLE [dbo].[Town] CHECK CONSTRAINT [FK_Town_Country]
GO
