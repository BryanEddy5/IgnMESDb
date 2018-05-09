SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[splocal_AFL_QTS_TubeLine_Update]
	 @TubeJobNum as varchar(50) -- Pass the tube job no as input
	,@Piece_Number	as varchar(100) -- Pass the Equipment Name as input
	,@Pass_Flag as bit -- Pass the last production job
	,@Override as varchar(5) 
	,@Test_Start as datetime -- Pass the last run job type
	,@Test_End as datetime	
AS 

/*
======================================================================================
Stored Procedure	:	[splocal_AFL_QTS_TubeLine_Update]
Author				:	Anitha Chenna
Date Created		:	2018-03-03
Called By			:	QTS System Trigger

======================================================================================
Purpose:
======================================================================================

The Purpose of the Stored procedure is to update Tube Line items table based on the QTS
system 
======================================================================================
Store Procedure Logic:
======================================================================================

Common SP Initiation Block	

	Initiation 0. Variables and tables declaration section
	Initiation 1. Initialize variables

	TODO :- Needs to add Stored procedure Logic Here
======================================================================================
Triggering Parameters: 
======================================================================================

This SP is called by Ignition Script

======================================================================================	
Output Parameters:
======================================================================================

Output#	Name					Type				Description
-------	-------------------		----------			--------------------------------------
1.		@ReturnCode				int					
2.		@ReturnMessage			varchar(max)		

@ReturnCode		@RetunMessage												
-----------		-------------
	-1			Initial Message
	0			Success
	1			Either Tube Job not exist or Tube Job is not associated with Equipment
	2			The Equipment already has different Job as Next Job
	3			The Job is already set as Next


======================================================================================
Input Parameters:
======================================================================================

Input#	Name				Type				Description
-------	-------------------	----------			--------------------------------------

1.		
======================================================================================
Revision 	Date		Who							What
========	===========	=====================		======================================

1.0.0		2017-10-23	Anitha Chenna Creation of the Stored Procedure
======================================================================================
Test Code :
======================================================================================
*/

BEGIN

SET NOCOUNT ON;
DECLARE @JobLineStatus as varchar(100) = ''
DECLARE @JobLineLocation as varchar(100) = ''
DECLARE @MES_UPDATE bit
Declare @Msg1 varchar(250) = 'TEMP'
Declare @Msg2 varchar (250) = 'TEMP@'
DECLARE @StartDate as datetime
DECLARE @EndDate as datetime 
DECLARE @Startvar as varchar(100)
DECLARE @Endvar as varchar(100)
DECLARE @NCMIRFlag as bit = 1
DECLARE @QC_Flag as bit = 0

--*************Initialize default and constant values here ***************************************

IF((@Test_End IS NULL) AND (@Test_Start IS NOT NULL))
	BEGIN
		SET @JobLineStatus = 'In Testing'
		SET @JobLineLocation = 'QC'
		SET @MES_UPDATE = 1		
		SET @QC_Flag = 0
	END
ELSE IF(@Test_End IS NOT NULL) AND (@Pass_Flag = 0) AND (@override = 'N')
	BEGIN
		SET @JobLineStatus = 'Failed'
		SET @JobLineLocation = 'MRB Storage Unit 1'
		SET @MES_UPDATE = 1
		SET @QC_Flag = 1
	END
ELSE IF(@Test_End IS NOT NULL) --AND (@Pass_Flag = 1)
	BEGIN
		IF EXISTS(Select top 1 Closed from [IgnMESCustomDB].dbo.AFL_NCMIR_Table WHERE JobNumber = @TubeJobNum ORDER By ModifiedDate DESC)
			Select top 1 @NCMIRFlag = Closed from [IgnMESCustomDB].dbo.AFL_NCMIR_Table WHERE JobNumber = @TubeJobNum ORDER By ModifiedDate DESC
		IF(@NCMIRFlag = 0)
			BEGIN
				SET @JobLineStatus = 'Failed'
				SET @JobLineLocation = 'MRB Storage Unit 1'
				SET @QC_Flag = 1
			END
		ELSE IF (@Pass_Flag = 1) AND (@NCMIRFlag = 1) AND (@override = 'N')
			BEGIN
				SET @JobLineStatus = 'Finished Testing'
				SET @JobLineLocation = 'FloorStock'
				SET @QC_Flag = 0
			END
		ELSE IF (@Pass_Flag = 0) AND (@NCMIRFlag = 1) AND (@override = 'Y')
			BEGIN
				SET @JobLineStatus = 'Testing Override'
				SET @JobLineLocation = 'FloorStock'
				SET @QC_Flag = 0
			END
		SET @MES_UPDATE = 1		
	END
ELSE IF((@Test_End IS NULL) AND (@Test_Start IS NULL))
	BEGIN
		SET @JobLineStatus = 'In Queue'
		SET @JobLineLocation = 'QC'
		SET @MES_UPDATE = 0	
		SET @QC_Flag = 0	
	END	

IF EXISTS(SELECT 1 FROM IgnMESCustomDB.dbo.AFL_TubeLineItems WHERE TubeJobNum = @TubeJobNum and Piece_Number = @Piece_Number)
	BEGIN
		IF(@JobLineLocation != '' AND @JobLineStatus != '')
			UPDATE IgnMESCustomDB.dbo.AFL_TubeLineItems SET JobLineStatus = @JobLineStatus , JobLineLocation = @JobLineLocation , Update_MES = @MES_UPDATE, QC_Fail_Flag = @QC_Flag
			WHERE TubeJobNum = @TubeJobNum AND Piece_Number = @Piece_Number		
	END

END










GO
