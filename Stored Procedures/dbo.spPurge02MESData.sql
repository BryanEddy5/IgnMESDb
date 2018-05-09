SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
---=========================================================================================
   ---                     AFL Telecommunications
   ---
   ---       Object Name           : spPurge02MESData
   ---       Object Description    : This script is used by CI
   ---                                to delete data in O2MES tables AFL_O2MES_SO_CAB_DJ, AFL_O2MES_Consumable and AFL_O2MES_FiberReels.
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
   ---                                to delete data in O2MES tables AFL_O2MES_SO_CAB_DJ, AFL_O2MES_Consumable and AFL_O2MES_FiberReels.
   --**************************************************************************************************
   
CREATE PROCEDURE [dbo].[spPurge02MESData]
  @pDJNumber AS int,
  @pOrganizationId AS int,
  @pResult AS NVARCHAR(500)
AS
BEGIN TRY 
   DECLARE @ActualTableName AS NVarchar(255)
   DECLARE @sql AS NVARCHAR(MAX)
   DECLARE @counts int
   /*
   IF @pDJNumber IS NOT NULL AND @pOrganizationId IS NOT NULL
   BEGIN
   --Deleting data
   
   --TODO organization id is missing
	   DELETE AFL_O2MES_SO_CAB_DJ
		  WHERE cable_job_num = @pDJNumber
		  AND organization_id = @pOrganizationId
		  AND complete_flag IS NULL;
		  
		  --TODO validate how to get the data to delete, how to link to DJ
	   DELETE AFL_O2MES_CONSUMABLE
		  WHERE tube_job_num = @pDJNumber
		  AND organization_id = @pOrganizationId
		  AND complete_flag IS NULL;
		  
		  --TODO validate how to get the data to delete, how to link to DJ
	   DELETE AFL_O2MES_FIBERREELS
		  WHERE cable_job_num = @pDJNumber
		  AND organization_id = @pOrganizationId
		  AND complete_flag IS NULL;
	
   END;
   */

  SELECT @pResult = 'Success'
END TRY 

BEGIN CATCH
    SELECT @pResult = SUBSTRING(ERROR_MESSAGE(), 1, 500);
END CATCH;
GO
