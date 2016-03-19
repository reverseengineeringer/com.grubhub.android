package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class e
  implements Parcelable.Creator<LoyaltyPointsBalance>
{
  static void a(LoyaltyPointsBalance paramLoyaltyPointsBalance, Parcel paramParcel, int paramInt)
  {
    paramInt = c.a(paramParcel);
    c.a(paramParcel, 1, paramLoyaltyPointsBalance.a());
    c.a(paramParcel, 2, a);
    c.a(paramParcel, 3, b, false);
    c.a(paramParcel, 4, c);
    c.a(paramParcel, 5, d, false);
    c.a(paramParcel, 6, e);
    c.a(paramParcel, 7, f);
    c.a(paramParcel, paramInt);
  }
  
  public LoyaltyPointsBalance a(Parcel paramParcel)
  {
    String str1 = null;
    int j = 0;
    int m = a.b(paramParcel);
    double d = 0.0D;
    long l = 0L;
    int i = -1;
    String str2 = null;
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
        str2 = a.j(paramParcel, n);
        break;
      case 4: 
        d = a.i(paramParcel, n);
        break;
      case 5: 
        str1 = a.j(paramParcel, n);
        break;
      case 6: 
        l = a.g(paramParcel, n);
        break;
      case 7: 
        i = a.e(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new b("Overread allowed size end=" + m, paramParcel);
    }
    return new LoyaltyPointsBalance(k, j, str2, d, str1, l, i);
  }
  
  public LoyaltyPointsBalance[] a(int paramInt)
  {
    return new LoyaltyPointsBalance[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */