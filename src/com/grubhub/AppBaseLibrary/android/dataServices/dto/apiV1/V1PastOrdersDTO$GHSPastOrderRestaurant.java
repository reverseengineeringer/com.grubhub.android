package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class V1PastOrdersDTO$GHSPastOrderRestaurant
  implements Parcelable
{
  public static final Parcelable.Creator<GHSPastOrderRestaurant> CREATOR = new Parcelable.Creator()
  {
    public V1PastOrdersDTO.GHSPastOrderRestaurant createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V1PastOrdersDTO.GHSPastOrderRestaurant(paramAnonymousParcel, null);
    }
    
    public V1PastOrdersDTO.GHSPastOrderRestaurant[] newArray(int paramAnonymousInt)
    {
      return new V1PastOrdersDTO.GHSPastOrderRestaurant[paramAnonymousInt];
    }
  };
  public String id;
  public String lat;
  public String lng;
  public String logoURL;
  public String name;
  public int orderCount;
  
  private V1PastOrdersDTO$GHSPastOrderRestaurant(Parcel paramParcel)
  {
    name = paramParcel.readString();
    lat = paramParcel.readString();
    lng = paramParcel.readString();
    logoURL = paramParcel.readString();
    orderCount = paramParcel.readInt();
    id = paramParcel.readString();
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(name);
    paramParcel.writeString(lat);
    paramParcel.writeString(lng);
    paramParcel.writeString(logoURL);
    paramParcel.writeInt(orderCount);
    paramParcel.writeString(id);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1PastOrdersDTO.GHSPastOrderRestaurant
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */