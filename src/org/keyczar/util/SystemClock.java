package org.keyczar.util;

public class SystemClock
  implements Clock
{
  public long now()
  {
    return System.currentTimeMillis();
  }
}

/* Location:
 * Qualified Name:     org.keyczar.util.SystemClock
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */