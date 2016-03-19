package com.google.android.gms.d;

import java.io.IOException;

public final class bi
  extends ee<bi>
{
  public bj[] a;
  
  public bi()
  {
    a();
  }
  
  public bi a()
  {
    a = bj.a();
    r = null;
    s = -1;
    return this;
  }
  
  public bi a(eb parameb)
    throws IOException
  {
    for (;;)
    {
      int i = parameb.a();
      switch (i)
      {
      default: 
        if (a(parameb, i)) {}
        break;
      case 0: 
        return this;
      case 10: 
        int j = en.a(parameb, 10);
        if (a == null) {}
        bj[] arrayOfbj;
        for (i = 0;; i = a.length)
        {
          arrayOfbj = new bj[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(a, 0, arrayOfbj, 0, i);
            j = i;
          }
          while (j < arrayOfbj.length - 1)
          {
            arrayOfbj[j] = new bj();
            parameb.a(arrayOfbj[j]);
            parameb.a();
            j += 1;
          }
        }
        arrayOfbj[j] = new bj();
        parameb.a(arrayOfbj[j]);
        a = arrayOfbj;
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if ((a != null) && (a.length > 0))
    {
      int i = 0;
      while (i < a.length)
      {
        bj localbj = a[i];
        if (localbj != null) {
          paramec.a(1, localbj);
        }
        i += 1;
      }
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int i = super.b();
    int k = i;
    if (a != null)
    {
      k = i;
      if (a.length > 0)
      {
        int j = 0;
        for (;;)
        {
          k = i;
          if (j >= a.length) {
            break;
          }
          bj localbj = a[j];
          k = i;
          if (localbj != null) {
            k = i + ec.c(1, localbj);
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
        return bool1;
        bool1 = bool2;
      } while (!(paramObject instanceof bi));
      paramObject = (bi)paramObject;
      bool1 = bool2;
    } while (!ei.a(a, a));
    return a((ee)paramObject);
  }
  
  public int hashCode()
  {
    return (ei.a(a) + 527) * 31 + d();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */