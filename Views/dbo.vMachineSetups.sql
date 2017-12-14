SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO

CREATE VIEW [dbo].[vMachineSetups]
AS
SELECT        MachineID, MachineName, AttributeID, AttributeDesc, AttributeName, SetupNumber, AttributeValue, AttributeUOM
FROM            [NAACAB-SCH01].PlanetTogether_Data_Test.Setup.vInterfaceRecipeManagementSystem
GO
