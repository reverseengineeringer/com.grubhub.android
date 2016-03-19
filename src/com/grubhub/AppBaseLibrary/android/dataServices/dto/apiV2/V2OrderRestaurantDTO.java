package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;

public class V2OrderRestaurantDTO
  implements Parcelable
{
  public static final Parcelable.Creator<V2OrderRestaurantDTO> CREATOR = new Parcelable.Creator()
  {
    public V2OrderRestaurantDTO createFromParcel(Parcel paramAnonymousParcel)
    {
      return new V2OrderRestaurantDTO(paramAnonymousParcel, null);
    }
    
    public V2OrderRestaurantDTO[] newArray(int paramAnonymousInt)
    {
      return new V2OrderRestaurantDTO[paramAnonymousInt];
    }
  };
  protected String id;
  protected String name;
  
  private V2OrderRestaurantDTO(Parcel paramParcel)
  {
    id = ((String)paramParcel.readValue(null));
    name = ((String)paramParcel.readValue(null));
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeValue(id);
    paramParcel.writeValue(name);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderRestaurantDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */