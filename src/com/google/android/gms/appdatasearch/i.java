package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class i
  implements Parcelable.Creator<GetRecentContextCall.Request>
{
  static void a(GetRecentContextCall.Request paramRequest, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, b, paramInt, false);
    c.a(paramParcel, 1000, a);
    c.a(paramParcel, 2, c);
    c.a(paramParcel, 3, d);
    c.a(paramParcel, 4, e);
    c.a(paramParcel, i);
  }
  
  public GetRecentContextCall.Request a(Parcel paramParcel)
  {
    boolean bool1 = false;
    int j = a.b(paramParcel);
    Account localAccount = null;
    boolean bool2 = false;
    boolean bool3 = false;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.a(paramParcel);
      switch (a.a(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        localAccount = (Account)a.a(paramParcel, k, Account.CREATOR);
        break;
      case 1000: 
        i = a.e(paramParcel, k);
        break;
      case 2: 
        bool3 = a.c(paramParcel, k);
        break;
      case 3: 
        bool2 = a.c(paramParcel, k);
        break;
      case 4: 
        bool1 = a.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new GetRecentContextCall.Request(i, localAccount, bool3, bool2, bool1);
  }
  
  public GetRecentContextCall.Request[] a(int paramInt)
  {
    return new GetRecentContextCall.Request[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */