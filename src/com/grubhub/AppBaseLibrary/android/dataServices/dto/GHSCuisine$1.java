package com.grubhub.AppBaseLibrary.android.dataServices.dto;

import android.os.Parcel;
import android.os.Parcelable.ClassLoaderCreator;

final class GHSCuisine$1
  implements Parcelable.ClassLoaderCreator<GHSCuisine>
{
  public GHSCuisine createFromParcel(Parcel paramParcel)
  {
    return new GHSCuisine(paramParcel, null);
  }
  
  public GHSCuisine createFromParcel(Parcel paramParcel, ClassLoader paramClassLoader)
  {
    return createFromParcel(paramParcel);
  }
  
  public GHSCuisine[] newArray(int paramInt)
  {
    return new GHSCuisine[0];
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */