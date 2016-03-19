package com.paypal.android.sdk;

import android.content.Context;
import android.content.Intent;
import java.util.Collection;

public final class v
  extends x
{
  private static final Collection a = new w();
  
  public static boolean a(String paramString)
  {
    return !a.contains(paramString);
  }
  
  public final Intent a()
  {
    return a("com.paypal.android.lib.authenticator.activity.v1.TouchActivity", "com.paypal.android.lib.authenticator.activity.v1.TouchActivity");
  }
  
  public final boolean a(Context paramContext, boolean paramBoolean)
  {
    boolean bool = a(paramContext, "com.paypal.android.lib.authenticator.activity.v1.TouchActivity", "com.paypal.android.lib.authenticator.activity.v1.TouchActivity");
    return (b(paramContext, paramBoolean)) && (bool);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */