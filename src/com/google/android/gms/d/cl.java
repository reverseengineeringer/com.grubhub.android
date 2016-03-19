package com.google.android.gms.d;

import com.google.android.gms.common.api.q;
import com.google.android.gms.common.internal.aq;

public final class cl
{
  private boolean a;
  private boolean b;
  private String c;
  private q d;
  
  private String a(String paramString)
  {
    aq.a(paramString);
    if ((c == null) || (c.equals(paramString))) {}
    for (boolean bool = true;; bool = false)
    {
      aq.b(bool, "two different server client ids provided");
      return paramString;
    }
  }
  
  public ck a()
  {
    return new ck(a, b, c, d, null);
  }
  
  public cl a(String paramString, q paramq)
  {
    a = true;
    b = true;
    c = a(paramString);
    d = ((q)aq.a(paramq));
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */