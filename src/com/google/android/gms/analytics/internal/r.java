package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.AnalyticsReceiver;
import com.google.android.gms.analytics.a;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bs;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;

public class r
  extends t
{
  private final ad a;
  
  public r(v paramv, w paramw)
  {
    super(paramv);
    aq.a(paramw);
    a = paramw.j(paramv);
  }
  
  public long a(x paramx)
  {
    zzia();
    aq.a(paramx);
    zzhO();
    long l = a.a(paramx, true);
    if (l == 0L) {
      a.a(paramx);
    }
    return l;
  }
  
  public void a()
  {
    a.a();
  }
  
  public void a(final ap paramap)
  {
    zzia();
    zzhS().a(new Runnable()
    {
      public void run()
      {
        r.a(r.this).a(paramap);
      }
    });
  }
  
  public void a(final c paramc)
  {
    aq.a(paramc);
    zzia();
    zzb("Hit delivery requested", paramc);
    zzhS().a(new Runnable()
    {
      public void run()
      {
        r.a(r.this).a(paramc);
      }
    });
  }
  
  public void a(final String paramString, final Runnable paramRunnable)
  {
    aq.a(paramString, "campaign param can't be empty");
    zzhS().a(new Runnable()
    {
      public void run()
      {
        r.a(r.this).a(paramString);
        if (paramRunnable != null) {
          paramRunnable.run();
        }
      }
    });
  }
  
  public void a(final boolean paramBoolean)
  {
    zza("Network connectivity status changed", Boolean.valueOf(paramBoolean));
    zzhS().a(new Runnable()
    {
      public void run()
      {
        r.a(r.this).a(paramBoolean);
      }
    });
  }
  
  public void b()
  {
    zzia();
    Context localContext = getContext();
    if ((AnalyticsReceiver.a(localContext)) && (a.a(localContext)))
    {
      Intent localIntent = new Intent(localContext, a.class);
      localIntent.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
      localContext.startService(localIntent);
      return;
    }
    a(null);
  }
  
  public boolean c()
  {
    zzia();
    Future localFuture = zzhS().a(new Callable()
    {
      public Void a()
        throws Exception
      {
        r.a(r.this).i();
        return null;
      }
    });
    try
    {
      localFuture.get();
      return true;
    }
    catch (InterruptedException localInterruptedException)
    {
      zzd("syncDispatchLocalHits interrupted", localInterruptedException);
      return false;
    }
    catch (ExecutionException localExecutionException)
    {
      zze("syncDispatchLocalHits failed", localExecutionException);
    }
    return false;
  }
  
  public void d()
  {
    zzia();
    bs.d();
    a.e();
  }
  
  public void e()
  {
    zzaT("Radio powered up");
    b();
  }
  
  void f()
  {
    zzhO();
    a.d();
  }
  
  void g()
  {
    zzhO();
    a.c();
  }
  
  protected void zzhn()
  {
    a.zza();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */