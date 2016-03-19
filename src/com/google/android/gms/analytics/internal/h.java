package com.google.android.gms.analytics.internal;

import android.util.Log;
import com.google.android.gms.analytics.l;

@Deprecated
public class h
{
  private static volatile l a;
  
  static
  {
    a(new al());
  }
  
  public static l a()
  {
    return a;
  }
  
  public static void a(l paraml)
  {
    a = paraml;
  }
  
  public static void a(String paramString)
  {
    Object localObject = i.a();
    if (localObject != null) {
      ((i)localObject).zzaV(paramString);
    }
    for (;;)
    {
      localObject = a;
      if (localObject != null) {
        ((l)localObject).b(paramString);
      }
      return;
      if (a(1)) {
        Log.i((String)ar.c.a(), paramString);
      }
    }
  }
  
  public static void a(String paramString, Object paramObject)
  {
    i locali = i.a();
    if (locali != null) {
      locali.zze(paramString, paramObject);
    }
    while (!a(3))
    {
      paramObject = a;
      if (paramObject != null) {
        ((l)paramObject).d(paramString);
      }
      return;
    }
    if (paramObject != null) {}
    for (paramObject = paramString + ":" + paramObject;; paramObject = paramString)
    {
      Log.e((String)ar.c.a(), (String)paramObject);
      break;
    }
  }
  
  public static boolean a(int paramInt)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (a() != null)
    {
      bool1 = bool2;
      if (a().a() <= paramInt) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public static void b(String paramString)
  {
    Object localObject = i.a();
    if (localObject != null) {
      ((i)localObject).zzaT(paramString);
    }
    for (;;)
    {
      localObject = a;
      if (localObject != null) {
        ((l)localObject).a(paramString);
      }
      return;
      if (a(0)) {
        Log.v((String)ar.c.a(), paramString);
      }
    }
  }
  
  public static void c(String paramString)
  {
    Object localObject = i.a();
    if (localObject != null) {
      ((i)localObject).zzaW(paramString);
    }
    for (;;)
    {
      localObject = a;
      if (localObject != null) {
        ((l)localObject).c(paramString);
      }
      return;
      if (a(2)) {
        Log.w((String)ar.c.a(), paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */