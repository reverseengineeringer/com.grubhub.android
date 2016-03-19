package com.facebook.internal;

import com.facebook.m;
import java.util.concurrent.Executor;

public class au
{
  private final Object b = new Object();
  private aw c;
  private final int d;
  private final Executor e;
  private aw f = null;
  private int g = 0;
  
  static
  {
    if (!au.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      a = bool;
      return;
    }
  }
  
  public au()
  {
    this(8);
  }
  
  public au(int paramInt)
  {
    this(paramInt, m.d());
  }
  
  public au(int paramInt, Executor paramExecutor)
  {
    d = paramInt;
    e = paramExecutor;
  }
  
  private void a()
  {
    a(null);
  }
  
  private void a(aw paramaw)
  {
    aw localaw = null;
    Object localObject = b;
    if (paramaw != null) {}
    try
    {
      f = paramaw.a(f);
      g -= 1;
      paramaw = localaw;
      if (g < d)
      {
        localaw = c;
        paramaw = localaw;
        if (localaw != null)
        {
          c = localaw.a(c);
          f = localaw.a(f, false);
          g += 1;
          localaw.a(true);
          paramaw = localaw;
        }
      }
      if (paramaw != null) {
        b(paramaw);
      }
      return;
    }
    finally {}
  }
  
  private void b(final aw paramaw)
  {
    e.execute(new Runnable()
    {
      public void run()
      {
        try
        {
          paramaw.a().run();
          return;
        }
        finally
        {
          au.a(au.this, paramaw);
        }
      }
    });
  }
  
  public av a(Runnable paramRunnable)
  {
    return a(paramRunnable, true);
  }
  
  public av a(Runnable arg1, boolean paramBoolean)
  {
    aw localaw = new aw(this, ???);
    synchronized (b)
    {
      c = localaw.a(c, paramBoolean);
      a();
      return localaw;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */