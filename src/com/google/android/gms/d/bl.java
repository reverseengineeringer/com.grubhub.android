package com.google.android.gms.d;

import java.io.IOException;

public final class bl
  extends ee<bl>
{
  public String a;
  public bk[] b;
  
  public bl()
  {
    a();
  }
  
  public bl a()
  {
    a = "";
    b = bk.a();
    r = null;
    s = -1;
    return this;
  }
  
  public bl a(eb parameb)
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
        a = parameb.h();
        break;
      case 18: 
        int j = en.a(parameb, 18);
        if (b == null) {}
        bk[] arrayOfbk;
        for (i = 0;; i = b.length)
        {
          arrayOfbk = new bk[j + i];
          j = i;
          if (i != 0)
          {
            System.arraycopy(b, 0, arrayOfbk, 0, i);
            j = i;
          }
          while (j < arrayOfbk.length - 1)
          {
            arrayOfbk[j] = new bk();
            parameb.a(arrayOfbk[j]);
            parameb.a();
            j += 1;
          }
        }
        arrayOfbk[j] = new bk();
        parameb.a(arrayOfbk[j]);
        b = arrayOfbk;
      }
    }
  }
  
  public void a(ec paramec)
    throws IOException
  {
    if (!a.equals("")) {
      paramec.a(1, a);
    }
    if ((b != null) && (b.length > 0))
    {
      int i = 0;
      while (i < b.length)
      {
        bk localbk = b[i];
        if (localbk != null) {
          paramec.a(2, localbk);
        }
        i += 1;
      }
    }
    super.a(paramec);
  }
  
  protected int b()
  {
    int j = super.b();
    int i = j;
    if (!a.equals("")) {
      i = j + ec.b(1, a);
    }
    j = i;
    if (b != null)
    {
      j = i;
      if (b.length > 0)
      {
        j = 0;
        while (j < b.length)
        {
          bk localbk = b[j];
          int k = i;
          if (localbk != null) {
            k = i + ec.c(2, localbk);
          }
          j += 1;
          i = k;
        }
        j = i;
      }
    }
    return j;
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
      } while (!(paramObject instanceof bl));
      paramObject = (bl)paramObject;
      if (a != null) {
        break;
      }
      bool1 = bool2;
    } while (a != null);
    while (a.equals(a))
    {
      bool1 = bool2;
      if (!ei.a(b, b)) {
        break;
      }
      return a((ee)paramObject);
    }
    return false;
  }
  
  public int hashCode()
  {
    if (a == null) {}
    for (int i = 0;; i = a.hashCode()) {
      return ((i + 527) * 31 + ei.a(b)) * 31 + d();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.bl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */