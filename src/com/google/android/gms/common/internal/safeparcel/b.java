package com.google.android.gms.common.internal.safeparcel;

import android.os.Parcel;

public class b
  extends RuntimeException
{
  public b(String paramString, Parcel paramParcel)
  {
    super(paramString + " Parcel: pos=" + paramParcel.dataPosition() + " size=" + paramParcel.dataSize());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.safeparcel.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */