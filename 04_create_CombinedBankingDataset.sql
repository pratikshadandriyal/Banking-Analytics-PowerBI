USE [power_bi2]
GO

/****** Object:  Table [dbo].[CombinedBankingDataset]    Script Date: 02-03-2026 23:10:22 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[CombinedBankingDataset](
	[TransactionID] [int] NULL,
	[Transaction_AccountID] [int] NULL,
	[TransactionDate] [varchar](20) NULL,
	[TransactionType] [varchar](20) NULL,
	[Amount] [decimal](18, 2) NULL,
	[Description] [nvarchar](200) NULL,
	[Currency] [varchar](10) NULL,
	[Account_AccountID] [int] NULL,
	[Account_CustomerID] [int] NULL,
	[AccountType] [nvarchar](20) NULL,
	[OpenDate] [varchar](20) NULL,
	[Balance] [decimal](18, 2) NULL,
	[CustomerID] [int] NULL,
	[Name] [nvarchar](100) NULL,
	[Gender] [varchar](10) NULL,
	[DateOfBirth] [varchar](20) NULL,
	[Address] [nvarchar](200) NULL,
	[Email] [nvarchar](100) NULL,
	[Phone] [varchar](20) NULL
) ON [PRIMARY]
GO


