package com.google.android.gms.common;

import android.app.PendingIntent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class h
  implements Parcelable.Creator<ConnectionResult>
{
  static void a(ConnectionResult paramConnectionResult, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, b);
    c.a(paramParcel, 2, paramConnectionResult.c());
    c.a(paramParcel, 3, paramConnectionResult.d(), paramInt, false);
    c.a(paramParcel, i);
  }
  
  public ConnectionResult a(Parcel paramParcel)
  {
    int j = 0;
    int k = a.b(paramParcel);
    PendingIntent localPendingIntent = null;
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
        i = a.e(paramParcel, m);
        break;
      case 2: 
        j = a.e(paramParcel, m);
        break;
      case 3: 
        localPendingIntent = (PendingIntent)a.a(paramParcel, m, PendingIntent.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new ConnectionResult(i, j, localPendingIntent);
  }
  
  public ConnectionResult[] a(int paramInt)
  {
    return new ConnectionResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */