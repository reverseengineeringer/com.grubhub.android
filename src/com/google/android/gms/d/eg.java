package com.google.android.gms.d;

class eg
  implements Cloneable
{
  private static final eh a = new eh();
  private boolean b = false;
  private int[] c;
  private eh[] d;
  private int e;
  
  public eg()
  {
    this(10);
  }
  
  public eg(int paramInt)
  {
    paramInt = c(paramInt);
    c = new int[paramInt];
    d = new eh[paramInt];
    e = 0;
  }
  
  private boolean a(int[] paramArrayOfInt1, int[] paramArrayOfInt2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (paramArrayOfInt1[i] != paramArrayOfInt2[i]) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private boolean a(eh[] paramArrayOfeh1, eh[] paramArrayOfeh2, int paramInt)
  {
    int i = 0;
    while (i < paramInt)
    {
      if (!paramArrayOfeh1[i].equals(paramArrayOfeh2[i])) {
        return false;
      }
      i += 1;
    }
    return true;
  }
  
  private int c(int paramInt)
  {
    return d(paramInt * 4) / 4;
  }
  
  private int d(int paramInt)
  {
    int i = 4;
    for (;;)
    {
      int j = paramInt;
      if (i < 32)
      {
        if (paramInt <= (1 << i) - 12) {
          j = (1 << i) - 12;
        }
      }
      else {
        return j;
      }
      i += 1;
    }
  }
  
  private void d()
  {
    int m = e;
    int[] arrayOfInt = c;
    eh[] arrayOfeh = d;
    int i = 0;
    int k;
    for (int j = 0; i < m; j = k)
    {
      eh localeh = arrayOfeh[i];
      k = j;
      if (localeh != a)
      {
        if (i != j)
        {
          arrayOfInt[j] = arrayOfInt[i];
          arrayOfeh[j] = localeh;
          arrayOfeh[i] = null;
        }
        k = j + 1;
      }
      i += 1;
    }
    b = false;
    e = j;
  }
  
  private int e(int paramInt)
  {
    int i = 0;
    int j = e - 1;
    while (i <= j)
    {
      int k = i + j >>> 1;
      int m = c[k];
      if (m < paramInt) {
        i = k + 1;
      } else if (m > paramInt) {
        j = k - 1;
      } else {
        return k;
      }
    }
    return i ^ 0xFFFFFFFF;
  }
  
  public int a()
  {
    if (b) {
      d();
    }
    return e;
  }
  
  public eh a(int paramInt)
  {
    paramInt = e(paramInt);
    if ((paramInt < 0) || (d[paramInt] == a)) {
      return null;
    }
    return d[paramInt];
  }
  
  public void a(int paramInt, eh parameh)
  {
    int i = e(paramInt);
    if (i >= 0)
    {
      d[i] = parameh;
      return;
    }
    int j = i ^ 0xFFFFFFFF;
    if ((j < e) && (d[j] == a))
    {
      c[j] = paramInt;
      d[j] = parameh;
      return;
    }
    i = j;
    if (b)
    {
      i = j;
      if (e >= c.length)
      {
        d();
        i = e(paramInt) ^ 0xFFFFFFFF;
      }
    }
    if (e >= c.length)
    {
      j = c(e + 1);
      int[] arrayOfInt = new int[j];
      eh[] arrayOfeh = new eh[j];
      System.arraycopy(c, 0, arrayOfInt, 0, c.length);
      System.arraycopy(d, 0, arrayOfeh, 0, d.length);
      c = arrayOfInt;
      d = arrayOfeh;
    }
    if (e - i != 0)
    {
      System.arraycopy(c, i, c, i + 1, e - i);
      System.arraycopy(d, i, d, i + 1, e - i);
    }
    c[i] = paramInt;
    d[i] = parameh;
    e += 1;
  }
  
  public eh b(int paramInt)
  {
    if (b) {
      d();
    }
    return d[paramInt];
  }
  
  public boolean b()
  {
    return a() == 0;
  }
  
  public final eg c()
  {
    int i = 0;
    int j = a();
    eg localeg = new eg(j);
    System.arraycopy(c, 0, c, 0, j);
    while (i < j)
    {
      if (d[i] != null) {
        d[i] = d[i].b();
      }
      i += 1;
    }
    e = j;
    return localeg;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof eg)) {
        return false;
      }
      paramObject = (eg)paramObject;
      if (a() != ((eg)paramObject).a()) {
        return false;
      }
    } while ((a(c, c, e)) && (a(d, d, e)));
    return false;
  }
  
  public int hashCode()
  {
    if (b) {
      d();
    }
    int j = 17;
    int i = 0;
    while (i < e)
    {
      j = (j * 31 + c[i]) * 31 + d[i].hashCode();
      i += 1;
    }
    return j;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.eg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */