package com.urbanairship.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;

final class LocationRequestOptions$1
  implements Parcelable.Creator<LocationRequestOptions>
{
  public LocationRequestOptions createFromParcel(Parcel paramParcel)
  {
    return new LocationRequestOptions(paramParcel, null);
  }
  
  public LocationRequestOptions[] newArray(int paramInt)
  {
    return new LocationRequestOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.location.LocationRequestOptions.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */