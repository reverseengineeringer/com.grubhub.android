package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking
  implements Parcelable
{
  public static final Parcelable.Creator<V2OrderTracking> CREATOR = new Parcelable.Creator()
  {
    public V2OrderHistoryDTO.V2OrderDTO.V2OrderTracking createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderHistoryDTO.V2OrderDTO.V2OrderTracking(paramAnonymousParcel, null);
    }
    
    public V2OrderHistoryDTO.V2OrderDTO.V2OrderTracking[] newArray(int paramAnonymousInt)
    {
      return new V2OrderHistoryDTO.V2OrderDTO.V2OrderTracking[paramAnonymousInt];
    }
  };
  protected boolean enabled;
  
  private V2OrderHistoryDTO$V2OrderDTO$V2OrderTracking(Parcel paramParcel)
  {
    enabled = ((Boolean)paramParcel.readValue(null)).booleanValue();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(Boolean.valueOf(enabled));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderHistoryDTO.V2OrderDTO.V2OrderTracking
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */