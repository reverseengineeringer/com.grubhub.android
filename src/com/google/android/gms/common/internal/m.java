package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class m
  implements Parcelable.Creator<GetServiceRequest>
{
  static void a(GetServiceRequest paramGetServiceRequest, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, a);
    c.a(paramParcel, 2, b);
    c.a(paramParcel, 3, c);
    c.a(paramParcel, 4, d, false);
    c.a(paramParcel, 5, e, false);
    c.a(paramParcel, 6, f, paramInt, false);
    c.a(paramParcel, 7, g, false);
    c.a(paramParcel, 8, h, paramInt, false);
    c.a(paramParcel, i);
  }
  
  public GetServiceRequest a(Parcel paramParcel)
  {
    int i = 0;
    Account localAccount = null;
    int m = a.b(paramParcel);
    Bundle localBundle = null;
    Scope[] arrayOfScope = null;
    IBinder localIBinder = null;
    String str = null;
    int j = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.a(paramParcel);
      switch (a.a(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        k = a.e(paramParcel, n);
        break;
      case 2: 
        j = a.e(paramParcel, n);
        break;
      case 3: 
        i = a.e(paramParcel, n);
        break;
      case 4: 
        str = a.j(paramParcel, n);
        break;
      case 5: 
        localIBinder = a.k(paramParcel, n);
        break;
      case 6: 
        arrayOfScope = (Scope[])a.b(paramParcel, n, Scope.CREATOR);
        break;
      case 7: 
        localBundle = a.l(paramParcel, n);
        break;
      case 8: 
        localAccount = (Account)a.a(paramParcel, n, Account.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new b("Overread allowed size end=" + m, paramParcel);
    }
    return new GetServiceRequest(k, j, i, str, localIBinder, arrayOfScope, localBundle, localAccount);
  }
  
  public GetServiceRequest[] a(int paramInt)
  {
    return new GetServiceRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */