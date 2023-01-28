USE [depozit]
GO

/****** Object:  StoredProcedure [dbo].[CreateIntrare]    Script Date: 28.01.2023 20:32:13 ******/
DROP PROCEDURE [dbo].[CreateIntrare]
GO

/****** Object:  StoredProcedure [dbo].[CreateIntrare]    Script Date: 28.01.2023 20:32:13 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[CreateIntrare]
@productName varchar(50),
@partnerName varchar(50),
@qty int
AS

IF NOT EXISTS (SELECT id FROM produse WHERE name = @productName)
INSERT INTO produse (name) VALUES (@productName)

IF NOT EXISTS (SELECT id FROM parteneri WHERE name = @partnerName)
INSERT INTO parteneri (name) VALUES (@partnerName)

INSERT INTO intrari (productID, partnerID, dateReceived, quantity) VALUES
((SELECT id FROM produse WHERE name = @productName), (SELECT id FROM parteneri WHERE name = @partnerName),
GETDATE(), @qty)

GO

