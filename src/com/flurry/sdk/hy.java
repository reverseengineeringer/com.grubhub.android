package com.flurry.sdk;

import java.util.Comparator;

public class hy
  implements Comparator<Runnable>
{
  private static final String a = hy.class.getSimpleName();
  
  private int a(Runnable paramRunnable)
  {
    int i = Integer.MAX_VALUE;
    if (paramRunnable != null)
    {
      if (!(paramRunnable instanceof hz)) {
        break label36;
      }
      paramRunnable = (jq)((hz)paramRunnable).a();
      if (paramRunnable == null) {
        break label87;
      }
    }
    label36:
    label87:
    for (i = paramRunnable.j();; i = Integer.MAX_VALUE)
    {
      return i;
      if ((paramRunnable instanceof jq)) {
        return ((jq)paramRunnable).j();
      }
      ib.a(6, a, "Unknown runnable class: " + paramRunnable.getClass().getName());
      return Integer.MAX_VALUE;
    }
  }
  
  public int a(Runnable paramRunnable1, Runnable paramRunnable2)
  {
    int i = a(paramRunnable1);
    int j = a(paramRunnable2);
    if (i < j) {
      return -1;
    }
    if (i > j) {
      return 1;
    }
    return 0;
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.hy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */