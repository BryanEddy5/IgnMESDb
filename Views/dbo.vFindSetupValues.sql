SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
/*
Author:		Bryan Eddy
Desc:		View for setup search
Date:		3/16/18
Version:	1
Update:		n/a
*/

CREATE VIEW	[dbo].[vFindSetupValues]
as

SELECT        REC_Recipe.Name AS Setup,line.part AS Line, ProdItem.Name AS SetupAttribute
             ,REC_RecipeValue.Value AS RecipeValue, Units
			 ,MinValue, MaxValue,Description						 
FROM            REC_ProdItemValue ProdItem INNER JOIN
                         REC_ProdItem ON ProdItem.ProdItemUUID = REC_ProdItem.ProdItemUUID INNER JOIN
                         REC_Recipe INNER JOIN
                         REC_RecipeValue ON REC_Recipe.RecipeUUID = REC_RecipeValue.RecipeUUID ON ProdItem.ProdItemUUID = REC_RecipeValue.ProdItemUUID AND 
                         ProdItem.ProdItemValueUUID = REC_RecipeValue.ProdItemValueUUID INNER JOIN
                         REC_SubProdItemValue ON ProdItem.ProdItemValueUUID = REC_SubProdItemValue.ProdItemValueUUID AND 
                         ProdItem.ProdItemUUID = REC_SubProdItemValue.ProdItemUUID
						 CROSS APPLY dbo.usf_SplitString(ItemPath,'\') Line
						 INNER JOIN  dbo.vInterfaceMachineNames M ON m.MachineName = line.part

GO
