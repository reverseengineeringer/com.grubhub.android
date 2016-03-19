package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class BitmapDescriptorParcelable
  implements SafeParcelable
{
  public static final d CREATOR = new d();
  private final int a;
  private byte b;
  private Bundle c;
  private Bitmap d;
  
  BitmapDescriptorParcelable(int paramInt, byte paramByte, Bundle paramBundle, Bitmap paramBitmap)
  {
    a = paramInt;
    b = paramByte;
    c = paramBundle;
    d = paramBitmap;
  }
  
  public int a()
  {
    return a;
  }
  
  public byte b()
  {
    return b;
  }
  
  public Bundle c()
  {
    return c;
  }
  
  public Bitmap d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.BitmapDescriptorParcelable
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */