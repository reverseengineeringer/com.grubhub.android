package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.List;

public abstract interface GHSIMenuItemUpdateModel
{
  public abstract Boolean getApplyFreeGrub();
  
  public abstract String getMenuItemId();
  
  public abstract List<GHSIMenuItemUpdateModel.GHSICartOptions> getOptions();
  
  public abstract int getQuantity();
  
  public abstract String getRestaurantId();
  
  public abstract String getSpecialInstructions();
  
  public abstract void setApplyFreeGrub(Boolean paramBoolean);
  
  public abstract void setMenuItemId(String paramString);
  
  public abstract void setOptions(List<GHSIMenuItemUpdateModel.GHSICartOptions> paramList);
  
  public abstract void setQuantity(int paramInt);
  
  public abstract void setRestaurantId(String paramString);
  
  public abstract void setSpecialInstructions(String paramString);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */