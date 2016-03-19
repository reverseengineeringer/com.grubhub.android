package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import java.util.ArrayList;

class V1PastOrdersDTO$GHSPastOrderItems
  implements Parcelable
{
  public static final Parcelable.Creator<GHSPastOrderItems> CREATOR = new Parcelable.Creator()
  {
    public V1PastOrdersDTO.GHSPastOrderItems createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V1PastOrdersDTO.GHSPastOrderItems(paramAnonymousParcel, null);
    }
    
    public V1PastOrdersDTO.GHSPastOrderItems[] newArray(int paramAnonymousInt)
    {
      return new V1PastOrdersDTO.GHSPastOrderItems[paramAnonymousInt];
    }
  };
  private ArrayList<V1PastOrdersDTO.GHSPastOrderItem> item = new ArrayList();
  
  private V1PastOrdersDTO$GHSPastOrderItems(Parcel paramParcel)
  {
    paramParcel.readTypedList(item, V1PastOrdersDTO.GHSPastOrderItem.CREATOR);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public ArrayList<V1PastOrdersDTO.GHSPastOrderItem> getItem()
  {
    return item;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeTypedList(item);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1PastOrdersDTO.GHSPastOrderItems
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */