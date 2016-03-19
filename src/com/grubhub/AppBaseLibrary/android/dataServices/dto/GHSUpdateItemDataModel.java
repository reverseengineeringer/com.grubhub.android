package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class GHSUpdateItemDataModel
{
  private String choiceOptions = "";
  private String itemSpecialInstructions;
  private String menuGenerationDate = "";
  private String menuItemId = "";
  private String orderId;
  private String orderItemId;
  private String password = "";
  private Integer quantity = Integer.valueOf(0);
  private String subOptions = "";
  private String username = "";
  
  public String getChoiceOptions()
  {
    return choiceOptions;
  }
  
  public String getGenerationDate()
  {
    return menuGenerationDate;
  }
  
  public String getItemSpecialInstructions()
  {
    return itemSpecialInstructions;
  }
  
  public String getNewMenuItemId()
  {
    return menuItemId;
  }
  
  public String getOldMenuItemId()
  {
    return orderItemId;
  }
  
  public String getOrderId()
  {
    return orderId;
  }
  
  public String getPassword()
  {
    return password;
  }
  
  public Integer getQuantity()
  {
    return quantity;
  }
  
  public String getSubOptions()
  {
    return subOptions;
  }
  
  public String getUserName()
  {
    return username;
  }
  
  public void setChoiceOptions(String paramString)
  {
    choiceOptions = paramString;
  }
  
  public void setChoiceOptions(HashMap<String, ArrayList<String>> paramHashMap)
  {
    Object localObject1 = "";
    Iterator localIterator1 = paramHashMap.keySet().iterator();
    while (localIterator1.hasNext())
    {
      Iterator localIterator2 = ((ArrayList)paramHashMap.get((String)localIterator1.next())).iterator();
      while (localIterator2.hasNext())
      {
        localObject2 = (String)localObject1 + (String)localIterator2.next();
        localObject1 = localObject2;
        if (localIterator2.hasNext()) {
          localObject1 = (String)localObject2 + ", ";
        }
      }
      Object localObject2 = localObject1;
      if (localIterator1.hasNext()) {
        localObject2 = (String)localObject1 + ", ";
      }
      localObject1 = localObject2;
    }
    choiceOptions = ((String)localObject1);
  }
  
  public void setGenerationDate(String paramString)
  {
    menuGenerationDate = paramString;
  }
  
  public void setItemSpecialInstructions(String paramString)
  {
    itemSpecialInstructions = paramString;
  }
  
  public void setNewMenuItemId(String paramString)
  {
    menuItemId = paramString;
  }
  
  public void setOldMenuItemId(String paramString)
  {
    orderItemId = paramString;
  }
  
  public void setOrderId(String paramString)
  {
    orderId = paramString;
  }
  
  public void setPassword(String paramString)
  {
    password = paramString;
  }
  
  public void setQuantity(Integer paramInteger)
  {
    quantity = paramInteger;
  }
  
  public void setSubOptions(String paramString)
  {
    subOptions = paramString;
  }
  
  public void setUsername(String paramString)
  {
    username = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSUpdateItemDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */