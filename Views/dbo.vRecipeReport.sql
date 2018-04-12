SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO


/*
Author:		Bryan Eddy
Date:		4/6/2018
Desc:		View of information for the Recipe Managment report print
Version:	1
Update:		N/A
*/
CREATE VIEW  [dbo].[vRecipeReport]
as
  SELECT  REC_Recipe.Name AS Setup,
                                line.part AS Line, 
                                ProdItem.Name AS SetupAttribute,
                                REC_RecipeValue.Value AS RecipeValue, 
                                Units,
                                MinValue, 
                                MaxValue,
								D.GroupViewOrder,
								D.AttributeViewOrder ,
								ProdItem.Description,
								D.AttributeGroupDesc                       
FROM    REC_ProdItemValue ProdItem 
                                INNER JOIN REC_ProdItem ON ProdItem.ProdItemUUID = REC_ProdItem.ProdItemUUID 
                                INNER JOIN REC_Recipe INNER JOIN REC_RecipeValue ON REC_Recipe.RecipeUUID = REC_RecipeValue.RecipeUUID ON ProdItem.ProdItemUUID = REC_RecipeValue.ProdItemUUID AND 
              ProdItem.ProdItemValueUUID = REC_RecipeValue.ProdItemValueUUID 
              INNER JOIN REC_SubProdItemValue ON ProdItem.ProdItemValueUUID = REC_SubProdItemValue.ProdItemValueUUID AND ProdItem.ProdItemUUID = REC_SubProdItemValue.ProdItemUUID
              CROSS APPLY dbo.usf_SplitString(ItemPath,'\') Line
              INNER JOIN  dbo.vInterfaceMachineNames M ON m.MachineName = line.part
			  INNER JOIN dbo.vMachineSetups D ON D.MachineID = M.MachineID AND D.SetupNumber = dbo.REC_Recipe.NAME AND D.AttributeID = ProdItem.Description  

--WHERE REC_Recipe.Name = 'BT001'

GO
