USE [power_bi2]
GO

/****** Object:  Table [dbo].[Accounts]    Script Date: 02-03-2026 23:09:42 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[Accounts](
	[AccountID] [int] NOT NULL,
	[CustomerID] [int] NULL,
	[Type] [nvarchar](20) NULL,
	[OpenDate] [varchar](20) NULL,
	[Balance] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED 
(
	[AccountID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO


