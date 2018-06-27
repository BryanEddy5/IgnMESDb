SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


/*
-- =============================================
-- Author:      Bryan Eddy
-- Create date: 6/27/2018
-- Description: Insert engineering assist into each Setup
-- Version: 1
-- Update:	n/a
-- =============================================
*/

CREATE PROCEDURE [APS].[usp_InsertEngineeringAssist]
AS
SET NOCOUNT ON;
BEGIN

 
	DECLARE @ErrorNumber INT = ERROR_NUMBER();
	DECLARE @ErrorLine INT = ERROR_LINE();




	--Insert Engineering Assist 
	BEGIN TRY
		BEGIN TRAN

			IF OBJECT_ID(N'tempdb..#EngineeringAssist', N'U') IS NOT NULL
			DROP TABLE #EngineeringAssist;
			SELECT I.ProdItemUUID,
				   K.Name AS EngineeringAssist,
				   K.ProdItemValueUUID,
				   P.Name,
				   --P.ProdItemValueUUID AS SetupTypeUUID,
				   MachineSetup.RecipeUUID,
				   R.Value AS SetupType,
				   CASE
					   WHEN R.Value = 'R & D'
							OR R.Value = 'Preliminary Industrialized' THEN
						   1
					   ELSE
						   0
				   END AS EngineeringAssistValue
			INTO #EngineeringAssist
			FROM REC_ProdItemValue AS K
				INNER JOIN REC_ProdItem AS I
					ON I.ProdItemUUID = K.ProdItemUUID
				INNER JOIN REC_ProdItemValue AS P
					ON P.ProdItemUUID = I.ProdItemUUID
				LEFT OUTER JOIN REC_RecipeValue AS R
					ON R.ProdItemValueUUID = P.ProdItemValueUUID
					   AND R.ProdItemUUID = K.ProdItemUUID
				RIGHT OUTER JOIN REC_Recipe AS MachineSetup
					ON MachineSetup.RecipeUUID = R.RecipeUUID
					   AND MachineSetup.ProjectUUID = I.ProjectUUID
			WHERE (K.Name = 'EngineeringAssistanceRequired')
				  AND (P.Name = 'SetupType');



			MERGE dbo.REC_RecipeValue Target
			USING(SELECT * FROM #EngineeringAssist) AS Source
			ON (Target.ProdItemUUID = Source.ProdItemUUID AND target.ProdItemValueUUID = source.ProdItemValueUUID AND target.RecipeUUID = Source.RecipeUUID)
			WHEN MATCHED THEN
			UPDATE SET target.Value = source.EngineeringAssistValue
			WHEN NOT MATCHED BY TARGET THEN
				INSERT(RecipeUUID,ProdItemUUID,ProdItemValueUUID,Value, RecipeValueUUID,TimeStamp)
				VALUES(Source.RecipeUUID,Source.ProdItemUUID, Source.ProdItemValueUUID, EngineeringAssistValue, NEWID(),GETDATE());
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
