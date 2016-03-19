package android.support.v7.internal.view;

import android.support.v4.view.dq;
import android.support.v4.view.ed;
import android.support.v4.view.ee;
import android.view.View;
import android.view.animation.Interpolator;
import java.util.ArrayList;
import java.util.Iterator;

public class h
{
  private final ArrayList<dq> a = new ArrayList();
  private long b = -1L;
  private Interpolator c;
  private ed d;
  private boolean e;
  private final ee f = new ee()
  {
    private boolean b = false;
    private int c = 0;
    
    void a()
    {
      c = 0;
      b = false;
      h.b(h.this);
    }
    
    public void a(View paramAnonymousView)
    {
      if (b) {}
      do
      {
        return;
        b = true;
      } while (h.a(h.this) == null);
      h.a(h.this).a(null);
    }
    
    public void b(View paramAnonymousView)
    {
      int i = c + 1;
      c = i;
      if (i == h.c(h.this).size())
      {
        if (h.a(h.this) != null) {
          h.a(h.this).b(null);
        }
        a();
      }
    }
  };
  
  private void c()
  {
    e = false;
  }
  
  public h a(long paramLong)
  {
    if (!e) {
      b = paramLong;
    }
    return this;
  }
  
  public h a(dq paramdq)
  {
    if (!e) {
      a.add(paramdq);
    }
    return this;
  }
  
  public h a(ed paramed)
  {
    if (!e) {
      d = paramed;
    }
    return this;
  }
  
  public h a(Interpolator paramInterpolator)
  {
    if (!e) {
      c = paramInterpolator;
    }
    return this;
  }
  
  public void a()
  {
    if (e) {
      return;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext())
    {
      dq localdq = (dq)localIterator.next();
      if (b >= 0L) {
        localdq.a(b);
      }
      if (c != null) {
        localdq.a(c);
      }
      if (d != null) {
        localdq.a(f);
      }
      localdq.b();
    }
    e = true;
  }
  
  public void b()
  {
    if (!e) {
      return;
    }
    Iterator localIterator = a.iterator();
    while (localIterator.hasNext()) {
      ((dq)localIterator.next()).a();
    }
    e = false;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.view.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */