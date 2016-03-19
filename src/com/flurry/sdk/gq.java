package com.flurry.sdk;

import android.content.Context;
import android.text.TextUtils;
import android.widget.Toast;
import java.util.List;

public class gq
  extends im<gp>
{
  private static final String a = gq.class.getSimpleName();
  
  protected hu<List<gp>> a()
  {
    new hu(hn.a().c().getFileStreamPath(".yflurryanreporter"), ".yflurryanreporter", 2, new iy()
    {
      public iv<List<gp>> a(int paramAnonymousInt)
      {
        if (paramAnonymousInt > 1) {
          return new iu(new gp.a());
        }
        return new iu(new gp.b());
      }
    });
  }
  
  protected void a(final gp paramgp)
  {
    ib.a(3, a, "Sending next report for original url: " + paramgp.g() + " to current url:" + paramgp.h());
    ii localii = new ii();
    localii.a(paramgp.h());
    localii.a(100000);
    localii.a(ij.a.b);
    localii.a(false);
    localii.a(new ii.a()
    {
      public void a(final ii<Void, Void> paramAnonymousii, Void paramAnonymousVoid)
      {
        ib.a(3, gq.b(), "AsyncReportInfo request: HTTP status code is:" + paramAnonymousii.f());
        int i = paramAnonymousii.f();
        if ((i >= 200) && (i < 300))
        {
          ib.a(3, gq.b(), "Send report successful to url: " + paramAnonymousii.b());
          gq.a(gq.this, paramgp);
          if ((ib.c() <= 3) && (ib.d())) {
            hn.a().a(new Runnable()
            {
              public void run()
              {
                Toast.makeText(hn.a().c(), "ANL AR HTTP Response Code: " + paramAnonymousii.f() + " for url: " + paramAnonymousii.b(), 1).show();
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
          List localList = paramAnonymousii.b("Location");
          paramAnonymousVoid = (Void)localObject;
          if (localList != null)
          {
            paramAnonymousVoid = (Void)localObject;
            if (localList.size() > 0) {
              paramAnonymousVoid = jr.b((String)localList.get(0), paramgp.h());
            }
          }
          if (!TextUtils.isEmpty(paramAnonymousVoid)) {
            break;
          }
          ib.a(3, gq.b(), "Send report successful to url: " + paramAnonymousii.b());
          gq.b(gq.this, paramgp);
        } while ((ib.c() > 3) || (!ib.d()));
        hn.a().a(new Runnable()
        {
          public void run()
          {
            Toast.makeText(hn.a().c(), "ANL AR HTTP Response Code: " + paramAnonymousii.f() + " for url: " + paramAnonymousii.b(), 1).show();
          }
        });
        return;
        ib.a(3, gq.b(), "Send report redirecting to url: " + paramAnonymousVoid);
        paramgp.c(paramAnonymousVoid);
        a(paramgp);
        return;
        label307:
        ib.a(3, gq.b(), "Send report failed to url: " + paramAnonymousii.b());
        if (jr.h(paramgp.h()))
        {
          gq.c(gq.this, paramgp);
          return;
        }
        ib.a(3, gq.b(), "Oops! url: " + paramAnonymousii.b() + " is invalid, aborting transmission");
        gq.d(gq.this, paramgp);
      }
    });
    hl.a().a(this, localii);
  }
}

/* Location:
 * Qualified Name:     com.flurry.sdk.gq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */