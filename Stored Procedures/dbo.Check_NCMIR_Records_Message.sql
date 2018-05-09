SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE PROCEDURE [dbo].[Check_NCMIR_Records_Message]
(
@data XML
)
AS

BEGIN TRY
DECLARE @MessageType VARCHAR(50),
@DMDLType As varchar(50),
@LocationID AS int,
@Number AS varchar(255),
@NcmirKey as int,
@JobNumber AS varchar(50),
@Customer AS varchar(150),
@OrderNumber AS varchar(50),
@FiberCount AS int,
@ItemNumber AS varchar(50),
@ItemDescription As Varchar(255),
@DateCreated As DateTime,
@DateClosed As DateTime,
@Closed As Bit

SELECT  @MessageType = @data.value('(NCMIR_DATA/Header/@MessageType)[1]','VARCHAR(50)'),
@DMDLType = @data.value('(NCMIR_DATA/Header/@DMDLType)[1]','VARCHAR(50)'),
@LocationID = @data.value('(NCMIR_DATA/Header/@LocationID)[1]','int'),
@Number = @data.value('(NCMIR_DATA/Header/@Number)[1]','int'),
@NcmirKey = @data.value('(NCMIR_DATA/Header/@NcmirKey)[1]','int'),
@JobNumber = @data.value('(NCMIR_DATA/Header/@JobNumber)[1]','VARCHAR(50)'),
@Customer = @data.value('(NCMIR_DATA/Header/@Customer)[1]','VARCHAR(150)'),
@OrderNumber = @data.value('(NCMIR_DATA/Header/@OrderNumber)[1]','VARCHAR(50)'),
@FiberCount = @data.value('(NCMIR_DATA/Header/@FiberCount)[1]','VARCHAR(10)'),
@ItemNumber = @data.value('(NCMIR_DATA/Header/@ItemNumber)[1]','VARCHAR(50)'),
@ItemDescription = @data.value('(NCMIR_DATA/Header/@ItemDescription)[1]','VARCHAR(255)'),
@DateCreated = @data.value('(NCMIR_DATA/Header/@DateCreated)[1]','DateTime'),
@DateClosed = @data.value('(NCMIR_DATA/Header/@DateClosed)[1]','DateTime'),
@Closed = @data.value('(NCMIR_DATA/Header/@Closed)[1]','Bit')

SELECT @MessageType = ISNULL(@MessageType,'')
IF @MessageType = 'StagingDB' 
BEGIN
	IF @DMDLType = 'Insert'
	BEGIN
		IF(@JobNumber IS NOT NULL)
		BEGIN
			INSERT INTO AFL_NCMIR_Table ( LocationID, NcmirNumber, NcmirKey, JobNumber, Customer, OrderNumber, FiberCount, ItemNumber, ItemDescription, DateCreated, DateClosed, Closed)
			SELECT @LocationID, @Number, @NcmirKey, @JobNumber, @Customer, @OrderNumber, @FiberCount, @ItemNumber, @ItemDescription, @DateCreated, @DateClosed, @Closed
		END		
	END
	ELSE IF @DMDLType = 'Update'
	BEGIN
		IF(@Number IS NOT NULL)
		BEGIN
			UPDATE AFL_NCMIR_Table SET DateClosed = @DateClosed, Closed = @Closed, ModifiedDate = GETDATE()
			WHERE NcmirNumber = @Number
			
		END	
	END
	ELSE IF @DMDLType = 'Delete'
	BEGIN
		IF(@JobNumber IS NOT NULL)
		BEGIN
			UPDATE AFL_NCMIR_Table SET IsEnabled = 0, ModifiedDate = GETDATE()
			WHERE NcmirNumber = @Number
			
		END	
	END
	
END
END TRY
BEGIN CATCH
DECLARE @msg VARCHAR(MAX)
SELECT @msg = ERROR_MESSAGE()
END CATCH
RETURN
GO
