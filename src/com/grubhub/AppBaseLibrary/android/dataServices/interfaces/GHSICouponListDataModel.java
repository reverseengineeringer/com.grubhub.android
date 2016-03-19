package com.grubhub.AppBaseLibrary.android.dataServices.interfaces;

import java.util.ArrayList;

public abstract interface GHSICouponListDataModel
{
  public abstract int getCount();
  
  public abstract ArrayList<GHSICouponListDataModel.GHSICouponDataModel> getCoupons();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */