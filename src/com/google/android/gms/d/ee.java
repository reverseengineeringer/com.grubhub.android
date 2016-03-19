package com.google.android.gms.d;

import java.io.IOException;

public abstract class ee<M extends ee<M>>
  extends ek
{
  protected eg r;
  
  public final <T> T a(ef<M, T> paramef)
  {
    if (r == null) {}
    eh localeh;
    do
    {
      return null;
      localeh = r.a(en.b(c));
    } while (localeh == null);
    return (T)localeh.a(paramef);
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if (r == null) {}
    for (;;)
    {
      return;
      int i = 0;
      while (i < r.a())
      {
        r.b(i).a(paramec);
        i += 1;
      }
    }
  }
  
  protected final boolean a(eb parameb, int paramInt)
    throws IOException
  {
    int i = parameb.o();
    if (!parameb.b(paramInt)) {
      return false;
    }
    int j = en.b(paramInt);
    em localem = new em(paramInt, parameb.a(i, parameb.o() - i));
    parameb = null;
    if (r == null) {
      r = new eg();
    }
    for (;;)
    {
      Object localObject = parameb;
      if (parameb == null)
      {
        localObject = new eh();
        r.a(j, (eh)localObject);
      }
      ((eh)localObject).a(localem);
      return true;
      parameb = r.a(j);
    }
  }
  
  protected final boolean a(M paramM)
  {
    if ((r == null) || (r.b())) {
      return (r == null) || (r.b());
    }
    return r.equals(r);
  }
  
  protected int b()
  {
    int j = 0;
    if (r != null)
    {
      int i = 0;
      for (;;)
      {
        k = i;
        if (j >= r.a()) {
          break;
        }
        i += r.b(j).a();
        j += 1;
      }
    }
    int k = 0;
    return k;
  }
  
  protected final int d()
  {
    if ((r == null) || (r.b())) {
      return 0;
    }
    return r.hashCode();
  }
  
  public M e()
    throws CloneNotSupportedException
  {
    ee localee = (ee)super.f();
    ei.a(this, localee);
    return localee;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */