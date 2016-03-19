package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class MarkerOptionsParcelable
  implements SafeParcelable
{
  public static final ae CREATOR = new ae();
  private final int a;
  private BitmapDescriptorParcelable b;
  
  public MarkerOptionsParcelable()
  {
    a = 1;
  }
  
  MarkerOptionsParcelable(int paramInt, BitmapDescriptorParcelable paramBitmapDescriptorParcelable)
  {
    a = paramInt;
    b = paramBitmapDescriptorParcelable;
  }
  
  int a()
  {
    return a;
  }
  
  public BitmapDescriptorParcelable b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ae.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.MarkerOptionsParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */