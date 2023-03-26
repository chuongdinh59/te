USE [BuildingManagement]
GO
/****** Object:  Table [dbo].[Account]    Script Date: 3/26/2023 8:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Account](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Phone] [varchar](12) NULL,
	[Email] [nvarchar](50) NULL,
	[Password] [nvarchar](50) NULL,
	[Active] [bit] NOT NULL,
	[Username] [varchar](150) NULL,
	[RoleID] [int] NULL,
	[LastLogin] [datetime] NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Appointment]    Script Date: 3/26/2023 8:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Appointment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BuildingID] [varchar](20) NOT NULL,
	[EmployeeID] [int] NULL,
	[CustomerID] [int] NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Building]    Script Date: 3/26/2023 8:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Building](
	[ID] [varchar](20) NOT NULL,
	[BuildingTypeID] [int] NOT NULL,
	[Address] [nvarchar](50) NULL,
	[NumFloors] [int] NULL,
	[YearBuild] [int] NULL,
	[IsOccupied] [bit] NULL,
	[PurchaseDate] [date] NULL,
	[PurchasePrice] [float] NULL,
	[CustomerID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
	[Image] [text] NULL,
	[Bed] [int] NULL,
	[Bath] [int] NULL,
	[Name] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[BuildingType]    Script Date: 3/26/2023 8:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[BuildingType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Name] [nvarchar](100) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Customer]    Script Date: 3/26/2023 8:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Customer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[Avatar] [text] NULL,
	[Address] [nvarchar](255) NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 3/26/2023 8:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[AccountID] [int] NOT NULL,
	[FullName] [nvarchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[ManagementBuildingID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ManagementBuilding]    Script Date: 3/26/2023 8:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ManagementBuilding](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BuildingID] [varchar](20) NOT NULL,
	[EmployeeID] [int] NOT NULL,
	[CreateDate] [datetime] NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 3/26/2023 8:04:23 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleName] [nvarchar](50) NULL,
	[Description] [nvarchar](50) NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[Account] ON 

INSERT [dbo].[Account] ([ID], [Phone], [Email], [Password], [Active], [Username], [RoleID], [LastLogin], [CreateDate]) VALUES (2, N'0123456', N'chu@gmail.com', N'123', 1, N'admin', 1, NULL, NULL)
INSERT [dbo].[Account] ([ID], [Phone], [Email], [Password], [Active], [Username], [RoleID], [LastLogin], [CreateDate]) VALUES (5, N'0123456', N'chu2@gmail.com', N'123', 1, N'employee', 2, NULL, NULL)
INSERT [dbo].[Account] ([ID], [Phone], [Email], [Password], [Active], [Username], [RoleID], [LastLogin], [CreateDate]) VALUES (6, N'023456', N'chu3@gmail.com', N'123', 1, N'user', 3, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Account] OFF
GO
INSERT [dbo].[Building] ([ID], [BuildingTypeID], [Address], [NumFloors], [YearBuild], [IsOccupied], [PurchaseDate], [PurchasePrice], [CustomerID], [CreateDate], [Image], [Bed], [Bath], [Name]) VALUES (N'KG1', 3, N'Nguyễn Kiệm', 3, 2012, 0, NULL, 300, 10, NULL, N'https://www.animeinformer.com/wp-content/uploads/2022/08/anime-girl-maid-pfp.png.webp', 3, 3, N'Nhà A')
INSERT [dbo].[Building] ([ID], [BuildingTypeID], [Address], [NumFloors], [YearBuild], [IsOccupied], [PurchaseDate], [PurchasePrice], [CustomerID], [CreateDate], [Image], [Bed], [Bath], [Name]) VALUES (N'KG2', 1, N'Thái Sơn Nam', 1, 2020, 0, NULL, 20, 10, NULL, N'https://www.animeinformer.com/wp-content/uploads/2022/08/anime-girl-maid-pfp.png.webp', 3, 2, N'Nhà B')
INSERT [dbo].[Building] ([ID], [BuildingTypeID], [Address], [NumFloors], [YearBuild], [IsOccupied], [PurchaseDate], [PurchasePrice], [CustomerID], [CreateDate], [Image], [Bed], [Bath], [Name]) VALUES (N'KG3', 2, N'Dinh Độc Lập', 3, 2019, 1, NULL, 12, 10, NULL, N'https://www.animeinformer.com/wp-content/uploads/2022/08/anime-girl-maid-pfp.png.webp', 3, 3, N'Nhà C')
GO
SET IDENTITY_INSERT [dbo].[BuildingType] ON 

INSERT [dbo].[BuildingType] ([ID], [Name]) VALUES (1, N'FULL ')
INSERT [dbo].[BuildingType] ([ID], [Name]) VALUES (2, N'Căn hộ ')
INSERT [dbo].[BuildingType] ([ID], [Name]) VALUES (3, N'Nhà đất')
SET IDENTITY_INSERT [dbo].[BuildingType] OFF
GO
SET IDENTITY_INSERT [dbo].[Customer] ON 

INSERT [dbo].[Customer] ([ID], [AccountID], [Avatar], [Address], [CreateDate]) VALUES (8, 2, NULL, NULL, NULL)
INSERT [dbo].[Customer] ([ID], [AccountID], [Avatar], [Address], [CreateDate]) VALUES (10, 6, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[Customer] OFF
GO
SET IDENTITY_INSERT [dbo].[Role] ON 

INSERT [dbo].[Role] ([ID], [RoleName], [Description]) VALUES (1, N'Admin', NULL)
INSERT [dbo].[Role] ([ID], [RoleName], [Description]) VALUES (2, N'Employee', NULL)
INSERT [dbo].[Role] ([ID], [RoleName], [Description]) VALUES (3, N'User', NULL)
SET IDENTITY_INSERT [dbo].[Role] OFF
GO
ALTER TABLE [dbo].[Building] ADD  DEFAULT ((0)) FOR [IsOccupied]
GO
ALTER TABLE [dbo].[Account]  WITH CHECK ADD FOREIGN KEY([RoleID])
REFERENCES [dbo].[Role] ([ID])
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD FOREIGN KEY([BuildingID])
REFERENCES [dbo].[Building] ([ID])
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Appointment]  WITH CHECK ADD FOREIGN KEY([EmployeeID])
REFERENCES [dbo].[Employee] ([ID])
GO
ALTER TABLE [dbo].[Building]  WITH CHECK ADD FOREIGN KEY([BuildingTypeID])
REFERENCES [dbo].[BuildingType] ([ID])
GO
ALTER TABLE [dbo].[Building]  WITH CHECK ADD FOREIGN KEY([CustomerID])
REFERENCES [dbo].[Customer] ([ID])
GO
ALTER TABLE [dbo].[Customer]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([AccountID])
REFERENCES [dbo].[Account] ([ID])
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD FOREIGN KEY([ManagementBuildingID])
REFERENCES [dbo].[ManagementBuilding] ([ID])
GO
