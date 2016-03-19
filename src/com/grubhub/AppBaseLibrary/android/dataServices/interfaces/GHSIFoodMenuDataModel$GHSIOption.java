package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIFoodMenuDataModel$GHSIOption
{
  public abstract String getOptionDescription();
  
  public abstract String getOptionId();
  
  public abstract Float getOptionPrice();
  
  public abstract GHSIFoodMenuDataModel.GHSIChoiceGroup getSubOptionChoiceGroupById(String paramString);
  
  public abstract ArrayList<GHSIFoodMenuDataModel.GHSIChoiceGroup> getSubOptionChoiceGroups();
  
  public abstract Float getVariationalPrice(String paramString);
  
  public abstract boolean hasPriceDependency();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIOption
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */