package com.google.android.gms.analytics.internal;

import android.content.ComponentName;
import android.os.RemoteException;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.common.stats.b;
import java.util.Collections;
import java.util.List;

public class y
  extends t
{
  private final z a;
  private d b;
  private final am c;
  private n d;
  
  protected y(v paramv)
  {
    super(paramv);
    d = new n(paramv.d());
    a = new z(this);
    c = new am(paramv)
    {
      public void a()
      {
        y.b(y.this);
      }
    };
  }
  
  private void a(ComponentName paramComponentName)
  {
    zzhO();
    if (b != null)
    {
      b = null;
      zza("Disconnected from device AnalyticsService", paramComponentName);
      f();
    }
  }
  
  private void a(d paramd)
  {
    zzhO();
    b = paramd;
    d();
    zzhl().f();
  }
  
  private void d()
  {
    d.a();
    c.a(zzhR().v());
  }
  
  private void e()
  {
    zzhO();
    if (!a()) {
      return;
    }
    zzaT("Inactivity, disconnecting from device AnalyticsService");
    c();
  }
  
  private void f()
  {
    zzhl().d();
  }
  
  public boolean a()
  {
    zzhO();
    zzia();
    return b != null;
  }
  
  public boolean a(c paramc)
  {
    aq.a(paramc);
    zzhO();
    zzia();
    d locald = b;
    if (locald == null) {
      return false;
    }
    if (paramc.f()) {}
    for (String str = zzhR().o();; str = zzhR().p())
    {
      List localList = Collections.emptyList();
      try
      {
        locald.a(paramc.b(), paramc.d(), str, localList);
        d();
        return true;
      }
      catch (RemoteException paramc)
      {
        zzaT("Failed to send hits to AnalyticsService");
      }
    }
    return false;
  }
  
  public boolean b()
  {
    zzhO();
    zzia();
    if (b != null) {
      return true;
    }
    d locald = a.a();
    if (locald != null)
    {
      b = locald;
      d();
      return true;
    }
    return false;
  }
  
  public void c()
  {
    zzhO();
    zzia();
    try
    {
      b.a().a(getContext(), a);
      if (b != null)
      {
        b = null;
        f();
      }
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  protected void zzhn() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */