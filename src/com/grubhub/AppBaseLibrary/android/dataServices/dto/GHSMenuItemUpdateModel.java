package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel.GHSICartOptions;
import java.util.List;

public class GHSMenuItemUpdateModel
  implements GHSIMenuItemUpdateModel
{
  private boolean applyFreeGrub;
  private String menuItemId;
  private List<GHSIMenuItemUpdateModel.GHSICartOptions> options;
  private int quantity;
  private String restaurantId;
  private String specialInstructions;
  
  public Boolean getApplyFreeGrub()
  {
    return Boolean.valueOf(applyFreeGrub);
  }
  
  public String getMenuItemId()
  {
    return menuItemId;
  }
  
  public List<GHSIMenuItemUpdateModel.GHSICartOptions> getOptions()
  {
    return options;
  }
  
  public int getQuantity()
  {
    return quantity;
  }
  
  public String getRestaurantId()
  {
    return restaurantId;
  }
  
  public String getSpecialInstructions()
  {
    return specialInstructions;
  }
  
  public void setApplyFreeGrub(Boolean paramBoolean)
  {
    applyFreeGrub = paramBoolean.booleanValue();
  }
  
  public void setMenuItemId(String paramString)
  {
    menuItemId = paramString;
  }
  
  public void setOptions(List<GHSIMenuItemUpdateModel.GHSICartOptions> paramList)
  {
    options = paramList;
  }
  
  public void setQuantity(int paramInt)
  {
    quantity = paramInt;
  }
  
  public void setRestaurantId(String paramString)
  {
    restaurantId = paramString;
  }
  
  public void setSpecialInstructions(String paramString)
  {
    specialInstructions = paramString;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSMenuItemUpdateModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */