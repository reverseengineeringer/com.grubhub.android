package com.google.android.gms.common.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class g
  implements Parcelable.Creator<AuthAccountRequest>
{
  static void a(AuthAccountRequest paramAuthAccountRequest, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, a);
    c.a(paramParcel, 2, b, false);
    c.a(paramParcel, 3, c, paramInt, false);
    c.a(paramParcel, i);
  }
  
  public AuthAccountRequest a(Parcel paramParcel)
  {
    Scope[] arrayOfScope = null;
    int j = a.b(paramParcel);
    int i = 0;
    IBinder localIBinder = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.a(paramParcel);
      switch (a.a(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.e(paramParcel, k);
        break;
      case 2: 
        localIBinder = a.k(paramParcel, k);
        break;
      case 3: 
        arrayOfScope = (Scope[])a.b(paramParcel, k, Scope.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new AuthAccountRequest(i, localIBinder, arrayOfScope);
  }
  
  public AuthAccountRequest[] a(int paramInt)
  {
    return new AuthAccountRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */