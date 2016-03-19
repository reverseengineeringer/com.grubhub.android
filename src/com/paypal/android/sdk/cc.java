package com.paypal.android.sdk;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import java.math.BigDecimal;
import java.util.Currency;

public class cc
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR;
  private BigDecimal a;
  private Currency b;
  private long c;
  
  static
  {
    if (!cc.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      d = bool;
      CREATOR = new ex();
      return;
    }
  }
  
  public cc(Parcel paramParcel)
  {
    c = paramParcel.readLong();
    a = new BigDecimal(paramParcel.readString());
    try
    {
      b = Currency.getInstance(paramParcel.readString());
      return;
    }
    catch (IllegalArgumentException paramParcel)
    {
      Log.e("MoneySpec", "Exception reading currency code from parcel, reset to default");
      throw new NullPointerException();
    }
  }
  
  public final BigDecimal a()
  {
    return a;
  }
  
  public final Currency b()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((!d) && (!(paramObject instanceof cc))) {
      throw new AssertionError();
    }
    paramObject = (cc)paramObject;
    return (a == a) && (b.equals(b));
  }
  
  public String toString()
  {
    throw new NullPointerException();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeLong(c);
    paramParcel.writeString(a.toString());
    paramParcel.writeString(b.getCurrencyCode());
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */