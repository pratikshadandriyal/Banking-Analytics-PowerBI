USE [power_bi2]
GO

/****** Object:  Table [dbo].[Customers]    Script Date: 02-03-2026 23:09:12 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Customers](
	[CustomerID] [int] NOT NULL,
	[Name] [nvarchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[DateOfBirth] [varchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [varchar](20) NULL,
	[AccountID] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[CustomerID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


