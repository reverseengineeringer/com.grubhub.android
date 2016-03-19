package com.paypal.android.sdk;

import android.os.Build;
import android.os.Build.VERSION;
import java.util.Locale;

public class ah
{
  private static final String a = ah.class.getSimpleName();
  private static String b = null;
  
  public static String a(ef paramef)
  {
    if (b == null)
    {
      String str = Locale.getDefault().toString().replace("_", "-");
      StringBuilder localStringBuilder = new StringBuilder("Mozilla/5.0 (Linux; U; ");
      new ft();
      b = new StringBuilder("Android ").append(Build.VERSION.RELEASE).toString() + "; " + str + "; " + Build.MODEL + " " + Build.DISPLAY + ") mpl/" + paramef.a();
      new StringBuilder("UserAgent: ").append(b);
    }
    return b;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */