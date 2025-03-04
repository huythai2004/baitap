
USE [PRJ301_TEST5]
GO
/****** Object:  Table [dbo].[Departments]    Script Date: 5/27/2019 9:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Departments](
	[did] [int] NOT NULL,
	[dname] [varchar](150) NOT NULL,
 CONSTRAINT [PK_Departments] PRIMARY KEY CLUSTERED 
(
	[did] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Students]    Script Date: 5/27/2019 9:41:10 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Students](
	[sid] [int] IDENTITY(1,1) NOT NULL,
	[sname] [varchar](150) NOT NULL,
	[sdob] [date] NOT NULL,
	[sgender] [bit] NOT NULL,
	[did] [int] NOT NULL,
 CONSTRAINT [PK_Students] PRIMARY KEY CLUSTERED 
(
	[sid] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[Departments] ([did], [dname]) VALUES (1, N'Computer Science')
INSERT [dbo].[Departments] ([did], [dname]) VALUES (2, N'Software Engineering')
INSERT [dbo].[Departments] ([did], [dname]) VALUES (3, N'Information Assurance')
SET IDENTITY_INSERT [dbo].[Students] ON 

INSERT [dbo].[Students] ([sid], [sname], [sdob], [sgender], [did]) VALUES (1, N'Student A', CAST(0xCA1E0B00 AS Date), 1, 1)
INSERT [dbo].[Students] ([sid], [sname], [sdob], [sgender], [did]) VALUES (2, N'Student B', CAST(0x3A200B00 AS Date), 1, 1)
INSERT [dbo].[Students] ([sid], [sname], [sdob], [sgender], [did]) VALUES (3, N'Student C', CAST(0x431D0B00 AS Date), 0, 2)
INSERT [dbo].[Students] ([sid], [sname], [sdob], [sgender], [did]) VALUES (4, N'Student D', CAST(0xF81B0B00 AS Date), 0, 3)
INSERT [dbo].[Students] ([sid], [sname], [sdob], [sgender], [did]) VALUES (5, N'Student E', CAST(0x68220B00 AS Date), 0, 3)
SET IDENTITY_INSERT [dbo].[Students] OFF
GO
ALTER TABLE [dbo].[Students]  WITH CHECK ADD  CONSTRAINT [FK_Students_Departments] FOREIGN KEY([did])
REFERENCES [dbo].[Departments] ([did])
GO
ALTER TABLE [dbo].[Students] CHECK CONSTRAINT [FK_Students_Departments]
GO
