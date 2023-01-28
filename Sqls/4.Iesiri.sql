USE [depozit]
GO

ALTER TABLE [dbo].[iesiri] DROP CONSTRAINT [FK_iesiri_produse]
GO

ALTER TABLE [dbo].[iesiri] DROP CONSTRAINT [FK_iesiri_parteneri]
GO

/****** Object:  Table [dbo].[iesiri]    Script Date: 28.01.2023 20:29:11 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[iesiri]') AND type in (N'U'))
DROP TABLE [dbo].[iesiri]
GO

/****** Object:  Table [dbo].[iesiri]    Script Date: 28.01.2023 20:29:11 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[iesiri](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[partnerID] [int] NOT NULL,
	[dateOut] [date] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_iesiri] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[iesiri]  WITH CHECK ADD  CONSTRAINT [FK_iesiri_parteneri] FOREIGN KEY([partnerID])
REFERENCES [dbo].[parteneri] ([id])
GO

ALTER TABLE [dbo].[iesiri] CHECK CONSTRAINT [FK_iesiri_parteneri]
GO

ALTER TABLE [dbo].[iesiri]  WITH CHECK ADD  CONSTRAINT [FK_iesiri_produse] FOREIGN KEY([productID])
REFERENCES [dbo].[produse] ([id])
GO

ALTER TABLE [dbo].[iesiri] CHECK CONSTRAINT [FK_iesiri_produse]
GO

