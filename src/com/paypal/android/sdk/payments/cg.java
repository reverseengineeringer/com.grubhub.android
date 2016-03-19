package com.paypal.android.sdk.payments;

import android.os.Build;
import android.os.Build.VERSION;
import com.paypal.android.sdk.ef;
import com.paypal.android.sdk.ft;

final class cg
  implements ef
{
  public final String a()
  {
    return "2.9.10";
  }
  
  public final String b()
  {
    String str1 = Build.VERSION.RELEASE;
    String str2 = Build.MANUFACTURER + " " + Build.MODEL;
    StringBuilder localStringBuilder = new StringBuilder();
    if (ft.c("touch;")) {
      localStringBuilder.append("touch; ");
    }
    return String.format("PayPalSDK/%s %s (%s %s; %s; %s)", new Object[] { "PayPal-Android-SDK", "2.9.10", "Android", str1, str2, localStringBuilder.toString().trim() });
  }
  
  public final String c()
  {
    return "1d3523bb5c312838069f6196f54ae1d530d80463";
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */