package com.google.android.gms.appdatasearch;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class h
  implements Parcelable.Creator<Feature>
{
  static void a(Feature paramFeature, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, b);
    c.a(paramParcel, 1000, a);
    c.a(paramParcel, 2, c, false);
    c.a(paramParcel, paramInt);
  }
  
  public Feature a(Parcel paramParcel)
  {
    int j = 0;
    int k = a.b(paramParcel);
    Bundle localBundle = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.a(paramParcel);
      switch (a.a(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        j = a.e(paramParcel, m);
        break;
      case 1000: 
        i = a.e(paramParcel, m);
        break;
      case 2: 
        localBundle = a.l(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new Feature(i, j, localBundle);
  }
  
  public Feature[] a(int paramInt)
  {
    return new Feature[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */