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
SELECT *
FROM [SPBAPS-TST01].PlanetTogether_Data_Test.Mes.vItemAttributes

GO
