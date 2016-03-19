package com.braintreepayments.api;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import java.util.Map;

final class c$1
  implements Runnable
{
  c$1(String paramString, Context paramContext, d paramd) {}
  
  public void run()
  {
    final Exception localException1 = null;
    for (;;)
    {
      try
      {
        if (c.a.containsKey(a)) {
          localc = (c)c.a.get(a);
        }
      }
      catch (Exception localException2)
      {
        final c localc = null;
      }
      try
      {
        if (!c.a(localc)) {
          c.b(localc);
        }
        str = null;
        new Handler(Looper.getMainLooper()).post(new Runnable()
        {
          public void run()
          {
            if ((localc != null) && (c.a(localc)))
            {
              c.a(true, localc, null, null);
              return;
            }
            c.a(false, null, str, localException1);
          }
        });
        return;
      }
      catch (Exception localException3)
      {
        for (;;) {}
      }
      localc = new c(b, a);
      continue;
      final String str = localException2.getMessage();
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */