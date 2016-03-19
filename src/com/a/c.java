package com.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import com.a.a.f;
import java.util.ArrayList;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.CancellationException;

public class c
  extends a
  implements com.a.a.c
{
  private d e;
  private g f;
  private Exception g;
  private ArrayList<com.a.a.a> h;
  
  public c(Activity paramActivity, h paramh, EnumSet<com.a.a.b> paramEnumSet)
  {
    super(paramActivity, paramh, paramEnumSet);
  }
  
  private void a(g paramg, Exception paramException)
  {
    c = true;
    if (paramg != null)
    {
      f = paramg;
      g = paramException;
    }
    if (a != null) {
      if (f == null)
      {
        a("Telling the listener we succeeded...", new Object[0]);
        a.b();
      }
    }
    for (;;)
    {
      try
      {
        notifyAll();
        c = true;
        return;
      }
      finally {}
      a("Telling the listener we had a bad error...", new Object[0]);
      a.a(f, g);
      break;
      a("No listener to notify", new Object[0]);
    }
  }
  
  private void c(com.a.a.b paramb)
  {
    com.a.a.a locala;
    if (h != null)
    {
      Iterator localIterator = h.iterator();
      do
      {
        if (!localIterator.hasNext()) {
          break;
        }
        locala = (com.a.a.a)localIterator.next();
      } while (!locala.b().equals(paramb));
    }
    for (;;)
    {
      if (locala != null)
      {
        a("Removing collector [%s]", new Object[] { locala.b() });
        h.remove(locala);
        return;
      }
      a("Collector not found [%s]", new Object[] { paramb });
      return;
      a("No collectors being held", new Object[0]);
      return;
      locala = null;
    }
  }
  
  private void d()
  {
    a("checking if we are done...", new Object[0]);
    if ((h != null) && (h.size() > 0))
    {
      Object localObject1 = new ArrayList();
      Object localObject2 = h.iterator();
      while (((Iterator)localObject2).hasNext())
      {
        com.a.a.a locala = (com.a.a.a)((Iterator)localObject2).next();
        if (locala.c()) {
          ((ArrayList)localObject1).add(locala);
        }
      }
      localObject1 = ((ArrayList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (com.a.a.a)((Iterator)localObject1).next();
        h.remove(localObject2);
      }
    }
    if ((e != null) && (e.c() != null) && ((h == null) || (h.size() == 0)))
    {
      a("All done, sending data...", new Object[0]);
      e();
      a(null, null);
      return;
    }
    a("[%s] collectors left", new Object[] { "" + h.size() });
  }
  
  private boolean d(com.a.a.b paramb)
  {
    if ((d != null) && (d.contains(paramb)))
    {
      e.a(paramb, com.a.a.g.MERCHANT_SKIPPED);
      return true;
    }
    return false;
  }
  
  @SuppressLint({"NewApi"})
  private void e()
  {
    Object localObject1 = new b();
    Object localObject2 = new d[1];
    localObject2[0] = e;
    if (Build.VERSION.SDK_INT > 10) {
      ((b)localObject1).executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, (Object[])localObject2);
    }
    for (;;)
    {
      a("Final Collection:", new Object[0]);
      localObject1 = e.e().keySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (String)((Iterator)localObject1).next();
        a("key:[%s] value:[%s]", new Object[] { localObject2, e.e().get(localObject2) });
      }
      ((b)localObject1).execute((Object[])localObject2);
    }
  }
  
  @SuppressLint({"NewApi"})
  protected Void a(String... paramVarArgs)
  {
    h = new ArrayList();
    e = new d(paramVarArgs[0], paramVarArgs[1], paramVarArgs[2]);
    long l;
    if (c())
    {
      l = b();
      paramVarArgs = new com.a.a.h(b, this, e, l);
      h.add(paramVarArgs);
      if (!d(com.a.a.b.GEO_LOCATION))
      {
        paramVarArgs = new f(b, this, e, l);
        h.add(paramVarArgs);
      }
      paramVarArgs = h.iterator();
    }
    for (;;)
    {
      if (!paramVarArgs.hasNext()) {
        break label213;
      }
      com.a.a.a locala = (com.a.a.a)paramVarArgs.next();
      a("Starting off " + locala.getClass().getName(), new Object[0]);
      if (Build.VERSION.SDK_INT > 10)
      {
        locala.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new Void[0]);
        continue;
        l = 5000L;
        break;
      }
      locala.execute(new Void[0]);
    }
    label213:
    a("Getting the quick data...", new Object[0]);
    paramVarArgs = new com.a.a.d(b, e);
    paramVarArgs.a();
    a("Got Required Info", new Object[0]);
    paramVarArgs.b();
    a("Got optional info...", new Object[0]);
    paramVarArgs.c();
    a("Got Device Cookie Info", new Object[0]);
    a("Done with quick data", new Object[0]);
    d();
    return null;
  }
  
  public void a(com.a.a.b paramb)
  {
    a("Long Collector starting:" + paramb, new Object[0]);
  }
  
  public void a(com.a.a.b paramb, com.a.a.g paramg, Exception paramException)
  {
    a("Removing collector[%s] due to error [%s]", new Object[] { paramb, paramg });
    c(paramb);
    if (com.a.a.b.WEB.equals(paramb))
    {
      c = true;
      f = g.RUNTIME_FAILURE;
      g = paramException;
      if (a != null) {
        a.a(f, g);
      }
      try
      {
        notifyAll();
        return;
      }
      finally {}
    }
    d();
  }
  
  public void b(com.a.a.b paramb)
  {
    a("Collector success [%s]", new Object[] { paramb });
    c(paramb);
    d();
  }
  
  public void onCancelled()
  {
    a("Called cancel..", new Object[0]);
    if ((!c) && (e != null) && (e.c() != null))
    {
      a("Cancelling each collector", new Object[0]);
      localIterator = h.iterator();
      while (localIterator.hasNext())
      {
        locala = (com.a.a.a)localIterator.next();
        if ((!locala.c()) && (!locala.isCancelled()))
        {
          e.a(locala.b(), com.a.a.g.MERCHANT_CANCELLED);
          a("Cancelling [" + locala.b() + "] collector...", new Object[0]);
          locala.cancel(true);
          a("Cancelled [" + locala.b() + "] collector.", new Object[0]);
        }
      }
      e();
      a(null, null);
    }
    while (c)
    {
      Iterator localIterator;
      com.a.a.a locala;
      return;
    }
    a(g.MERCHANT_CANCELLED, new CancellationException("Merchant Cancelled"));
  }
}

/* Location:
 * Qualified Name:     com.a.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */