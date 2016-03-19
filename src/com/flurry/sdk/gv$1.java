package com.flurry.sdk;

import android.widget.Toast;

class gv$1
  implements ii.a<byte[], Void>
{
  gv$1(gv paramgv, String paramString1, String paramString2) {}
  
  public void a(ii<byte[], Void> paramii, Void paramVoid)
  {
    final int i = paramii.f();
    if (i > 0)
    {
      ib.e(gv.c(), "Analytics report sent.");
      ib.a(3, gv.c(), "FlurryDataSender: report " + a + " sent. HTTP response: " + i);
      if ((ib.c() <= 3) && (ib.d())) {
        hn.a().a(new Runnable()
        {
          public void run()
          {
            Toast.makeText(hn.a().c(), "SD HTTP Response Code: " + i, 0).show();
          }
        });
      }
      c.a(a, b, i);
      gv.a(c);
      return;
    }
    gv.a(c, a, b);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gv.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */