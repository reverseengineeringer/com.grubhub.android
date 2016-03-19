package com.paypal.android.sdk;

import android.text.TextUtils;

public abstract class dy
  extends dz
{
  static
  {
    dy.class.getSimpleName();
  }
  
  public dy(dx paramdx, ea paramea, ef paramef, String paramString)
  {
    this(paramdx, paramea, paramef, paramString, null);
  }
  
  public dy(dx paramdx, ea paramea, ef paramef, String paramString1, String paramString2)
  {
    super(paramdx, paramea, paramef, paramString2);
    if (!TextUtils.isEmpty(paramString1)) {
      a("Authorization", paramString1);
    }
    a("User-Agent", f().b());
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */