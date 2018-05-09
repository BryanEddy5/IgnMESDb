SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
---=========================================================================================
   ---                     AFL Telecommunications
   ---
   ---       Object Name           : spArchiveMES2OInterfaceData
   ---       Object Description    : This script is used by CI
   ---                                to archive data in Staging table AFL_MES2O_Interface_Data
   ---
   ---       Original Standard Object Name  : NA
   ---       Original Standard Object Ver   : NA
   ---
   ---       Date Written          : 05/03/2018
   ---
   ---       Task Number           : 9999
   ---
   ----------------------------------------------------------------------------------------------
   ---
   ---       Development And Modification History:
   ---
   --- Task #  Ver# DATE           Developer    DESCRIPTION
   --- ------ ---- ----------     ------------ --------------------------------------------------
   ---  9999   1.0  05/03/2018      VEGAVI      Initial Version.   

   ---       Copyright 2017 AFL Telecommunications
   ---=============================================================================================
 --**************************************************************************************************
   -- PROCEDURE spArchiveMES2OInterfaceData: This script is used by CI
   ---                                       to archive data in Staging table AFL_MES2O_Interface_Data
   --**************************************************************************************************
   
CREATE PROCEDURE [dbo].[spArchiveMES2OInterfaceData]
  @pRunId AS int,
  @pAction AS NVARCHAR(50),
  @pResult AS NVARCHAR(500) OUTPUT
AS
BEGIN TRY 
   
   IF @pAction = 'UPDATE' AND @pRunId IS NOT NULL
   BEGIN
   --Updating null run id to @pRunId
	   UPDATE AFL_MES2O_Interface_Data
	   SET run_id = @pRunId
	   WHERE run_id IS NULL;
   END;
   
   IF @pAction = 'ARCHIVE' AND @pRunId IS NOT NULL
   BEGIN
   --Archiving data
	INSERT INTO AFL_MES2O_Interface_Data_arch(MES_REFERENCE_ID
										,BATCH_ID
										,DJ_NUMBER
										,PROCESSING_ACTION
										,ITEM_NUMBER
										,TRANSACTION_QTY
										,MES_PLANT_LOCATION
										,MES_MACHINE
										,FIBER_GROUP_ID
										,OP_SEQ_NUMBER
										,SUBINVENTORY_CODE
										,LOCATOR_NAME
										,FINAL_COMPLETION_FLAG
										,LOT_NUMBER
										,FROM_OP_SEQ_NUMBER
										,FROM_OP_SEQ_STEP
										,TO_OP_SEQ_NUMBER
										,TO_OP_SEQ_STEP
										,ACTION
										,ACTION_TIME
										,TRANSACTION_DISPOSITION
										,CREATION_DATE
										--,CREATED_BY
										,LAST_UPDATED_DATE
										--,LAST_UPDATED_BY
										,RUN_ID
										,RUN_STATUS
										,UNIQUE_ID
										--,VALIDATED
										,ERROR_MESSAGE)
	SELECT MES_REFERENCE_ID
			,BATCH_ID
			,DJ_NUMBER
			,PROCESSING_ACTION
			,ITEM_NUMBER
			,TRANSACTION_QTY
			,MES_PLANT_LOCATION
			,MES_MACHINE
			,FIBER_GROUP_ID
			,OP_SEQ_NUMBER
			,SUBINVENTORY_CODE
			,LOCATOR_NAME
			,FINAL_COMPLETION_FLAG
			,LOT_NUMBER
			,FROM_OP_SEQ_NUMBER
			,FROM_OP_SEQ_STEP
			,TO_OP_SEQ_NUMBER
			,TO_OP_SEQ_STEP
			,ACTION
			,ACTION_TIME
			,TRANSACTION_DISPOSITION
			,CREATION_DATE
--			,CREATED_BY
			,LAST_UPDATED_DATE
--			,LAST_UPDATED_BY
			,RUN_STATUS
			,RUN_ID
			,UNIQUE_ID
			--,VALIDATED
			,ERROR_MESSAGE
	FROM AFL_MES2O_Interface_Data
	WHERE run_id = @pRunId;
	
	--Deleting data from stg table
	DELETE AFL_MES2O_Interface_Data
	WHERE run_id = @pRunId;
   END;

  SELECT @pResult = 'Success'
END TRY 

BEGIN CATCH
    SELECT @pResult = SUBSTRING(ERROR_MESSAGE(), 1, 500);
END CATCH;

GO
