package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LoyaltyPoints
  implements SafeParcelable
{
  public static final Parcelable.Creator<LoyaltyPoints> CREATOR = new f();
  String a;
  LoyaltyPointsBalance b;
  String c;
  TimeInterval d;
  private final int e;
  
  LoyaltyPoints()
  {
    e = 1;
  }
  
  LoyaltyPoints(int paramInt, String paramString1, LoyaltyPointsBalance paramLoyaltyPointsBalance, String paramString2, TimeInterval paramTimeInterval)
  {
    e = paramInt;
    a = paramString1;
    b = paramLoyaltyPointsBalance;
    c = paramString2;
    d = paramTimeInterval;
  }
  
  public int a()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    f.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.LoyaltyPoints
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */