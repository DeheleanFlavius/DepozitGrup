USE [depozit]
GO

/****** Object:  StoredProcedure [dbo].[CreateIesire]    Script Date: 28.01.2023 20:31:38 ******/
DROP PROCEDURE [dbo].[CreateIesire]
GO

/****** Object:  StoredProcedure [dbo].[CreateIesire]    Script Date: 28.01.2023 20:31:38 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CreateIesire]
@productName varchar(50),
@partnerName varchar(50),
@qty int
AS

IF NOT EXISTS (SELECT id FROM produse WHERE name = @productName)
INSERT INTO produse (name) VALUES (@productName)

IF NOT EXISTS (SELECT id FROM parteneri WHERE name = @partnerName)
INSERT INTO parteneri (name) VALUES (@partnerName)

INSERT INTO iesiri (productID, partnerID, dateOut, quantity) VALUES
((SELECT id FROM produse WHERE name = @productName), (SELECT id FROM parteneri WHERE name = @partnerName),
GETDATE(), @qty)

GO

