package com.a;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.content.Context;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import com.a.a.b;
import java.util.EnumSet;

public final class f
{
  private String a;
  private String b;
  private h c;
  private Activity d;
  private a e;
  private EnumSet<b> f;
  
  public f(Activity paramActivity)
  {
    d = paramActivity;
  }
  
  private void a(g paramg, Exception paramException)
  {
    if (c != null) {
      c.a(paramg, paramException);
    }
  }
  
  private boolean a()
  {
    try
    {
      NetworkInfo localNetworkInfo = ((ConnectivityManager)d.getApplicationContext().getSystemService("connectivity")).getActiveNetworkInfo();
      if ((localNetworkInfo != null) && (localNetworkInfo.isConnectedOrConnecting())) {}
      for (boolean bool = true;; bool = false)
      {
        if (!bool) {
          a(g.NO_NETWORK, null);
        }
        return bool;
      }
      return false;
    }
    catch (Exception localException)
    {
      a(g.RUNTIME_FAILURE, localException);
    }
  }
  
  private boolean a(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 == null) || (!paramString1.matches("^https?://[\\w-]+(\\.[\\w-]+)+(/[^?]*)?$")))
    {
      a(g.INVALID_URL, null);
      return false;
    }
    if ((paramString2 == null) || (!paramString2.matches("^\\d{1,6}$")))
    {
      a(g.INVALID_MERCHANT, null);
      return false;
    }
    if ((paramString3 == null) || (!paramString3.matches("^[\\w-]{1,32}$")))
    {
      a(g.INVALID_SESSION, null);
      return false;
    }
    return true;
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  @SuppressLint({"NewApi"})
  public void a(String paramString, long paramLong)
  {
    if (e == null) {
      if ((a()) && (a(a, b, paramString)))
      {
        e = new c(d, c, f);
        e.a(paramLong);
        if (Build.VERSION.SDK_INT <= 10) {
          break label103;
        }
        e.executeOnExecutor(AsyncTask.THREAD_POOL_EXECUTOR, new String[] { a, b, paramString });
      }
    }
    label103:
    while (c == null)
    {
      return;
      e.execute(new String[] { a, b, paramString });
      return;
    }
    if (!e.a())
    {
      c.a(g.RUNTIME_FAILURE, new RuntimeException("Already running. Will not start collecting again."));
      return;
    }
    c.a(g.RUNTIME_FAILURE, new RuntimeException("Already completed. Will not start collecting again."));
  }
  
  public void b(String paramString)
  {
    b = paramString;
  }
  
  public void c(String paramString)
  {
    a(paramString, -1L);
  }
}

/* Location:
 * Qualified Name:     com.a.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */