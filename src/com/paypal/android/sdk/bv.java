package com.paypal.android.sdk;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

public class bv
{
  private List a = Collections.synchronizedList(new ArrayList());
  private List b = Collections.synchronizedList(new ArrayList());
  
  static
  {
    bv.class.getSimpleName();
  }
  
  public static bv a()
  {
    return bw.a();
  }
  
  private void b()
  {
    if (!b.isEmpty()) {
      try
      {
        if (!b.isEmpty())
        {
          bu localbu = (bu)b.get(0);
          b.remove(0);
          a.add(localbu);
          new Thread(localbu).start();
        }
        return;
      }
      finally {}
    }
  }
  
  public final void a(bu parambu)
  {
    b.add(parambu);
    if (a.size() < 3) {
      b();
    }
  }
  
  public final void b(bu parambu)
  {
    a.remove(parambu);
    b();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */