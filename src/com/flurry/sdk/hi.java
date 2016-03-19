package com.flurry.sdk;

import android.content.Context;
import android.telephony.TelephonyManager;

public class hi
{
  private static hi a;
  private static final String b = hi.class.getSimpleName();
  
  public static hi a()
  {
    try
    {
      if (a == null) {
        a = new hi();
      }
      hi localhi = a;
      return localhi;
    }
    finally {}
  }
  
  public static void b()
  {
    a = null;
  }
  
  public String c()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)hn.a().c().getSystemService("phone");
    if (localTelephonyManager == null) {
      return null;
    }
    return localTelephonyManager.getNetworkOperatorName();
  }
  
  public String d()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)hn.a().c().getSystemService("phone");
    if (localTelephonyManager == null) {
      return null;
    }
    return localTelephonyManager.getNetworkOperator();
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */