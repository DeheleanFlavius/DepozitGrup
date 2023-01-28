USE [depozit]
GO

/****** Object:  Table [dbo].[parteneri]    Script Date: 28.01.2023 20:23:02 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[parteneri]') AND type in (N'U'))
DROP TABLE [dbo].[parteneri]
GO

/****** Object:  Table [dbo].[parteneri]    Script Date: 28.01.2023 20:23:02 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[parteneri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[name] [varchar](50) NOT NULL,
	[email] [varchar](50) NULL,
	[address] [varchar](100) NULL,
 CONSTRAINT [PK_furnizori] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

