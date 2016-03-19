package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.common.internal.safeparcel.c;

public class f
  implements Parcelable.Creator<LoyaltyPoints>
{
  static void a(LoyaltyPoints paramLoyaltyPoints, Parcel paramParcel, int paramInt)
  {
    int i = c.a(paramParcel);
    c.a(paramParcel, 1, paramLoyaltyPoints.a());
    c.a(paramParcel, 2, a, false);
    c.a(paramParcel, 3, b, paramInt, false);
    c.a(paramParcel, 4, c, false);
    c.a(paramParcel, 5, d, paramInt, false);
    c.a(paramParcel, i);
  }
  
  public LoyaltyPoints a(Parcel paramParcel)
  {
    TimeInterval localTimeInterval = null;
    int j = a.b(paramParcel);
    int i = 0;
    String str1 = null;
    LoyaltyPointsBalance localLoyaltyPointsBalance = null;
    String str2 = null;
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
        str2 = a.j(paramParcel, k);
        break;
      case 3: 
        localLoyaltyPointsBalance = (LoyaltyPointsBalance)a.a(paramParcel, k, LoyaltyPointsBalance.CREATOR);
        break;
      case 4: 
        str1 = a.j(paramParcel, k);
        break;
      case 5: 
        localTimeInterval = (TimeInterval)a.a(paramParcel, k, TimeInterval.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new b("Overread allowed size end=" + j, paramParcel);
    }
    return new LoyaltyPoints(i, str2, localLoyaltyPointsBalance, str1, localTimeInterval);
  }
  
  public LoyaltyPoints[] a(int paramInt)
  {
    return new LoyaltyPoints[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */