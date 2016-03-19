package com.google.android.gms.tagmanager;

class cv
  implements cb
{
  private final long a;
  private final int b;
  private double c;
  private long d;
  private final Object e = new Object();
  
  public cv()
  {
    this(60, 2000L);
  }
  
  public cv(int paramInt, long paramLong)
  {
    b = paramInt;
    c = b;
    a = paramLong;
  }
  
  public boolean a()
  {
    synchronized (e)
    {
      long l = System.currentTimeMillis();
      if (c < b)
      {
        double d1 = (l - d) / a;
        if (d1 > 0.0D) {
          c = Math.min(b, d1 + c);
        }
      }
      d = l;
      if (c >= 1.0D)
      {
        c -= 1.0D;
        return true;
      }
      ba.b("No more tokens available.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */