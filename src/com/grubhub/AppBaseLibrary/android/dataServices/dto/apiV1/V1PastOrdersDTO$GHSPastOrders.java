package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

public class V1PastOrdersDTO$GHSPastOrders
  implements Parcelable
{
  public static final Parcelable.Creator<GHSPastOrders> CREATOR = new Parcelable.Creator()
  {
    public V1PastOrdersDTO.GHSPastOrders createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V1PastOrdersDTO.GHSPastOrders(paramAnonymousParcel, null);
    }
    
    public V1PastOrdersDTO.GHSPastOrders[] newArray(int paramAnonymousInt)
    {
      return new V1PastOrdersDTO.GHSPastOrders[paramAnonymousInt];
    }
  };
  private ArrayList<V1PastOrdersDTO.GHSPastOrder> order = new ArrayList();
  
  private V1PastOrdersDTO$GHSPastOrders(Parcel paramParcel)
  {
    paramParcel.readTypedList(order, V1PastOrdersDTO.GHSPastOrder.CREATOR);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(order);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1PastOrdersDTO.GHSPastOrders
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */