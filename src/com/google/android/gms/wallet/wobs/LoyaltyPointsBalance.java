package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class LoyaltyPointsBalance
  implements SafeParcelable
{
  public static final Parcelable.Creator<LoyaltyPointsBalance> CREATOR = new e();
  int a;
  String b;
  double c;
  String d;
  long e;
  int f;
  private final int g;
  
  LoyaltyPointsBalance()
  {
    g = 1;
    f = -1;
    a = -1;
    c = -1.0D;
  }
  
  LoyaltyPointsBalance(int paramInt1, int paramInt2, String paramString1, double paramDouble, String paramString2, long paramLong, int paramInt3)
  {
    g = paramInt1;
    a = paramInt2;
    b = paramString1;
    c = paramDouble;
    d = paramString2;
    e = paramLong;
    f = paramInt3;
  }
  
  public int a()
  {
    return g;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.LoyaltyPointsBalance
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */