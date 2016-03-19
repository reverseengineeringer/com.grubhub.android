package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeoInfo;

public class V2GeoInfoDTO
  implements Parcelable, GHSIGeoInfo
{
  public static final Parcelable.Creator<V2GeoInfoDTO> CREATOR = new Parcelable.Creator()
  {
    public V2GeoInfoDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2GeoInfoDTO(paramAnonymousParcel, null);
    }
    
    public V2GeoInfoDTO[] newArray(int paramAnonymousInt)
    {
      return new V2GeoInfoDTO[paramAnonymousInt];
    }
  };
  private String latitude;
  private String longitude;
  
  private V2GeoInfoDTO(Parcel paramParcel)
  {
    latitude = ((String)paramParcel.readValue(null));
    longitude = ((String)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String getLatitude()
  {
    return latitude;
  }
  
  public String getLongitude()
  {
    return longitude;
  }
  
  public void setLatitude(String paramString)
  {
    latitude = paramString;
  }
  
  public void setLongitude(String paramString)
  {
    longitude = paramString;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(latitude);
    paramParcel.writeValue(longitude);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2GeoInfoDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */