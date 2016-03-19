package com.google.android.gms.d;

import com.google.android.gms.common.internal.aq;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public abstract class br<T extends br>
{
  protected final bo a;
  private final bs b;
  private final List<bp> c;
  
  protected br(bs parambs, bc parambc)
  {
    aq.a(parambs);
    b = parambs;
    c = new ArrayList();
    parambs = new bo(this, parambc);
    parambs.k();
    a = parambs;
  }
  
  protected void a(bo parambo) {}
  
  protected void b(bo parambo)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext()) {
      ((bp)localIterator.next()).a(this, parambo);
    }
  }
  
  public bo l()
  {
    bo localbo = a.a();
    b(localbo);
    return localbo;
  }
  
  public bo m()
  {
    return a;
  }
  
  public List<bx> n()
  {
    return a.c();
  }
  
  protected bs o()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.br
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */