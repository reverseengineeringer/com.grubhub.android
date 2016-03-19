package com.google.android.gms.tagmanager;

class dl
  extends Number
  implements Comparable<dl>
{
  private double a;
  private long b;
  private boolean c;
  
  private dl(double paramDouble)
  {
    a = paramDouble;
    c = false;
  }
  
  private dl(long paramLong)
  {
    b = paramLong;
    c = true;
  }
  
  public static dl a(long paramLong)
  {
    return new dl(paramLong);
  }
  
  public static dl a(Double paramDouble)
  {
    return new dl(paramDouble.doubleValue());
  }
  
  public static dl a(String paramString)
    throws NumberFormatException
  {
    try
    {
      dl localdl1 = new dl(Long.parseLong(paramString));
      return localdl1;
    }
    catch (NumberFormatException localNumberFormatException1)
    {
      try
      {
        dl localdl2 = new dl(Double.parseDouble(paramString));
        return localdl2;
      }
      catch (NumberFormatException localNumberFormatException2)
      {
        throw new NumberFormatException(paramString + " is not a valid TypedNumber");
      }
    }
  }
  
  public int a(dl paramdl)
  {
    if ((b()) && (paramdl.b())) {
      return new Long(b).compareTo(Long.valueOf(b));
    }
    return Double.compare(doubleValue(), paramdl.doubleValue());
  }
  
  public boolean a()
  {
    return !b();
  }
  
  public boolean b()
  {
    return c;
  }
  
  public byte byteValue()
  {
    return (byte)(int)longValue();
  }
  
  public long c()
  {
    if (b()) {
      return b;
    }
    return a;
  }
  
  public int d()
  {
    return (int)longValue();
  }
  
  public double doubleValue()
  {
    if (b()) {
      return b;
    }
    return a;
  }
  
  public short e()
  {
    return (short)(int)longValue();
  }
  
  public boolean equals(Object paramObject)
  {
    return ((paramObject instanceof dl)) && (a((dl)paramObject) == 0);
  }
  
  public float floatValue()
  {
    return (float)doubleValue();
  }
  
  public int hashCode()
  {
    return new Long(longValue()).hashCode();
  }
  
  public int intValue()
  {
    return d();
  }
  
  public long longValue()
  {
    return c();
  }
  
  public short shortValue()
  {
    return e();
  }
  
  public String toString()
  {
    if (b()) {
      return Long.toString(b);
    }
    return Double.toString(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */