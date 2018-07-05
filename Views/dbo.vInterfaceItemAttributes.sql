SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO



/*
Author:		Bryan Eddy
Date:		4/23/2018
Desc:		This view is to pull data from the linked Test APS (Scheduling system) server for "Item Attribute" information

*/
CREATE VIEW [dbo].[vInterfaceItemAttributes]
AS 
SELECT ItemSetupAttributeID,
       Item_Number,
       Setup,
       MachineID,
       AttributeNameID,
       AttributeValue,
       DateCreated,
       DateRevised,
       MachineName,
       AttributeName,
       DataType,
       UnitOfMeasure
FROM [NAACAB-SCH01].PlanetTogether_Data_Prod.Mes.vItemAttributes

GO
