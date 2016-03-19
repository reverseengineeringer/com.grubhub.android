package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;

public class q
  extends t
{
  protected String a;
  protected String b;
  protected boolean c;
  protected int d;
  protected boolean e;
  protected int f;
  protected boolean g;
  protected boolean h;
  
  public q(v paramv)
  {
    super(paramv);
  }
  
  private static int a(String paramString)
  {
    paramString = paramString.toLowerCase();
    if ("verbose".equals(paramString)) {
      return 0;
    }
    if ("info".equals(paramString)) {
      return 1;
    }
    if ("warning".equals(paramString)) {
      return 2;
    }
    if ("error".equals(paramString)) {
      return 3;
    }
    return -1;
  }
  
  public String a()
  {
    zzia();
    return a;
  }
  
  void a(b paramb)
  {
    zzaT("Loading global XML config values");
    String str;
    if (paramb.a())
    {
      str = paramb.b();
      b = str;
      zzb("XML config - app name", str);
    }
    if (paramb.c())
    {
      str = paramb.d();
      a = str;
      zzb("XML config - app version", str);
    }
    int i;
    if (paramb.e())
    {
      i = a(paramb.f());
      if (i >= 0)
      {
        d = i;
        zza("XML config - log level", Integer.valueOf(i));
      }
    }
    if (paramb.g())
    {
      i = paramb.h();
      f = i;
      e = true;
      zzb("XML config - dispatch period (sec)", Integer.valueOf(i));
    }
    if (paramb.i())
    {
      boolean bool = paramb.j();
      h = bool;
      g = true;
      zzb("XML config - dry run", Boolean.valueOf(bool));
    }
  }
  
  public String b()
  {
    zzia();
    return b;
  }
  
  public boolean c()
  {
    zzia();
    return c;
  }
  
  public int d()
  {
    zzia();
    return d;
  }
  
  public boolean e()
  {
    zzia();
    return e;
  }
  
  public int f()
  {
    zzia();
    return f;
  }
  
  public boolean g()
  {
    zzia();
    return g;
  }
  
  public boolean h()
  {
    zzia();
    return h;
  }
  
  protected void i()
  {
    Object localObject1 = getContext();
    try
    {
      localObject1 = ((Context)localObject1).getPackageManager().getApplicationInfo(((Context)localObject1).getPackageName(), 129);
      if (localObject1 == null)
      {
        zzaW("Couldn't get ApplicationInfo to load global config");
        return;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Object localObject2;
      do
      {
        int i;
        do
        {
          do
          {
            for (;;)
            {
              zzd("PackageManager doesn't know about the app package", localNameNotFoundException);
              localObject2 = null;
            }
            localObject2 = metaData;
          } while (localObject2 == null);
          i = ((Bundle)localObject2).getInt("com.google.android.gms.analytics.globalConfigResource");
        } while (i <= 0);
        localObject2 = (b)new at(zzhM()).a(i);
      } while (localObject2 == null);
      a((b)localObject2);
    }
  }
  
  protected void zzhn()
  {
    i();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */