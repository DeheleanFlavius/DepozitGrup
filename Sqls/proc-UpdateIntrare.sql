USE [depozit]
GO

/****** Object:  StoredProcedure [dbo].[UpdateIntrare]    Script Date: 28.01.2023 20:34:24 ******/
DROP PROCEDURE [dbo].[UpdateIntrare]
GO

/****** Object:  StoredProcedure [dbo].[UpdateIntrare]    Script Date: 28.01.2023 20:34:24 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[UpdateIntrare]
@idIntrare int,
@productName varchar(50),
@partnerName varchar(50),
@qty int
AS

IF NOT EXISTS (SELECT id FROM produse WHERE name = @productName)
INSERT INTO produse (name) VALUES (@productName)

IF NOT EXISTS (SELECT id FROM parteneri WHERE name = @partnerName)
INSERT INTO parteneri (name) VALUES (@partnerName)

UPDATE intrari SET
productID = (SELECT id FROM produse WHERE name = @productName),
partnerID = (SELECT id FROM parteneri WHERE name = @partnerName),
quantity = @qty
WHERE id = @idIntrare

GO

