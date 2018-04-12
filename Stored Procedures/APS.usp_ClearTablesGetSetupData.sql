SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
-- =============================================
-- Author:		Bryan Eddy
-- Create date: 1/9/2018
-- Description:	run getSetupData and truncate tables first
-- =============================================
CREATE PROCEDURE [APS].[usp_ClearTablesGetSetupData] 

AS
BEGIN
	TRUNCATE TABLE dbo.REC_Recipe
	TRUNCATE TABLE dbo.REC_RecipeValue
	EXEC APS.usp_getSetupData
END
GO
