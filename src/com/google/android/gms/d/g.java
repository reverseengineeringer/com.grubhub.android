package com.google.android.gms.d;

import java.io.IOException;

public final class g
  extends ee<g>
{
  public o[] a;
  public o[] b;
  public f[] c;
  
  public g()
  {
    a();
  }
  
  public g a()
  {
    a = o.a();
    b = o.a();
    c = f.a();
    r = null;
    s = -1;
    return this;
  }
  
  public g a(eb parameb)
    throws IOException
  {
    for (;;)
    {
      int i = parameb.a();
      int j;
      Object localObject;
      switch (i)
      {
      default: 
        if (a(parameb, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        j = en.a(parameb, 10);
        if (a == null) {}
        for (i = 0;; i = a.length)
        {
          localObject = new o[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new o();
            parameb.a(localObject[j]);
            parameb.a();
            j += 1;
          }
        }
        localObject[j] = new o();
        parameb.a(localObject[j]);
        a = ((o[])localObject);
        break;
      case 18: 
        j = en.a(parameb, 18);
        if (b == null) {}
        for (i = 0;; i = b.length)
        {
          localObject = new o[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(b, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new o();
            parameb.a(localObject[j]);
            parameb.a();
            j += 1;
          }
        }
        localObject[j] = new o();
        parameb.a(localObject[j]);
        b = ((o[])localObject);
        break;
      case 26: 
        j = en.a(parameb, 26);
        if (c == null) {}
        for (i = 0;; i = c.length)
        {
          localObject = new f[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(c, 0, localObject, 0, i);
            j = i;
          }
          while (j < localObject.length - 1)
          {
            localObject[j] = new f();
            parameb.a(localObject[j]);
            parameb.a();
            j += 1;
          }
        }
        localObject[j] = new f();
        parameb.a(localObject[j]);
        c = ((f[])localObject);
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    int j = 0;
    int i;
    Object localObject;
    if ((a != null) && (a.length > 0))
    {
      i = 0;
      while (i < a.length)
      {
        localObject = a[i];
        if (localObject != null) {
          paramec.a(1, (ek)localObject);
        }
        i += 1;
      }
    }
    if ((b != null) && (b.length > 0))
    {
      i = 0;
      while (i < b.length)
      {
        localObject = b[i];
        if (localObject != null) {
          paramec.a(2, (ek)localObject);
        }
        i += 1;
      }
    }
    if ((c != null) && (c.length > 0))
    {
      i = j;
      while (i < c.length)
      {
        localObject = c[i];
        if (localObject != null) {
          paramec.a(3, (ek)localObject);
        }
        i += 1;
      }
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int m = 0;
    int i = super.b();
    int j = i;
    Object localObject;
    if (a != null)
    {
      j = i;
      if (a.length > 0)
      {
        j = 0;
        while (j < a.length)
        {
          localObject = a[j];
          k = i;
          if (localObject != null) {
            k = i + ec.c(1, (ek)localObject);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    i = j;
    if (b != null)
    {
      i = j;
      if (b.length > 0)
      {
        i = j;
        j = 0;
        while (j < b.length)
        {
          localObject = b[j];
          k = i;
          if (localObject != null) {
            k = i + ec.c(2, (ek)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    int k = i;
    if (c != null)
    {
      k = i;
      if (c.length > 0)
      {
        j = m;
        for (;;)
        {
          k = i;
          if (j >= c.length) {
            break;
          }
          localObject = c[j];
          k = i;
          if (localObject != null) {
            k = i + ec.c(3, (ek)localObject);
          }
          j += 1;
          i = k;
        }
      }
    }
    return k;
  }
  
  public boolean equals(Object paramObject)
  {
    boolean bool2 = false;
    boolean bool1;
    if (paramObject == this) {
      bool1 = true;
    }
    do
    {
      do
      {
        do
        {
          do
          {
            return bool1;
            bool1 = bool2;
          } while (!(paramObject instanceof g));
          paramObject = (g)paramObject;
          bool1 = bool2;
        } while (!ei.a(a, a));
        bool1 = bool2;
      } while (!ei.a(b, b));
      bool1 = bool2;
    } while (!ei.a(c, c));
    return a((ee)paramObject);
  }
  
  public int hashCode()
  {
    return (((ei.a(a) + 527) * 31 + ei.a(b)) * 31 + ei.a(c)) * 31 + d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */