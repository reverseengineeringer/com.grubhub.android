package com.google.android.gms.wallet.wobs;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class TimeInterval
  implements SafeParcelable
{
  public static final Parcelable.Creator<TimeInterval> CREATOR = new h();
  long a;
  long b;
  private final int c;
  
  TimeInterval()
  {
    c = 1;
  }
  
  TimeInterval(int paramInt, long paramLong1, long paramLong2)
  {
    c = paramInt;
    a = paramLong1;
    b = paramLong2;
  }
  
  public int a()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.wobs.TimeInterval
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */