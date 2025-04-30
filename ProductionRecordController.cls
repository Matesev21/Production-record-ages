									List<Item_Size_Group__c> izg = new List<Item_Size_Group__c>();

									for(Item_Size_Group__c isg : izgG)
										if(isg.Item__C == recipe.Item__C)
											izg.add(isg);
									if(kod.Category__C == '3-5' && recipe.Serving_Size_SMALL__c > 0){
										UOM = CalculateUOM(izg, '3-5');
										data.add(recipe.Ingredient__r.Name);
										data.add(String.valueOf(recipe.Serving_Size_SMALL__c) + ' ' + UOM);
										//data.add(recipe.UOM__c);
										if(recipe.Value__c == 0){
											data.add(String.valueOf(Calculate(kod.Qty__C, recipe.Serving_Size_SMALL__c, recipe.Value__c)) + ' ' + UOM);
										}
										else {
											data.add(String.valueOf(Calculate(kod.Qty__C, recipe.Serving_Size_SMALL__c, recipe.Value__c)) + ' ' + recipe.Value_UOM__c);
										}
									}
