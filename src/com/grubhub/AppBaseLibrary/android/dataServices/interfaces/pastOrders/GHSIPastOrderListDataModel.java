package com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders;

import android.os.Parcelable;
import java.util.ArrayList;

public abstract interface GHSIPastOrderListDataModel
  extends Parcelable
{
  public static final ArrayList<GHSIPastOrderDataModel> pastOrders = null;
  
  public abstract String getEmail();
  
  public abstract String getFirstName();
  
  public abstract String getLastName();
  
  public abstract ArrayList<GHSIPastOrderDataModel> getPastOrders();
  
  public abstract int getPastOrdersCount();
  
  public abstract String getToken();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */