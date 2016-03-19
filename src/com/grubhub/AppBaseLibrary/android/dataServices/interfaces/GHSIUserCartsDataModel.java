package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.Map;

public abstract interface GHSIUserCartsDataModel
{
  public abstract Map<String, GHSICartDataModel> getUserCarts();
  
  public abstract void retainCarts(GHSICartDataModel.GHSCartState paramGHSCartState);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */