package com.google.android.gms.d;

import com.google.android.gms.common.internal.aq;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public final class bo
{
  private final br a;
  private final bc b;
  private boolean c;
  private long d;
  private long e;
  private long f;
  private long g;
  private long h;
  private boolean i;
  private final Map<Class<? extends bq>, bq> j;
  private final List<bx> k;
  
  bo(bo parambo)
  {
    a = a;
    b = b;
    d = d;
    e = e;
    f = f;
    g = g;
    h = h;
    k = new ArrayList(k);
    j = new HashMap(j.size());
    parambo = j.entrySet().iterator();
    while (parambo.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)parambo.next();
      bq localbq = c((Class)localEntry.getKey());
      ((bq)localEntry.getValue()).a(localbq);
      j.put(localEntry.getKey(), localbq);
    }
  }
  
  bo(br parambr, bc parambc)
  {
    aq.a(parambr);
    aq.a(parambc);
    a = parambr;
    b = parambc;
    g = 1800000L;
    h = 3024000000L;
    j = new HashMap();
    k = new ArrayList();
  }
  
  private static <T extends bq> T c(Class<T> paramClass)
  {
    try
    {
      paramClass = (bq)paramClass.newInstance();
      return paramClass;
    }
    catch (InstantiationException paramClass)
    {
      throw new IllegalArgumentException("dataType doesn't have default constructor", paramClass);
    }
    catch (IllegalAccessException paramClass)
    {
      throw new IllegalArgumentException("dataType default constructor is not accessible", paramClass);
    }
  }
  
  public bo a()
  {
    return new bo(this);
  }
  
  public <T extends bq> T a(Class<T> paramClass)
  {
    return (bq)j.get(paramClass);
  }
  
  public void a(long paramLong)
  {
    e = paramLong;
  }
  
  public void a(bq parambq)
  {
    aq.a(parambq);
    Class localClass = parambq.getClass();
    if (localClass.getSuperclass() != bq.class) {
      throw new IllegalArgumentException();
    }
    parambq.a(b(localClass));
  }
  
  public <T extends bq> T b(Class<T> paramClass)
  {
    bq localbq2 = (bq)j.get(paramClass);
    bq localbq1 = localbq2;
    if (localbq2 == null)
    {
      localbq1 = c(paramClass);
      j.put(paramClass, localbq1);
    }
    return localbq1;
  }
  
  public Collection<bq> b()
  {
    return j.values();
  }
  
  public List<bx> c()
  {
    return k;
  }
  
  public long d()
  {
    return d;
  }
  
  public void e()
  {
    i().a(this);
  }
  
  public boolean f()
  {
    return c;
  }
  
  void g()
  {
    f = b.b();
    if (e != 0L) {}
    for (d = e;; d = b.a())
    {
      c = true;
      return;
    }
  }
  
  br h()
  {
    return a;
  }
  
  bs i()
  {
    return a.o();
  }
  
  boolean j()
  {
    return i;
  }
  
  void k()
  {
    i = true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */