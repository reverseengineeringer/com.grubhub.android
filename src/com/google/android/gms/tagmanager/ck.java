package com.google.android.gms.tagmanager;

import android.content.Context;
import com.google.android.gms.d.m;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

class ck
  implements el
{
  private final String a;
  private final Context b;
  private final ScheduledExecutorService c;
  private final cl d;
  private ScheduledFuture<?> e;
  private boolean f;
  private ep g;
  private String h;
  private ay<m> i;
  
  public ck(Context paramContext, String paramString, ep paramep)
  {
    this(paramContext, paramString, paramep, null, null);
  }
  
  ck(Context paramContext, String paramString, ep paramep, cm paramcm, cl paramcl)
  {
    g = paramep;
    b = paramContext;
    a = paramString;
    paramContext = paramcm;
    if (paramcm == null) {
      paramContext = new cm()
      {
        public ScheduledExecutorService a()
        {
          return Executors.newSingleThreadScheduledExecutor();
        }
      };
    }
    c = paramContext.a();
    if (paramcl == null)
    {
      d = new cl()
      {
        public cj a(ep paramAnonymousep)
        {
          return new cj(ck.a(ck.this), ck.b(ck.this), paramAnonymousep);
        }
      };
      return;
    }
    d = paramcl;
  }
  
  private void a()
  {
    try
    {
      if (f) {
        throw new IllegalStateException("called method after closed");
      }
    }
    finally {}
  }
  
  private cj b(String paramString)
  {
    cj localcj = d.a(g);
    localcj.a(i);
    localcj.a(h);
    localcj.b(paramString);
    return localcj;
  }
  
  public void a(long paramLong, String paramString)
  {
    try
    {
      ba.e("loadAfterDelay: containerId=" + a + " delay=" + paramLong);
      a();
      if (i == null) {
        throw new IllegalStateException("callback must be set before loadAfterDelay() is called.");
      }
    }
    finally {}
    if (e != null) {
      e.cancel(false);
    }
    e = c.schedule(b(paramString), paramLong, TimeUnit.MILLISECONDS);
  }
  
  public void a(ay<m> paramay)
  {
    try
    {
      a();
      i = paramay;
      return;
    }
    finally
    {
      paramay = finally;
      throw paramay;
    }
  }
  
  public void a(String paramString)
  {
    try
    {
      a();
      h = paramString;
      return;
    }
    finally
    {
      paramString = finally;
      throw paramString;
    }
  }
  
  public void b()
  {
    try
    {
      a();
      if (e != null) {
        e.cancel(false);
      }
      c.shutdown();
      f = true;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */