package com.facebook;

import android.os.Handler;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

public class x
  extends AbstractList<GraphRequest>
{
  private static AtomicInteger a = new AtomicInteger();
  private Handler b;
  private List<GraphRequest> c = new ArrayList();
  private int d = 0;
  private final String e = Integer.valueOf(a.incrementAndGet()).toString();
  private List<y> f = new ArrayList();
  private String g;
  
  public x()
  {
    c = new ArrayList();
  }
  
  public x(Collection<GraphRequest> paramCollection)
  {
    c = new ArrayList(paramCollection);
  }
  
  public x(GraphRequest... paramVarArgs)
  {
    c = Arrays.asList(paramVarArgs);
  }
  
  public int a()
  {
    return d;
  }
  
  public final GraphRequest a(int paramInt)
  {
    return (GraphRequest)c.get(paramInt);
  }
  
  public final void a(int paramInt, GraphRequest paramGraphRequest)
  {
    c.add(paramInt, paramGraphRequest);
  }
  
  final void a(Handler paramHandler)
  {
    b = paramHandler;
  }
  
  public void a(y paramy)
  {
    if (!f.contains(paramy)) {
      f.add(paramy);
    }
  }
  
  public final boolean a(GraphRequest paramGraphRequest)
  {
    return c.add(paramGraphRequest);
  }
  
  public final GraphRequest b(int paramInt)
  {
    return (GraphRequest)c.remove(paramInt);
  }
  
  public final GraphRequest b(int paramInt, GraphRequest paramGraphRequest)
  {
    return (GraphRequest)c.set(paramInt, paramGraphRequest);
  }
  
  final String b()
  {
    return e;
  }
  
  final Handler c()
  {
    return b;
  }
  
  public final void clear()
  {
    c.clear();
  }
  
  final List<GraphRequest> d()
  {
    return c;
  }
  
  final List<y> e()
  {
    return f;
  }
  
  public final String f()
  {
    return g;
  }
  
  public final List<aa> g()
  {
    return i();
  }
  
  public final w h()
  {
    return j();
  }
  
  List<aa> i()
  {
    return GraphRequest.b(this);
  }
  
  w j()
  {
    return GraphRequest.c(this);
  }
  
  public final int size()
  {
    return c.size();
  }
}

/* Location:
 * Qualified Name:     com.facebook.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */