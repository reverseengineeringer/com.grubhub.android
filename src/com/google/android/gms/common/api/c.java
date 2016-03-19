package com.google.android.gms.common.api;

import com.google.android.gms.common.internal.aq;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

public final class c<O extends d>
{
  private final k<?, O> a;
  private final m<?, O> b;
  private final j<?> c;
  private final n<?> d;
  private final ArrayList<Scope> e;
  private final String f;
  
  public <C extends i> c(String paramString, k<C, O> paramk, j<C> paramj, Scope... paramVarArgs)
  {
    aq.a(paramk, "Cannot construct an Api with a null ClientBuilder");
    aq.a(paramj, "Cannot construct an Api with a null ClientKey");
    f = paramString;
    a = paramk;
    b = null;
    c = paramj;
    d = null;
    e = new ArrayList(Arrays.asList(paramVarArgs));
  }
  
  public k<?, O> a()
  {
    if (a != null) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "This API was constructed with a SimpleClientBuilder. Use getSimpleClientBuilder");
      return a;
    }
  }
  
  public m<?, O> b()
  {
    if (b != null) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "This API was constructed with a ClientBuilder. Use getClientBuilder");
      return b;
    }
  }
  
  public List<Scope> c()
  {
    return e;
  }
  
  public j<?> d()
  {
    if (c != null) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "This API was constructed with a SimpleClientKey. Use getSimpleClientKey");
      return c;
    }
  }
  
  public boolean e()
  {
    return d != null;
  }
  
  public String f()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */