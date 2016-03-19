package com.flurry.sdk;

import android.text.TextUtils;
import android.widget.Toast;
import java.util.List;

class gq$2
  implements ii.a<Void, Void>
{
  gq$2(gq paramgq, gp paramgp) {}
  
  public void a(final ii<Void, Void> paramii, Void paramVoid)
  {
    ib.a(3, gq.b(), "AsyncReportInfo request: HTTP status code is:" + paramii.f());
    int i = paramii.f();
    if ((i >= 200) && (i < 300))
    {
      ib.a(3, gq.b(), "Send report successful to url: " + paramii.b());
      gq.a(b, a);
      if ((ib.c() <= 3) && (ib.d())) {
        hn.a().a(new Runnable()
        {
          public void run()
          {
            Toast.makeText(hn.a().c(), "ANL AR HTTP Response Code: " + paramii.f() + " for url: " + paramii.b(), 1).show();
          }
        });
      }
    }
    do
    {
      return;
      if ((i < 300) || (i >= 400)) {
        break label307;
      }
      Object localObject = null;
      List localList = paramii.b("Location");
      paramVoid = (Void)localObject;
      if (localList != null)
      {
        paramVoid = (Void)localObject;
        if (localList.size() > 0) {
          paramVoid = jr.b((String)localList.get(0), a.h());
        }
      }
      if (!TextUtils.isEmpty(paramVoid)) {
        break;
      }
      ib.a(3, gq.b(), "Send report successful to url: " + paramii.b());
      gq.b(b, a);
    } while ((ib.c() > 3) || (!ib.d()));
    hn.a().a(new Runnable()
    {
      public void run()
      {
        Toast.makeText(hn.a().c(), "ANL AR HTTP Response Code: " + paramii.f() + " for url: " + paramii.b(), 1).show();
      }
    });
    return;
    ib.a(3, gq.b(), "Send report redirecting to url: " + paramVoid);
    a.c(paramVoid);
    b.a(a);
    return;
    label307:
    ib.a(3, gq.b(), "Send report failed to url: " + paramii.b());
    if (jr.h(a.h()))
    {
      gq.c(b, a);
      return;
    }
    ib.a(3, gq.b(), "Oops! url: " + paramii.b() + " is invalid, aborting transmission");
    gq.d(b, a);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gq.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */