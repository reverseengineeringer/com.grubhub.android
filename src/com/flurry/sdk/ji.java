package com.flurry.sdk;

public class ji
{
  private static long a = 100L;
  private static ji b = null;
  private final jj c = new jj();
  
  public ji()
  {
    c.a(a);
    c.a(true);
  }
  
  public static ji a()
  {
    try
    {
      if (b == null) {
        b = new ji();
      }
      ji localji = b;
      return localji;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (b != null)
      {
        b.c();
        b = null;
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public void a(hw<jh> paramhw)
  {
    try
    {
      hx.a().a("com.flurry.android.sdk.TickEvent", paramhw);
      if (hx.a().b("com.flurry.android.sdk.TickEvent") > 0) {
        c.a();
      }
      return;
    }
    finally
    {
      paramhw = finally;
      throw paramhw;
    }
  }
  
  public void b(hw<jh> paramhw)
  {
    try
    {
      hx.a().b("com.flurry.android.sdk.TickEvent", paramhw);
      if (hx.a().b("com.flurry.android.sdk.TickEvent") == 0) {
        c.b();
      }
      return;
    }
    finally
    {
      paramhw = finally;
      throw paramhw;
    }
  }
  
  public void c()
  {
    try
    {
      hx.a().a("com.flurry.android.sdk.TickEvent");
      c.b();
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.ji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */