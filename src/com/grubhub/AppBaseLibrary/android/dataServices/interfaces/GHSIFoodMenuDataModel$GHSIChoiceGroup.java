package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSIFoodMenuDataModel$GHSIChoiceGroup
{
  public abstract String getChoiceId();
  
  public abstract String getChoiceName();
  
  public abstract int getItemVariationId();
  
  public abstract int getMaximum();
  
  public abstract int getMinimum();
  
  public abstract GHSIFoodMenuDataModel.GHSIOption getOptionById(String paramString);
  
  public abstract ArrayList<GHSIFoodMenuDataModel.GHSIOption> getOptions();
  
  public abstract String getOptionsDescriptionsString(ArrayList<GHSIFoodMenuDataModel.GHSIOption> paramArrayList);
  
  public abstract int getSequence();
  
  public abstract boolean getVariationTarget();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIChoiceGroup
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */