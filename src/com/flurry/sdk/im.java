package com.flurry.sdk;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class im<ReportInfo extends il>
{
  private static final String a = im.class.getSimpleName();
  private final int b = Integer.MAX_VALUE;
  private final hu<List<ReportInfo>> c;
  private final List<ReportInfo> d = new ArrayList();
  private boolean e;
  private int f;
  private long g;
  private final Runnable h = new jp()
  {
    public void a()
    {
      im.a(im.this);
    }
  };
  private final hw<hg> i = new hw()
  {
    public void a(hg paramAnonymoushg)
    {
      if (a) {
        im.a(im.this);
      }
    }
  };
  
  public im()
  {
    hx.a().a("com.flurry.android.sdk.NetworkStateEvent", i);
    c = a();
    g = 10000L;
    f = -1;
    hn.a().b(new jp()
    {
      public void a()
      {
        im.a(im.this, im.b(im.this));
        im.a(im.this);
      }
    });
  }
  
  private void a(List<ReportInfo> paramList)
  {
    try
    {
      jn.b();
      List localList = (List)c.a();
      if (localList != null) {
        paramList.addAll(localList);
      }
      return;
    }
    finally {}
  }
  
  private void b()
  {
    for (;;)
    {
      try
      {
        boolean bool = e;
        if (bool) {
          return;
        }
        if (f >= 0)
        {
          ib.a(3, a, "Transmit is in progress");
          continue;
        }
        h();
      }
      finally {}
      if (d.isEmpty())
      {
        g = 10000L;
        f = -1;
      }
      else
      {
        f = 0;
        hn.a().b(new jp()
        {
          public void a()
          {
            im.c(im.this);
          }
        });
      }
    }
  }
  
  private void b(List<ReportInfo> paramList)
  {
    try
    {
      jn.b();
      paramList = new ArrayList(paramList);
      c.a(paramList);
      return;
    }
    finally
    {
      paramList = finally;
      throw paramList;
    }
  }
  
  private void f()
  {
    label101:
    for (;;)
    {
      try
      {
        jn.b();
        Object localObject1;
        if (hh.a().c())
        {
          if (f >= d.size()) {
            break label101;
          }
          localObject1 = d;
          int j = f;
          f = (j + 1);
          localObject1 = (il)((List)localObject1).get(j);
          if (((il)localObject1).e()) {
            continue;
          }
          if (localObject1 == null) {
            g();
          }
        }
        else
        {
          ib.a(3, a, "Network is not available, aborting transmission");
          break label101;
        }
        a((il)localObject1);
        continue;
        Object localObject3 = null;
      }
      finally {}
    }
  }
  
  private void g()
  {
    for (;;)
    {
      try
      {
        h();
        b(d);
        if (e)
        {
          ib.a(3, a, "Reporter paused");
          g = 10000L;
          f = -1;
          return;
        }
        if (d.isEmpty())
        {
          ib.a(3, a, "All reports sent successfully");
          g = 10000L;
          continue;
        }
        g <<= 1;
      }
      finally {}
      ib.a(3, a, "One or more reports failed to send, backing off: " + g + "ms");
      hn.a().b(h, g);
    }
  }
  
  private void h()
  {
    try
    {
      Iterator localIterator = d.iterator();
      while (localIterator.hasNext())
      {
        il localil = (il)localIterator.next();
        if ((localil.e()) || (localil.f() >= Integer.MAX_VALUE) || (System.currentTimeMillis() > localil.d())) {
          localIterator.remove();
        }
      }
    }
    finally {}
  }
  
  private void i()
  {
    hx.a().b("com.flurry.android.sdk.NetworkStateEvent", i);
  }
  
  protected abstract hu<List<ReportInfo>> a();
  
  protected abstract void a(ReportInfo paramReportInfo);
  
  public void b(ReportInfo paramReportInfo)
  {
    if (paramReportInfo == null) {}
    for (;;)
    {
      return;
      try
      {
        d.add(paramReportInfo);
        hn.a().b(new jp()
        {
          public void a()
          {
            im.a(im.this);
          }
        });
      }
      finally {}
    }
  }
  
  public void c()
  {
    hn.a().c(h);
    i();
  }
  
  protected void c(ReportInfo paramReportInfo)
  {
    try
    {
      paramReportInfo.a(true);
      hn.a().b(new jp()
      {
        public void a()
        {
          im.c(im.this);
        }
      });
      return;
    }
    finally
    {
      paramReportInfo = finally;
      throw paramReportInfo;
    }
  }
  
  public void d()
  {
    e = true;
  }
  
  protected void d(ReportInfo paramReportInfo)
  {
    try
    {
      paramReportInfo.i();
      hn.a().b(new jp()
      {
        public void a()
        {
          im.c(im.this);
        }
      });
      return;
    }
    finally
    {
      paramReportInfo = finally;
      throw paramReportInfo;
    }
  }
  
  public void e()
  {
    e = false;
    hn.a().b(new jp()
    {
      public void a()
      {
        im.a(im.this);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.im
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */