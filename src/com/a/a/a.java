package com.a.a;

import android.app.Activity;
import android.os.AsyncTask;
import android.util.Log;
import com.a.d;
import java.util.concurrent.TimeoutException;

public abstract class a
  extends AsyncTask<Void, Void, d>
{
  protected Activity a;
  protected d b;
  protected b c;
  protected c d;
  protected g e;
  protected Exception f;
  protected boolean g;
  private long h;
  
  public a(Activity paramActivity, c paramc, d paramd, b paramb, long paramLong)
  {
    a = paramActivity;
    b = paramd;
    d = paramc;
    c = paramb;
    if (paramLong < 1000L)
    {
      a(5000L);
      return;
    }
    a(paramLong);
  }
  
  protected d a(Void... paramVarArgs)
  {
    a("Starting runner...", new Object[0]);
    if (!g) {
      a();
    }
    return b;
  }
  
  protected abstract void a();
  
  public void a(long paramLong)
  {
    h = paramLong;
  }
  
  protected void a(g paramg, Exception paramException)
  {
    a("end process:" + paramg, new Object[0]);
    g = true;
    if (paramg != null)
    {
      b.a(c, paramg);
      e = paramg;
      f = paramException;
    }
    try
    {
      notifyAll();
      return;
    }
    finally {}
  }
  
  protected void a(d paramd)
  {
    a("Post Execute...", new Object[0]);
    d();
  }
  
  void a(String paramString, Object... paramVarArgs)
  {
    Log.v(getClass().getSimpleName(), "[" + c + "]" + String.format(paramString, paramVarArgs));
  }
  
  public b b()
  {
    return c;
  }
  
  public boolean c()
  {
    return g;
  }
  
  void d()
  {
    a("Notifying listener...", new Object[0]);
    if (d != null)
    {
      if (e != null) {
        break label46;
      }
      d.b(c);
    }
    for (;;)
    {
      label46:
      try
      {
        notifyAll();
        return;
      }
      finally {}
      d.a(c, e, f);
    }
  }
  
  public void e()
  {
    if (!g)
    {
      a("Timed out. Cancelling...", new Object[0]);
      a(g.TIMEOUT, new TimeoutException("Timed out."));
      g = true;
      cancel(true);
      d();
      return;
    }
    a("No need to timeout, already finished", new Object[0]);
  }
  
  public long f()
  {
    return h;
  }
  
  protected void onPreExecute()
  {
    a("Pre Execute...", new Object[0]);
    if (d != null) {
      d.a(c);
    }
    g = false;
  }
}

/* Location:
 * Qualified Name:     com.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */