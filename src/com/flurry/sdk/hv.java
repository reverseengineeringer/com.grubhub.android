package com.flurry.sdk;

import android.text.TextUtils;

public abstract class hv
{
  protected String f = "com.flurry.android.sdk.ReplaceMeWithAProperEventName";
  
  public hv(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Event must have a name!");
    }
    f = paramString;
  }
  
  public String a()
  {
    return f;
  }
  
  public void b()
  {
    hx.a().a(this);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */