CREATE TABLE [dbo].[AFL_O2MES_SO_DJ]
(
[batch_id] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sales_RecID_Level1] [int] NULL,
[Tube_RecID_Level2] [int] NULL,
[Cable_RecID_Level3] [varchar] (100) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Consumable_RecID_Level4] [int] NULL,
[CustomerID] [int] NULL,
[Customer_Name] [varchar] (360) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sales_Order_Line_No] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[End_Assembly_Item] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[End_Assembly_Desc] [varchar] (240) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sales_Order_UOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Sales_Ord_Qty] [float] NULL,
[PromiseDate] [datetime] NULL,
[End_Assembly_Primary_UOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Primary_Qty] [int] NULL,
[Flag_Cancel_Remake] [varchar] (10) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Parent_Job_number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Parent_Job_ID] [int] NULL,
[Child_Job_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Child_Job_ID] [int] NULL,
[Consumed_Op_Seq] [int] NULL,
[Min_Qty_Op_Seq] [int] NULL,
[Child_Item_Description] [varchar] (240) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Child_Primary_Qty] [int] NULL,
[SetUp_Start_Time] [datetime] NULL,
[Run_Start_Time] [datetime] NULL,
[End_Time] [datetime] NULL,
[Child_Item_Number] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Machine_ID] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Child_Op_Seq] [int] NULL,
[Min_Cut_Length] [int] NULL,
[Fiber_Master_Set] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Consumable_Item_Count] [int] NULL,
[Recipe_Setup_Number] [varchar] (40) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Child_Item_Primary_UOM] [varchar] (50) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Complete_Flag] [varchar] (30) COLLATE SQL_Latin1_General_CP1_CI_AS NULL,
[Organization_id] [int] NULL
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
--——-service broker call from trigger.
CREATE TRIGGER [dbo].[trg_AFL_O2MES_Data_Ins]
ON  [dbo].[AFL_O2MES_SO_DJ]
AFTER INSERT
AS
BEGIN
DECLARE @TubeJobNum as varchar(100)
DECLARE @Machine_ID as varchar(100)
DECLARE @Cable_JobNo as varchar(50)
DECLARE @Sales_ID as varchar(50)

SELECT @TubeJobNum = Child_Job_Number from inserted
SELECT @Machine_ID = Machine_ID from inserted
SELECT @Cable_JobNo = Parent_Job_number from inserted
SELECT @Sales_ID = Sales_RecID_Level1 from inserted

IF NOT EXISTS(SELECT 1 FROM AFL_O2MES_TubeJob WHERE Tube_Job_Num = @TubeJobNum and Machine_ID = @Machine_ID)
	BEGIN
		INSERT INTO AFL_O2MES_TubeJob(
			[Tube_RecID_Level2]
			,[Consumable_RecID_Level4]
			,[Tube_Wip_ID]
			,[Tube_Job_Num]
			,[Description]
			,[Primary_UOM]
			,[Primary_Qty]
			,[SetUp_Start_Time]
			,[Run_Start_Time]
			,[End_Time]
			,[Item_Number]
			,[Machine_ID]
			,[Tube_Op_Seq]
			,[Min_Cut_Length]
			,[Flag_Cancel_Remake]
			,[Recipe_Setup_Number]
			--      ,[Fiber_Count]
			,[Fiber_Master_Set]
			,[Consumable_Item_Count]      
			,[MES_ProcessStatus])
		SELECT
			[Tube_RecID_Level2]
			,[Consumable_RecID_Level4]
			,[Child_Job_ID]--
			,[Child_Job_Number]
			,[End_Assembly_Desc]
			,[End_Assembly_Primary_UOM]
			,[Primary_Qty]
			,[SetUp_Start_Time]
			,[Run_Start_Time]
			,[End_Time]
			,[Child_Item_Number]
			,[Machine_ID]
			,[Child_Op_Seq]
			,[Min_Cut_Length]
			,[Flag_Cancel_Remake]
			,[Recipe_Setup_Number]
			,[Fiber_Master_Set]
			,[Consumable_Item_Count]
			,0      
		FROM inserted
	END	

IF NOT EXISTS(SELECT 1 FROM AFL_O2MES_CableTubeJob WHERE Cable_Job_Num = @Cable_JobNo)
	BEGIN
		INSERT INTO AFL_O2MES_CableTubeJob(
			[Cable_RecID_Level3]
			,[Tube_RecID_Level2]
			,[Sales_RecID_Level1]
			,[Cable_Job_Num]
			,[Cable_Wip_ID]
			,[Tube_Job_Num]
			,[Tube_Wip_ID]
			,[Consumed_Op_Seq]
			,[Min_Qty_Op_Seq]
			,[Flag_Cancel_Remake])
		SELECT
			[Cable_RecID_Level3]
			,[Tube_RecID_Level2]
			,[Sales_RecID_Level1]
			,[Parent_Job_number]
			,[Parent_Job_ID]
			,[Child_Job_Number]
			,[Child_Job_ID]
			,[Consumed_Op_Seq]
			,[Min_Qty_Op_Seq]
			,[Flag_Cancel_Remake]				
		FROM inserted
	END

IF NOT EXISTS(SELECT 1 FROM AFL_O2MES_SalesOrder WHERE Sales_RecID_Level1 = @Sales_ID)
	BEGIN
		INSERT INTO AFL_O2MES_SalesOrder(
			[Sales_RecID_Level1]
			,[CustomerID]
			,[Customer_Name]
			,[Sales_Order_Line_No]
			,[Item_Desc]
			,[Sales_Order_UOM]
			,[Sales_Ord_Qty]
			,[Item_Number]
			,[PromiseDate]
			,[Primary_UOM]
			,[Primary_Qty]
			,[Flag_Cancel_Remake])
		SELECT
			[Sales_RecID_Level1]
			,[CustomerID]
			,[Customer_Name]
			,[Sales_Order_Line_No]
			,[End_Assembly_Desc]
			,[Sales_Order_UOM]
			,[Sales_Ord_Qty]
			,[Child_Item_Number]
			,[PromiseDate]
			,[End_Assembly_Primary_UOM]
			,[Primary_Qty]
			,[Flag_Cancel_Remake]      
		FROM inserted
	END

	UPDATE [StagingDB].[dbo].[MES_Staging_Interface] SET Interface_Status = 'Processed'
	FROM Inserted i
    WHERE [dbo].[MES_Staging_Interface].batch_Id = i.batch_Id
END
GO
