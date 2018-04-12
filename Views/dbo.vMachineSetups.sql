SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


/*
Author:		Bryan Eddy
Date:		3/16/18
Desc:		View of setup attributes from the APS Prod server
Version:	2
Update:		Updated to point to the prod db
*/


CREATE VIEW [dbo].[vMachineSetups]
AS
SELECT        *
FROM            [NAACAB-SCH01].PlanetTogether_Data_Prod.Setup.vInterfaceRecipeManagementSystem
GO
