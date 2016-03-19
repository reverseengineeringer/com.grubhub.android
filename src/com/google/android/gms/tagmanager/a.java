package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.d.cs;
import com.google.android.gms.d.cw;
import com.google.android.gms.d.i;
import com.google.android.gms.d.l;
import com.google.android.gms.d.m;
import com.google.android.gms.d.o;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public class a
{
  private final Context a;
  private final String b;
  private final h c;
  private cp d;
  private Map<String, b> e = new HashMap();
  private Map<String, c> f = new HashMap();
  private volatile long g;
  private volatile String h = "";
  
  a(Context paramContext, h paramh, String paramString, long paramLong, cs paramcs)
  {
    a = paramContext;
    c = paramh;
    b = paramString;
    g = paramLong;
    a(paramcs);
  }
  
  a(Context paramContext, h paramh, String paramString, long paramLong, m paramm)
  {
    a = paramContext;
    c = paramh;
    b = paramString;
    g = paramLong;
    a(b);
    if (a != null) {
      a(a);
    }
  }
  
  private void a(cs paramcs)
  {
    h = paramcs.c();
    y localy = e(h);
    a(new cp(a, paramcs, c, new d(this, null), new e(this, null), localy));
    if (a("_gtm.loadEventEnabled")) {
      c.a("gtm.load", h.a(new Object[] { "gtm.id", b }));
    }
  }
  
  private void a(i parami)
  {
    if (parami == null) {
      throw new NullPointerException();
    }
    try
    {
      cs localcs = com.google.android.gms.d.cp.a(parami);
      a(localcs);
      return;
    }
    catch (cw localcw)
    {
      ba.a("Not loading resource: " + parami + " because it is invalid: " + localcw.toString());
    }
  }
  
  private void a(cp paramcp)
  {
    try
    {
      d = paramcp;
      return;
    }
    finally
    {
      paramcp = finally;
      throw paramcp;
    }
  }
  
  private void a(l[] paramArrayOfl)
  {
    ArrayList localArrayList = new ArrayList();
    int j = paramArrayOfl.length;
    int i = 0;
    while (i < j)
    {
      localArrayList.add(paramArrayOfl[i]);
      i += 1;
    }
    e().a(localArrayList);
  }
  
  private cp e()
  {
    try
    {
      cp localcp = d;
      return localcp;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public long a()
  {
    return g;
  }
  
  public boolean a(String paramString)
  {
    cp localcp = e();
    if (localcp == null)
    {
      ba.a("getBoolean called for closed container.");
      return dm.c().booleanValue();
    }
    try
    {
      boolean bool = dm.d((o)localcp.b(paramString).a()).booleanValue();
      return bool;
    }
    catch (Exception paramString)
    {
      ba.a("Calling getBoolean() threw an exception: " + paramString.getMessage() + " Returning default value.");
    }
    return dm.c().booleanValue();
  }
  
  b b(String paramString)
  {
    synchronized (e)
    {
      paramString = (b)e.get(paramString);
      return paramString;
    }
  }
  
  public boolean b()
  {
    return a() == 0L;
  }
  
  c c(String paramString)
  {
    synchronized (f)
    {
      paramString = (c)f.get(paramString);
      return paramString;
    }
  }
  
  String c()
  {
    return h;
  }
  
  void d()
  {
    d = null;
  }
  
  void d(String paramString)
  {
    e().a(paramString);
  }
  
  y e(String paramString)
  {
    if (by.a().b().equals(bz.zzaMK)) {}
    return new bh();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */