package com.google.android.gms.common.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import com.google.android.gms.common.stats.b;
import java.util.HashSet;
import java.util.Set;

final class ac
{
  private final ad b;
  private final Set<ServiceConnection> c;
  private int d;
  private boolean e;
  private IBinder f;
  private final ab g;
  private ComponentName h;
  
  public ac(aa paramaa, ab paramab)
  {
    g = paramab;
    b = new ad(this);
    c = new HashSet();
    d = 2;
  }
  
  public void a(ServiceConnection paramServiceConnection, String paramString)
  {
    aa.c(a).a(aa.b(a), paramServiceConnection, paramString, g.a());
    c.add(paramServiceConnection);
  }
  
  public void a(String paramString)
  {
    e = aa.c(a).a(aa.b(a), paramString, g.a(), b, 129);
    if (e)
    {
      d = 3;
      return;
    }
    try
    {
      aa.c(a).a(aa.b(a), b);
      return;
    }
    catch (IllegalArgumentException paramString) {}
  }
  
  public boolean a()
  {
    return e;
  }
  
  public boolean a(ServiceConnection paramServiceConnection)
  {
    return c.contains(paramServiceConnection);
  }
  
  public int b()
  {
    return d;
  }
  
  public void b(ServiceConnection paramServiceConnection, String paramString)
  {
    aa.c(a).b(aa.b(a), paramServiceConnection);
    c.remove(paramServiceConnection);
  }
  
  public void b(String paramString)
  {
    aa.c(a).a(aa.b(a), b);
    e = false;
    d = 2;
  }
  
  public boolean c()
  {
    return c.isEmpty();
  }
  
  public IBinder d()
  {
    return f;
  }
  
  public ComponentName e()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */