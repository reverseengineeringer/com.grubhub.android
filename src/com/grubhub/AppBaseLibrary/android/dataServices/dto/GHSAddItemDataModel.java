package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public class GHSAddItemDataModel
{
  private GHSIAddressDataModel addressDataModel;
  private String choiceOptions = "";
  private boolean isPickup;
  private String itemSpecialInstructions = "";
  private String menuGenerationDate = "";
  private String menuItemId = "";
  private String orderId;
  private String password;
  private Integer quantity = Integer.valueOf(0);
  private String restaurantId = "";
  private String subOptions = "";
  private String username;
  
  public GHSIAddressDataModel getAddressDataModel()
  {
    return addressDataModel;
  }
  
  public String getChoiceOptions()
  {
    return choiceOptions;
  }
  
  public String getGenerationDate()
  {
    return menuGenerationDate;
  }
  
  public boolean getIsPickup()
  {
    return isPickup;
  }
  
  public String getItemSpecialInstructions()
  {
    return itemSpecialInstructions;
  }
  
  public String getMenuItemId()
  {
    return menuItemId;
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
  
  public String getRestaurantId()
  {
    return restaurantId;
  }
  
  public String getSubOptions()
  {
    return subOptions;
  }
  
  public String getUserName()
  {
    return username;
  }
  
  public void setAddressDataModel(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    addressDataModel = paramGHSIAddressDataModel;
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
  
  public void setIsPickup(boolean paramBoolean)
  {
    isPickup = paramBoolean;
  }
  
  public void setItemSpecialInstructions(String paramString)
  {
    itemSpecialInstructions = paramString;
  }
  
  public void setMenuItemId(String paramString)
  {
    menuItemId = paramString;
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
  
  public void setRestaurantId(String paramString)
  {
    restaurantId = paramString;
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddItemDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */