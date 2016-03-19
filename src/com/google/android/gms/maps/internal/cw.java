package com.google.android.gms.maps.internal;

import android.content.Context;
import android.os.Build.VERSION;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.c.j;
import com.google.android.gms.common.c;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.maps.model.f;

public class cw
{
  private static Context a;
  private static ak b;
  
  public static ak a(Context paramContext)
    throws c
  {
    aq.a(paramContext);
    if (b != null) {
      return b;
    }
    b(paramContext);
    b = c(paramContext);
    try
    {
      b.a(j.a(d(paramContext).getResources()), e.a);
      return b;
    }
    catch (RemoteException paramContext)
    {
      throw new f(paramContext);
    }
  }
  
  private static <T> T a(Class<?> paramClass)
  {
    try
    {
      Object localObject = paramClass.newInstance();
      return (T)localObject;
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new IllegalStateException("Unable to instantiate the dynamic class " + paramClass.getName());
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new IllegalStateException("Unable to call the default constructor of " + paramClass.getName());
    }
  }
  
  private static <T> T a(ClassLoader paramClassLoader, String paramString)
  {
    try
    {
      paramClassLoader = a(((ClassLoader)aq.a(paramClassLoader)).loadClass(paramString));
      return paramClassLoader;
    }
    catch (ClassNotFoundException paramClassLoader)
    {
      throw new IllegalStateException("Unable to find dynamic class " + paramString);
    }
  }
  
  public static boolean a()
  {
    return false;
  }
  
  private static Class<?> b()
  {
    try
    {
      if (Build.VERSION.SDK_INT < 15) {
        return Class.forName("com.google.android.gms.maps.internal.CreatorImplGmm6");
      }
      Class localClass = Class.forName("com.google.android.gms.maps.internal.CreatorImpl");
      return localClass;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new RuntimeException(localClassNotFoundException);
    }
  }
  
  private static void b(Context paramContext)
    throws c
  {
    int i = e.a(paramContext);
    switch (i)
    {
    default: 
      throw new c(i);
    }
  }
  
  private static ak c(Context paramContext)
  {
    if (a())
    {
      Log.i(cw.class.getSimpleName(), "Making Creator statically");
      return (ak)a(b());
    }
    Log.i(cw.class.getSimpleName(), "Making Creator dynamically");
    return al.a((IBinder)a(d(paramContext).getClassLoader(), "com.google.android.gms.maps.internal.CreatorImpl"));
  }
  
  private static Context d(Context paramContext)
  {
    if (a == null) {
      if (!a()) {
        break label23;
      }
    }
    label23:
    for (a = paramContext.getApplicationContext();; a = e.d(paramContext)) {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */