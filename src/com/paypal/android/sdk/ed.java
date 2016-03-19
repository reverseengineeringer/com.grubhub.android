package com.paypal.android.sdk;

import java.util.Locale;

public final class ed
  implements ez
{
  private static volatile ed a;
  
  public static ed a()
  {
    if (a == null) {}
    try
    {
      if (a == null) {
        a = new ed();
      }
      return a;
    }
    finally {}
  }
  
  public final String a(String paramString)
  {
    return paramString;
  }
  
  public final Locale b()
  {
    return Locale.getDefault();
  }
  
  public final g c()
  {
    return new g(Locale.getDefault().getCountry());
  }
  
  public final g d()
  {
    return c();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ed
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */