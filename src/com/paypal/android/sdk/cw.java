package com.paypal.android.sdk;

import android.os.Parcel;

public abstract class cw
{
  protected String a;
  protected long b;
  
  public cw() {}
  
  public cw(Parcel paramParcel)
  {
    a = paramParcel.readString();
    b = paramParcel.readLong();
  }
  
  public final String a()
  {
    return a;
  }
  
  public final boolean b()
  {
    return b > System.currentTimeMillis();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */