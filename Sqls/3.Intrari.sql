USE [depozit]
GO

ALTER TABLE [dbo].[intrari] DROP CONSTRAINT [FK_intrari_produse]
GO

ALTER TABLE [dbo].[intrari] DROP CONSTRAINT [FK_intrari_intrari]
GO

/****** Object:  Table [dbo].[intrari]    Script Date: 28.01.2023 20:28:36 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[intrari]') AND type in (N'U'))
DROP TABLE [dbo].[intrari]
GO

/****** Object:  Table [dbo].[intrari]    Script Date: 28.01.2023 20:28:36 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

CREATE TABLE [dbo].[intrari](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[productID] [int] NOT NULL,
	[partnerID] [int] NOT NULL,
	[dateReceived] [date] NOT NULL,
	[quantity] [int] NOT NULL,
 CONSTRAINT [PK_intrari] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO

ALTER TABLE [dbo].[intrari]  WITH CHECK ADD  CONSTRAINT [FK_intrari_intrari] FOREIGN KEY([partnerID])
REFERENCES [dbo].[parteneri] ([id])
GO

ALTER TABLE [dbo].[intrari] CHECK CONSTRAINT [FK_intrari_intrari]
GO

ALTER TABLE [dbo].[intrari]  WITH CHECK ADD  CONSTRAINT [FK_intrari_produse] FOREIGN KEY([productID])
REFERENCES [dbo].[produse] ([id])
GO

ALTER TABLE [dbo].[intrari] CHECK CONSTRAINT [FK_intrari_produse]
GO

