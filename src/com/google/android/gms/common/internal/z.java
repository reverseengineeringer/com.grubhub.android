package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.ServiceConnection;

public abstract class z
{
  private static final Object a = new Object();
  private static z b;
  
  public static z a(Context paramContext)
  {
    synchronized (a)
    {
      if (b == null) {
        b = new aa(paramContext.getApplicationContext());
      }
      return b;
    }
  }
  
  public abstract boolean a(String paramString1, ServiceConnection paramServiceConnection, String paramString2);
  
  public abstract void b(String paramString1, ServiceConnection paramServiceConnection, String paramString2);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */