USE [depozit]
GO

/****** Object:  StoredProcedure [dbo].[DeleteIntrare]    Script Date: 28.01.2023 20:33:20 ******/
DROP PROCEDURE [dbo].[DeleteIntrare]
GO

/****** Object:  StoredProcedure [dbo].[DeleteIntrare]    Script Date: 28.01.2023 20:33:20 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DeleteIntrare]
@idIntrare int
AS

DELETE FROM intrari WHERE id = @idIntrare

GO

