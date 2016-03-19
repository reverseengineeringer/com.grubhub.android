package com.google.android.gms.c;

import android.content.Context;
import android.os.IBinder;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.aq;

public abstract class l<T>
{
  private final String a;
  private T b;
  
  protected l(String paramString)
  {
    a = paramString;
  }
  
  protected final T a(Context paramContext)
    throws m
  {
    if (b == null)
    {
      aq.a(paramContext);
      paramContext = e.d(paramContext);
      if (paramContext == null) {
        throw new m("Could not get remote context.");
      }
      paramContext = paramContext.getClassLoader();
    }
    try
    {
      b = a((IBinder)paramContext.loadClass(a).newInstance());
      return (T)b;
    }
    catch (ClassNotFoundException paramContext)
    {
      throw new m("Could not load creator class.", paramContext);
    }
    catch (InstantiationException paramContext)
    {
      throw new m("Could not instantiate creator.", paramContext);
    }
    catch (IllegalAccessException paramContext)
    {
      throw new m("Could not access creator.", paramContext);
    }
  }
  
  protected abstract T a(IBinder paramIBinder);
}

/* Location:
 * Qualified Name:     com.google.android.gms.c.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */