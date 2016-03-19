package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class f
  implements Parcelable.Creator<ValidateAccountRequest>
{
  static void a(ValidateAccountRequest paramValidateAccountRequest, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, a);
    c.a(paramParcel, 2, paramValidateAccountRequest.a());
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, 4, paramValidateAccountRequest.b(), paramInt, false);
    c.a(paramParcel, 5, paramValidateAccountRequest.d(), false);
    c.a(paramParcel, 6, paramValidateAccountRequest.c(), false);
    c.a(paramParcel, i);
  }
  
  public ValidateAccountRequest a(Parcel paramParcel)
  {
    int i = 0;
    String str = null;
    int k = a.b(paramParcel);
    Bundle localBundle = null;
    Scope[] arrayOfScope = null;
    IBinder localIBinder = null;
    int j = 0;
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
      case 2: 
        i = a.e(paramParcel, m);
        break;
      case 3: 
        localIBinder = a.k(paramParcel, m);
        break;
      case 4: 
        arrayOfScope = (Scope[])a.b(paramParcel, m, Scope.CREATOR);
        break;
      case 5: 
        localBundle = a.l(paramParcel, m);
        break;
      case 6: 
        str = a.j(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new ValidateAccountRequest(j, i, localIBinder, arrayOfScope, localBundle, str);
  }
  
  public ValidateAccountRequest[] a(int paramInt)
  {
    return new ValidateAccountRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */