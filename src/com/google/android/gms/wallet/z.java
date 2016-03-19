package com.google.android.gms.wallet;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class z
  implements Parcelable.Creator<PaymentMethodToken>
{
  static void a(PaymentMethodToken paramPaymentMethodToken, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramPaymentMethodToken.a());
    c.a(paramParcel, 2, a);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, paramInt);
  }
  
  public PaymentMethodToken a(Parcel paramParcel)
  {
    int j = 0;
    int k = a.b(paramParcel);
    String str = null;
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
        str = a.j(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new b("Overread allowed size end=" + k, paramParcel);
    }
    return new PaymentMethodToken(i, j, str);
  }
  
  public PaymentMethodToken[] a(int paramInt)
  {
    return new PaymentMethodToken[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */