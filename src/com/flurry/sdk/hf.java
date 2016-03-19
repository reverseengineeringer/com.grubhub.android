package com.flurry.sdk;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.Looper;
import android.text.TextUtils;

public class hf
  implements jf.a
{
  private static hf a;
  private static final String b = hf.class.getSimpleName();
  private final int c = 3;
  private final long d = 10000L;
  private final long e = 90000L;
  private final long f = 0L;
  private boolean g;
  private Location h;
  private long i = 0L;
  private LocationManager j = (LocationManager)hn.a().c().getSystemService("location");
  private hf.a k = new hf.a(this);
  private Location l;
  private boolean m = false;
  private int n = 0;
  private hw<jh> o = new hw()
  {
    public void a(jh paramAnonymousjh)
    {
      if ((hf.a(hf.this) > 0L) && (hf.a(hf.this) < System.currentTimeMillis()))
      {
        ib.a(4, hf.f(), "No location received in 90 seconds , stopping LocationManager");
        hf.b(hf.this);
      }
    }
  };
  
  private hf()
  {
    je localje = je.a();
    g = ((Boolean)localje.a("ReportLocation")).booleanValue();
    localje.a("ReportLocation", this);
    ib.a(4, b, "initSettings, ReportLocation = " + g);
    h = ((Location)localje.a("ExplicitLocation"));
    localje.a("ExplicitLocation", this);
    ib.a(4, b, "initSettings, ExplicitLocation = " + h);
  }
  
  public static hf a()
  {
    try
    {
      if (a == null) {
        a = new hf();
      }
      hf localhf = a;
      return localhf;
    }
    finally {}
  }
  
  private void a(String paramString)
  {
    if (!TextUtils.isEmpty(paramString)) {
      j.requestLocationUpdates(paramString, 10000L, 0.0F, k, Looper.getMainLooper());
    }
  }
  
  private boolean a(Context paramContext)
  {
    return paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
  }
  
  private Location b(String paramString)
  {
    Location localLocation = null;
    if (!TextUtils.isEmpty(paramString)) {
      localLocation = j.getLastKnownLocation(paramString);
    }
    return localLocation;
  }
  
  public static void b()
  {
    if (a != null)
    {
      je.a().b("ReportLocation", a);
      je.a().b("ExplicitLocation", a);
    }
    a = null;
  }
  
  private boolean b(Context paramContext)
  {
    return paramContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") == 0;
  }
  
  private void g()
  {
    if (m) {}
    Context localContext;
    do
    {
      do
      {
        return;
      } while ((!g) || (h != null));
      localContext = hn.a().c();
    } while ((localContext.checkCallingOrSelfPermission("android.permission.ACCESS_FINE_LOCATION") != 0) && (localContext.checkCallingOrSelfPermission("android.permission.ACCESS_COARSE_LOCATION") != 0));
    n = 0;
    String str = null;
    if (a(localContext)) {
      str = i();
    }
    for (;;)
    {
      a(str);
      l = b(str);
      i = (System.currentTimeMillis() + 90000L);
      k();
      m = true;
      ib.a(4, b, "LocationProvider started");
      return;
      if (b(localContext)) {
        str = j();
      }
    }
  }
  
  private void h()
  {
    if (!m) {
      return;
    }
    j.removeUpdates(k);
    n = 0;
    i = 0L;
    l();
    m = false;
    ib.a(4, b, "LocationProvider stopped");
  }
  
  private String i()
  {
    return "passive";
  }
  
  private String j()
  {
    return "network";
  }
  
  private void k()
  {
    ib.a(4, b, "Register location timer");
    ji.a().a(o);
  }
  
  private void l()
  {
    ib.a(4, b, "Unregister location timer");
    ji.a().b(o);
  }
  
  public void a(String paramString, Object paramObject)
  {
    int i1 = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i1)
      {
      default: 
        ib.a(6, b, "LocationProvider internal error! Had to be LocationCriteria, ReportLocation or ExplicitLocation key.");
        return;
        if (paramString.equals("ReportLocation"))
        {
          i1 = 0;
          continue;
          if (paramString.equals("ExplicitLocation")) {
            i1 = 1;
          }
        }
        break;
      }
    }
    g = ((Boolean)paramObject).booleanValue();
    ib.a(4, b, "onSettingUpdate, ReportLocation = " + g);
    return;
    h = ((Location)paramObject);
    ib.a(4, b, "onSettingUpdate, ExplicitLocation = " + h);
  }
  
  public void c()
  {
    try
    {
      ib.a(4, b, "Location update requested");
      if (n < 3) {
        g();
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void d()
  {
    try
    {
      ib.a(4, b, "Stop update location requested");
      h();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public Location e()
  {
    Object localObject3 = null;
    Object localObject1 = null;
    if (h != null) {
      localObject1 = h;
    }
    Object localObject2;
    do
    {
      return (Location)localObject1;
      localObject2 = localObject3;
      if (!g) {
        break;
      }
      localObject2 = hn.a().c();
    } while ((!a((Context)localObject2)) && (!b((Context)localObject2)));
    if (a((Context)localObject2)) {
      localObject1 = i();
    }
    for (;;)
    {
      localObject2 = localObject3;
      if (localObject1 != null)
      {
        localObject1 = b((String)localObject1);
        if (localObject1 != null) {
          l = ((Location)localObject1);
        }
        localObject2 = l;
      }
      ib.a(4, b, "getLocation() = " + localObject2);
      return (Location)localObject2;
      if (b((Context)localObject2)) {
        localObject1 = j();
      } else {
        localObject1 = null;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */