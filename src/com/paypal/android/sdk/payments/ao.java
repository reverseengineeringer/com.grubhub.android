package com.paypal.android.sdk.payments;

import android.util.Log;
import com.paypal.android.sdk.al;
import com.paypal.android.sdk.bE;
import com.paypal.android.sdk.bI;
import com.paypal.android.sdk.bL;
import com.paypal.android.sdk.bN;
import com.paypal.android.sdk.ca;
import com.paypal.android.sdk.cg;
import com.paypal.android.sdk.co;
import com.paypal.android.sdk.cq;
import com.paypal.android.sdk.cy;
import com.paypal.android.sdk.cz;
import com.paypal.android.sdk.ed;
import com.paypal.android.sdk.ej;
import com.paypal.android.sdk.fc;
import com.paypal.android.sdk.fe;
import com.paypal.android.sdk.ff;
import com.paypal.android.sdk.fg;
import com.paypal.android.sdk.fh;
import com.paypal.android.sdk.fj;
import com.paypal.android.sdk.fk;
import com.paypal.android.sdk.fl;
import com.paypal.android.sdk.fp;
import com.paypal.android.sdk.fr;

final class ao
  implements cz
{
  private ao(PayPalService paramPayPalService) {}
  
  private static bL a(String paramString1, String paramString2, long paramLong)
  {
    return new bL(paramString1, paramString2, System.currentTimeMillis() + 1000L * paramLong, true);
  }
  
  public final void a()
  {
    PayPalService.v();
  }
  
  public final void a(fc paramfc)
  {
    PayPalService.v();
    a.a(ej.d, paramfc.k(), paramfc.u());
    a.i();
    PayPalService.e(a).a(by.a());
    PayPalService.e(a).a();
  }
  
  public final void a(fe paramfe)
  {
    PayPalService.v();
    a.a(ej.p, paramfe.k());
    PayPalService.e(a).a(a);
    PayPalService.e(a).a();
  }
  
  public final void a(ff paramff)
  {
    PayPalService.v();
    PayPalService.e(a).a(paramff);
    PayPalService.e(a).a();
  }
  
  public final void a(fg paramfg)
  {
    PayPalService.v();
    a.a(ej.d, paramfg.k(), paramfg.w());
    PayPalService.e(a).a(by.a());
    if (0 != 0) {}
    a.q();
    PayPalService.e(a).a();
  }
  
  public final void a(fh paramfh)
  {
    paramfh = paramfh.q().b();
    PayPalService.v();
    new StringBuilder("DeleteCreditCardRequest Error:").append(paramfh);
    Log.e("paypal.sdk", paramfh);
  }
  
  public final void a(fj paramfj)
  {
    PayPalService.v();
    PayPalService.e(a).a(paramfj);
    PayPalService.e(a).a();
  }
  
  public final void a(fk paramfk)
  {
    PayPalService.v();
    a.d().j = g;
    PayPalService.c(a).a();
  }
  
  public final void a(fl paramfl)
  {
    long l1 = 840L;
    PayPalService.v();
    long l2 = f;
    if (l2 > 840L) {}
    for (;;)
    {
      bE localbE;
      if (c == null)
      {
        a.d().h = a(d, e, l1);
        a.d().g = null;
        localbE = new bE();
        if (!a.a()) {
          break label215;
        }
        localbE.a(a.b());
        localbE.a(cq.a);
        label102:
        a.d().e = localbE;
        if (!a.a()) {
          break label238;
        }
        a.d().d = a.b();
        a.a(ej.f, Boolean.valueOf(b), paramfl.k());
      }
      for (;;)
      {
        PayPalService.c(a).a();
        return;
        a.d().j = g;
        a.d().f = new bN(c, e);
        break;
        label215:
        localbE.a(a.d());
        localbE.a(cq.b);
        break label102;
        label238:
        a.d().d = a.d().a(ed.a());
        a.a(ej.g, Boolean.valueOf(b), paramfl.k());
      }
      l1 = l2;
    }
  }
  
  public final void a(fp paramfp)
  {
    PayPalService.v();
    a.a(ej.b, paramfp.k());
    a.d().c = a(a, b, c);
    a.d().i = d;
    PayPalService.a(a, false);
    if (PayPalService.b(a) != null)
    {
      PayPalService.v();
      PayPalService.b(a).a();
      PayPalService.a(a, null);
    }
  }
  
  public final void a(fr paramfr)
  {
    PayPalService.v();
    paramfr = new bI(PayPalService.f(a), paramfr.u(), a, paramfr.w(), paramfr.v(), paramfr.x(), paramfr.y(), paramfr.z());
    PayPalService.d(a).a(paramfr, PayPalService.a(a).j());
    PayPalService.e(a).a();
  }
  
  public final void b(fc paramfc)
  {
    String str = paramfc.q().b();
    PayPalService.v();
    new StringBuilder("ApproveAndExecuteSfoPaymentRequest Error: ").append(str);
    PayPalService.c(a, paramfc);
  }
  
  public final void b(fe paramfe)
  {
    String str = paramfe.q().b();
    PayPalService.v();
    new StringBuilder("ConsentRequest Error:").append(str);
    Log.e("paypal.sdk", str);
    PayPalService.e(a).a(PayPalService.b(a, paramfe));
  }
  
  public final void b(ff paramff)
  {
    String str = paramff.q().b();
    PayPalService.v();
    new StringBuilder("CreateSfoPaymentRequest Error: ").append(str);
    Log.e("paypal.sdk", str);
    PayPalService.e(a).a(PayPalService.b(a, paramff));
  }
  
  public final void b(fg paramfg)
  {
    String str = paramfg.q().b();
    PayPalService.v();
    new StringBuilder("CreditCardPaymentRequest Error:").append(str);
    PayPalService.c(a, paramfg);
  }
  
  public final void b(fj paramfj)
  {
    String str = paramfj.q().b();
    PayPalService.v();
    new StringBuilder("GetAppInfoRequest Error: ").append(str);
    Log.e("paypal.sdk", str);
    PayPalService.e(a).a(PayPalService.b(a, paramfj));
  }
  
  public final void b(fk paramfk)
  {
    String str = paramfk.q().b();
    PayPalService.v();
    new StringBuilder("LoginChallengeRequest Error:").append(str);
    Log.e("paypal.sdk", str);
    PayPalService.c(a).a(PayPalService.b(a, paramfk));
  }
  
  public final void b(fl paramfl)
  {
    String str = paramfl.q().b();
    PayPalService.v();
    new StringBuilder("LoginRequest Error: ").append(str);
    Log.e("paypal.sdk", str);
    a.i();
    ca localca = a;
    boolean bool = b;
    if (localca.a()) {
      PayPalService.a(a, ej.f, bool, str, paramfl.k(), null);
    }
    for (;;)
    {
      PayPalService.d(a).a();
      if (h)
      {
        a.d().j = g;
        a.d().g = new cy(i);
      }
      PayPalService.c(a).a(PayPalService.b(a, paramfl));
      return;
      PayPalService.a(a, ej.g, bool, str, paramfl.k(), null);
    }
  }
  
  public final void b(fp paramfp)
  {
    PayPalService.a(a, paramfp);
  }
  
  public final void b(fr paramfr)
  {
    paramfr = paramfr.q().b();
    PayPalService.v();
    new StringBuilder("TokenizeCreditCardRequest Error:").append(paramfr);
    Log.e("paypal.sdk", paramfr);
    PayPalService.e(a).a();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.ao
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */