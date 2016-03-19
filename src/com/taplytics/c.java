package com.taplytics;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class c<T>
{
  private final List<h<T>> a = new ArrayList();
  private final Object b = new Object();
  private T c;
  private g d = g.antelope;
  private boolean e = false;
  private Exception f;
  
  private void a(g paramg, T paramT, Exception paramException)
  {
    ArrayList localArrayList = new ArrayList(a);
    synchronized (b)
    {
      if (!e)
      {
        a.clear();
        d = paramg;
        f = paramException;
        e = true;
        c = paramT;
        paramT = localArrayList.iterator();
        while (paramT.hasNext()) {
          a((h)paramT.next(), paramg);
        }
      }
      return;
    }
  }
  
  private void a(h<T> paramh, g paramg)
  {
    switch (f.a[paramg.ordinal()])
    {
    default: 
      return;
    case 1: 
      paramh.a(c);
      paramh.e();
      return;
    case 2: 
      paramh.a(f);
      paramh.b();
      paramh.b(f);
      paramh.d();
      return;
    }
    paramh.c();
    paramh.b(f);
    paramh.d();
  }
  
  private c<T> f()
  {
    return this;
  }
  
  public <TypedPromiseListener extends h<T>> TypedPromiseListener a(TypedPromiseListener paramTypedPromiseListener)
  {
    if (e)
    {
      a(paramTypedPromiseListener, d);
      return paramTypedPromiseListener;
    }
    a.add(paramTypedPromiseListener);
    return paramTypedPromiseListener;
  }
  
  public void a()
  {
    a(g.alligator, null, null);
  }
  
  public void a(int paramInt)
  {
    a(new e(this, i.a().schedule(new d(this), paramInt, TimeUnit.MILLISECONDS)));
  }
  
  void a(Exception paramException)
  {
    a(g.alpaca, null, paramException);
  }
  
  public void b()
  {
    a(g.anteater, null, null);
  }
  
  public boolean c()
  {
    return d == g.alligator;
  }
  
  public boolean d()
  {
    return d == g.alpaca;
  }
  
  public g e()
  {
    return d;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */