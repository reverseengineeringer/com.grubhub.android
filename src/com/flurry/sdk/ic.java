package com.flurry.sdk;

import android.os.Build.VERSION;

public final class ic
{
  private final Class<? extends ie> a;
  private final int b;
  
  public ic(Class<? extends ie> paramClass, int paramInt)
  {
    a = paramClass;
    b = paramInt;
  }
  
  public Class<? extends ie> a()
  {
    return a;
  }
  
  public boolean b()
  {
    return (a != null) && (Build.VERSION.SDK_INT >= b);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */