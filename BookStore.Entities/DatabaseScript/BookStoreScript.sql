USE [BookStore]
GO
/****** Object:  Table [dbo].[Authors]    Script Date: 29/09/2020 23:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Authors](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IsDeleted] [bit] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Authors] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Books]    Script Date: 29/09/2020 23:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Books](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[CategoryId] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[NumberOfPage] [int] NULL,
	[AuthorId] [int] NULL,
	[PublisherId] [int] NULL,
	[IsDeleted] [bit] NULL,
	[CreatedDate] [datetime] NULL,
 CONSTRAINT [PK_Books] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Categories]    Script Date: 29/09/2020 23:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Categories](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IsDeleted] [bit] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_Categories] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publishers]    Script Date: 29/09/2020 23:49:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publishers](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
	[IsDeleted] [bit] NULL,
	[CreateDate] [datetime] NULL,
 CONSTRAINT [PK_
Publishers] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Authors] ON 

INSERT [dbo].[Authors] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (1, N'Author1', 0, CAST(N'2020-09-27T18:11:57.160' AS DateTime))
INSERT [dbo].[Authors] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (2, N'Author2', 0, CAST(N'2020-09-27T18:11:58.960' AS DateTime))
INSERT [dbo].[Authors] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (3, N'Author3', 0, CAST(N'2020-09-27T18:12:00.903' AS DateTime))
INSERT [dbo].[Authors] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (4, N'Author4', 0, CAST(N'2020-09-27T18:12:02.477' AS DateTime))
INSERT [dbo].[Authors] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (5, N'Author5', 0, CAST(N'2020-09-27T18:12:04.923' AS DateTime))
SET IDENTITY_INSERT [dbo].[Authors] OFF
SET IDENTITY_INSERT [dbo].[Books] ON 

INSERT [dbo].[Books] ([Id], [CategoryId], [Name], [NumberOfPage], [AuthorId], [PublisherId], [IsDeleted], [CreatedDate]) VALUES (27, 3, N'Dönüşüm', 320, 3, 3, 0, CAST(N'2020-09-29T21:53:42.393' AS DateTime))
INSERT [dbo].[Books] ([Id], [CategoryId], [Name], [NumberOfPage], [AuthorId], [PublisherId], [IsDeleted], [CreatedDate]) VALUES (39, 3, N'Dönüşüm', 230, 3, 1, 0, CAST(N'2020-09-29T23:01:09.120' AS DateTime))
INSERT [dbo].[Books] ([Id], [CategoryId], [Name], [NumberOfPage], [AuthorId], [PublisherId], [IsDeleted], [CreatedDate]) VALUES (40, 2, N'Test Book', 360, 3, 3, 0, CAST(N'2020-09-29T23:09:37.910' AS DateTime))
SET IDENTITY_INSERT [dbo].[Books] OFF
SET IDENTITY_INSERT [dbo].[Categories] ON 

INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (1, N'Category1', 0, CAST(N'2020-09-27T18:11:16.460' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (2, N'Category2', 0, CAST(N'2020-09-27T18:11:19.433' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (3, N'Category3', 0, CAST(N'2020-09-27T18:11:23.143' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (4, N'Category4', 0, CAST(N'2020-09-27T18:11:28.810' AS DateTime))
INSERT [dbo].[Categories] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (5, N'Category5', 0, CAST(N'2020-09-27T18:11:34.143' AS DateTime))
SET IDENTITY_INSERT [dbo].[Categories] OFF
SET IDENTITY_INSERT [dbo].[Publishers] ON 

INSERT [dbo].[Publishers] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (1, N'Publisher1', NULL, CAST(N'2020-09-27T18:08:25.070' AS DateTime))
INSERT [dbo].[Publishers] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (2, N'Publisher2', NULL, CAST(N'2020-09-27T18:09:11.990' AS DateTime))
INSERT [dbo].[Publishers] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (3, N'Publisher3', NULL, CAST(N'2020-09-27T18:10:17.983' AS DateTime))
INSERT [dbo].[Publishers] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (4, N'Publisher4', NULL, CAST(N'2020-09-27T18:10:23.550' AS DateTime))
INSERT [dbo].[Publishers] ([Id], [Name], [IsDeleted], [CreateDate]) VALUES (5, N'Publisher5', NULL, CAST(N'2020-09-27T18:12:29.353' AS DateTime))
SET IDENTITY_INSERT [dbo].[Publishers] OFF
ALTER TABLE [dbo].[Authors] ADD  CONSTRAINT [DF_Authors_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Authors] ADD  CONSTRAINT [DF_Authors_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_IsDeleted]  DEFAULT ((0)) FOR [IsDeleted]
GO
ALTER TABLE [dbo].[Categories] ADD  CONSTRAINT [DF_Categories_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Publishers] ADD  CONSTRAINT [DF_
Publishers_CreateDate]  DEFAULT (getdate()) FOR [CreateDate]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Authors] FOREIGN KEY([AuthorId])
REFERENCES [dbo].[Authors] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Authors]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Categories] FOREIGN KEY([CategoryId])
REFERENCES [dbo].[Categories] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Categories]
GO
ALTER TABLE [dbo].[Books]  WITH CHECK ADD  CONSTRAINT [FK_Books_Publishers] FOREIGN KEY([PublisherId])
REFERENCES [dbo].[Publishers] ([Id])
GO
ALTER TABLE [dbo].[Books] CHECK CONSTRAINT [FK_Books_Publishers]
GO
