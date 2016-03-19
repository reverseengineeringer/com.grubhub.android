package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class ar
  implements Parcelable.Creator<ResolveAccountRequest>
{
  static void a(ResolveAccountRequest paramResolveAccountRequest, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, a);
    c.a(paramParcel, 2, paramResolveAccountRequest.a(), paramInt, false);
    c.a(paramParcel, 3, paramResolveAccountRequest.b());
    c.a(paramParcel, i);
  }
  
  public ResolveAccountRequest a(Parcel paramParcel)
  {
    int i = 0;
    int k = a.b(paramParcel);
    Account localAccount = null;
    int j = 0;
    if (paramParcel.dataPosition() < k)
    {
      int m = a.a(paramParcel);
      switch (a.a(m))
      {
      default: 
        a.b(paramParcel, m);
      }
      for (;;)
      {
        break;
        j = a.e(paramParcel, m);
        continue;
        localAccount = (Account)a.a(paramParcel, m, Account.CREATOR);
        continue;
        i = a.e(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new ResolveAccountRequest(j, localAccount, i);
  }
  
  public ResolveAccountRequest[] a(int paramInt)
  {
    return new ResolveAccountRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */