USE [depozit]
GO

/****** Object:  StoredProcedure [dbo].[DeleteIesire]    Script Date: 28.01.2023 20:32:48 ******/
DROP PROCEDURE [dbo].[DeleteIesire]
GO

/****** Object:  StoredProcedure [dbo].[DeleteIesire]    Script Date: 28.01.2023 20:32:48 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO


CREATE PROCEDURE [dbo].[DeleteIesire]
@idIntrare int
AS

DELETE FROM intrari WHERE id = @idIntrare

GO

