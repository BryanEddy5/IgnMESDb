SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


/*
-- =============================================
-- Author:      Bryan Eddy
-- Create date: 8/14/2017
-- Description: Import data from NAACAB-SCH01 for PSS information
-- Version: 1
-- Update:	n/a
-- =============================================
*/

CREATE PROCEDURE [APS].[usp_getSetupData]
AS
SET NOCOUNT ON;
BEGIN

 
	DECLARE @ErrorNumber INT = ERROR_NUMBER();
	DECLARE @ErrorLine INT = ERROR_LINE();

	BEGIN TRY
		BEGIN TRAN

		MERGE dbo.REC_Recipe Target
		USING ( SELECT DISTINCT setupnumber, ProjectUUID FROM [NAACAB-SCH01].PlanetTogether_Data_Test.Setup.vInterfaceRecipeManagementSystem CROSS APPLY dbo.REC_Project) AS Source
		ON Target.name = Source.SetupNumber
		WHEN NOT MATCHED BY TARGET THEN
		INSERT(ProjectUUID,ParentRecipeUUID,Name, State,[Group])
		VALUES(SOURCE.ProjectUUID, '',SetupNumber,'','');
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		ROLLBACK TRANSACTION;
 
		PRINT 'Actual error number: ' + CAST(@ErrorNumber AS VARCHAR(10));
		PRINT 'Actual line number: ' + CAST(@ErrorLine AS VARCHAR(10));
 
		THROW;
	END CATCH;


	--Update attribute value data 
	BEGIN TRY
		BEGIN TRAN

			IF OBJECT_ID(N'tempdb..#SetupData', N'U') IS NOT NULL
			DROP TABLE #SetupData;
			SELECT * 
			INTO #SetupData
			FROM [NAACAB-SCH01].PlanetTogether_Data_Test.Setup.vInterfaceRecipeManagementSystem 

			IF OBJECT_ID(N'tempdb..#RecipeValue', N'U') IS NOT NULL
			DROP TABLE #RecipeValue;
			;WITH cteRecipeVAlue
			AS (
				SELECT  J.ProjectUUID, machinename, p.name, k.AttributeValue,O.RecipeUUID, J.ProdItemUUID, p.ProdItemValueUUID, Setupnumber,
				ROW_NUMBER() OVER (PARTITION BY J.ProjectUUID, machinename, p.name,O.RecipeUUID, J.ProdItemUUID, p.ProdItemValueUUID ORDER BY O.RecipeUUID,  J.ProdItemUUID, P.NAME) RowNumber
				FROM [REC_ProdItem] J CROSS APPLY usf_splitstring(ItemPath,'\') G 
				INNER JOIN #SetupData K ON K.MachineName = g.part
				INNER JOIN dbo.REC_ProdItemValue p ON p.Name = k.AttributeName AND CAST(p.Description AS INT) = k.attributeid AND p.ProdItemUUID = J.ProdItemUUID
				INNER JOIN dbo.REC_Recipe O ON O.name = SetupNumber
				)
			SELECT * 
			INTO #RecipeValue
			FROM cteRecipeVAlue
			WHERE RowNumber =1


			MERGE dbo.REC_RecipeValue Target
			USING(SELECT * FROM #RecipeValue) AS Source
			ON (Target.ProdItemUUID = Source.ProdItemUUID AND target.ProdItemValueUUID = source.ProdItemValueUUID AND target.RecipeUUID = Source.RecipeUUID)
			WHEN MATCHED THEN
			UPDATE SET target.Value = source.attributeValue
			WHEN NOT MATCHED BY TARGET THEN
				INSERT(RecipeUUID,ProdItemUUID,ProdItemValueUUID,Value)
				VALUES(Source.RecipeUUID,Source.ProdItemUUID, Source.ProdItemValueUUID, AttributeValue);
		COMMIT TRAN
	END TRY
	BEGIN CATCH
		IF @@TRANCOUNT > 0
		ROLLBACK TRANSACTION;

		PRINT 'Actual error number: ' + CAST(@ErrorNumber AS VARCHAR(10));
		PRINT 'Actual line number: ' + CAST(@ErrorLine AS VARCHAR(10));
 
		THROW;
	END CATCH

END

GO
