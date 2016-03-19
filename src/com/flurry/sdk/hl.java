package com.flurry.sdk;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;

public final class hl
  extends ia<ij>
{
  private static hl a = null;
  
  protected hl()
  {
    super(hl.class.getName(), 0, 5, 5000L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(11, new hy()));
  }
  
  public static hl a()
  {
    try
    {
      if (a == null) {
        a = new hl();
      }
      hl localhl = a;
      return localhl;
    }
    finally {}
  }
  
  public static void b()
  {
    try
    {
      if (a != null) {
        a.c();
      }
      a = null;
      return;
    }
    finally {}
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */