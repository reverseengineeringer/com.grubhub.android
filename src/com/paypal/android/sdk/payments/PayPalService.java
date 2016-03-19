package com.paypal.android.sdk.payments;

import android.app.Service;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import android.os.IBinder;
import android.util.Log;
import com.paypal.android.sdk.ac;
import com.paypal.android.sdk.ad;
import com.paypal.android.sdk.ah;
import com.paypal.android.sdk.bI;
import com.paypal.android.sdk.bL;
import com.paypal.android.sdk.bN;
import com.paypal.android.sdk.ca;
import com.paypal.android.sdk.cj;
import com.paypal.android.sdk.ck;
import com.paypal.android.sdk.cm;
import com.paypal.android.sdk.cn;
import com.paypal.android.sdk.co;
import com.paypal.android.sdk.cy;
import com.paypal.android.sdk.da;
import com.paypal.android.sdk.db;
import com.paypal.android.sdk.dd;
import com.paypal.android.sdk.dl;
import com.paypal.android.sdk.dn;
import com.paypal.android.sdk.dp;
import com.paypal.android.sdk.dv;
import com.paypal.android.sdk.dx;
import com.paypal.android.sdk.dz;
import com.paypal.android.sdk.ee;
import com.paypal.android.sdk.ef;
import com.paypal.android.sdk.ei;
import com.paypal.android.sdk.ej;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.ev;
import com.paypal.android.sdk.fe;
import com.paypal.android.sdk.fh;
import com.paypal.android.sdk.fi;
import com.paypal.android.sdk.fj;
import com.paypal.android.sdk.fk;
import com.paypal.android.sdk.fl;
import com.paypal.android.sdk.fp;
import com.paypal.android.sdk.fq;
import com.paypal.android.sdk.fs;
import com.paypal.android.sdk.fu;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;

public final class PayPalService
  extends Service
{
  static final ExecutorService a = dl.a();
  private static final String c = PayPalService.class.getSimpleName();
  private static Intent s;
  bI b;
  private ef d;
  private cm e;
  private PayPalConfiguration f;
  private boolean g;
  private af h = new af();
  private af i = new af();
  private cf j = new by(this);
  private String k;
  private ad l;
  private am m;
  private ck n;
  private co o;
  private List p = new ArrayList();
  private boolean q = true;
  private boolean r = true;
  private final BroadcastReceiver t = new aC(this);
  private final IBinder u = new al(this);
  
  public static void a(Context paramContext)
  {
    Log.w("paypal.sdk", "clearing user data");
    a.submit(new ag(paramContext));
  }
  
  private void a(Intent paramIntent)
  {
    s = paramIntent;
    new StringBuilder("init:").append(b(paramIntent));
    if (f == null)
    {
      f = ((PayPalConfiguration)paramIntent.getParcelableExtra("com.paypal.android.sdk.paypalConfiguration"));
      if (f == null) {
        throw new RuntimeException("Missing EXTRA_PAYPAL_CONFIGURATION. To avoid this error, set EXTRA_PAYPAL_CONFIGURATION in both PayPalService, and the initializing activity.");
      }
    }
    if (!f.n()) {
      throw new RuntimeException("Service extras invalid.  Please check the docs.");
    }
    Object localObject2 = f.b();
    Object localObject1;
    int i1;
    label162:
    boolean bool1;
    label186:
    int i2;
    if (cj.c((String)localObject2))
    {
      localObject1 = "https://api-m.paypal.com/v1/";
      o = new co(n, f.b());
      localObject1 = b((String)localObject2, (String)localObject1);
      if (l == null)
      {
        if ((!w()) || (!paramIntent.hasExtra("com.paypal.android.sdk.mockNetworkDelay"))) {
          break label583;
        }
        i1 = paramIntent.getIntExtra("com.paypal.android.sdk.mockNetworkDelay", 500);
        if ((!w()) || (!paramIntent.hasExtra("com.paypal.android.sdk.mockEnable2fa"))) {
          break label590;
        }
        bool1 = paramIntent.getBooleanExtra("com.paypal.android.sdk.mockEnable2fa", false);
        if ((!w()) || (!paramIntent.hasExtra("com.paypal.android.sdk.mock2faPhoneNumberCount"))) {
          break label596;
        }
        i2 = paramIntent.getIntExtra("com.paypal.android.sdk.mock2faPhoneNumberCount", 1);
        label209:
        q = true;
        if ((w()) && (paramIntent.hasExtra("com.paypal.android.sdk.enableAuthenticator"))) {
          q = paramIntent.getBooleanExtra("com.paypal.android.sdk.enableAuthenticator", true);
        }
        if ((w()) && (paramIntent.hasExtra("com.paypal.android.sdk.enableAuthenticatorSecurity"))) {
          r = paramIntent.getBooleanExtra("com.paypal.android.sdk.enableAuthenticatorSecurity", true);
        }
        if ((!w()) || (!paramIntent.hasExtra("com.paypal.android.sdk.enableStageSsl"))) {
          break label601;
        }
      }
    }
    label583:
    label590:
    label596:
    label601:
    for (boolean bool2 = paramIntent.getBooleanExtra("com.paypal.android.sdk.enableStageSsl", true);; bool2 = true)
    {
      l = new ad(n, (ac)localObject1, b());
      l.a(new da(new ao(this, (byte)0)));
      localObject1 = new fs(l, i1, bool1, i2);
      localObject2 = new dp(n, f.b(), b(), l, 90000, b().b(), ah.a(b()), bool2);
      localObject1 = new dv(f.b(), l, (dn)localObject1, (dp)localObject2);
      l.a((dv)localObject1);
      ek.b(f.a());
      if (e == null) {
        e = y();
      }
      if (!f.i()) {
        a(n.f());
      }
      k = paramIntent.getComponent().getPackageName();
      a(ej.a);
      z();
      return;
      if (cj.b((String)localObject2))
      {
        localObject1 = "https://api-m.sandbox.paypal.com/v1/";
        break;
      }
      if (cj.a((String)localObject2))
      {
        localObject1 = null;
        break;
      }
      if ((w()) && (paramIntent.hasExtra("com.paypal.android.sdk.baseEnvironmentUrl")))
      {
        localObject1 = paramIntent.getStringExtra("com.paypal.android.sdk.baseEnvironmentUrl");
        break;
      }
      throw new RuntimeException("Invalid environment selected:" + (String)localObject2);
      i1 = 500;
      break label162;
      bool1 = false;
      break label186;
      i2 = 1;
      break label209;
    }
  }
  
  private void a(dz paramdz)
  {
    l.b(paramdz);
  }
  
  private void a(ej paramej, boolean paramBoolean, String paramString1, String paramString2, String paramString3)
  {
    j.a(paramej, paramBoolean, paramString1, paramString2, paramString3);
  }
  
  private static ac b(String paramString1, String paramString2)
  {
    ac localac = new ac();
    localac.a(paramString1);
    localac.b(paramString2);
    localac.a(new HashMap());
    if (paramString2 != null)
    {
      if (!paramString2.startsWith("https://")) {
        throw new RuntimeException(paramString2 + " does not start with 'https://', ignoring " + paramString1);
      }
      paramString1 = paramString2;
      if (!paramString2.endsWith("/"))
      {
        new StringBuilder().append(paramString2).append(" does not end with a slash, adding one.");
        paramString1 = paramString2 + "/";
      }
      paramString2 = ee.d().iterator();
      while (paramString2.hasNext())
      {
        dx localdx = (dx)paramString2.next();
        localac.c().put(localdx.a(), paramString1 + localdx.c());
      }
    }
    return localac;
  }
  
  private an b(dz paramdz)
  {
    return new an(this, paramdz.q().b(), paramdz.s(), paramdz.q().a());
  }
  
  private static String b(Intent paramIntent)
  {
    if (paramIntent == null) {
      return "Intent = null";
    }
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("Intent{");
    localStringBuilder.append("action:" + paramIntent.getAction());
    localStringBuilder.append(", cmp:" + paramIntent.getComponent() + ", ");
    if (paramIntent.getExtras() == null) {
      localStringBuilder.append("null extras");
    }
    for (;;)
    {
      localStringBuilder.append("}");
      return localStringBuilder.toString();
      localStringBuilder.append("extras:");
      Iterator localIterator = paramIntent.getExtras().keySet().iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        localStringBuilder.append("(" + str + ":" + paramIntent.getExtras().get(str) + ")");
      }
    }
  }
  
  private void b(ej paramej, String paramString1, String paramString2)
  {
    a(paramej, false, paramString1, paramString2, null);
  }
  
  private static boolean w()
  {
    return true;
  }
  
  private boolean x()
  {
    return (f != null) && (e != null);
  }
  
  private static cm y()
  {
    return new cm();
  }
  
  private void z()
  {
    a(new ai(this), false);
  }
  
  protected final String a()
  {
    return l.e();
  }
  
  final void a(int paramInt)
  {
    l.b(new fk(l, b(), l.c(), f.j(), e.j, (String)new ArrayList(e.g.a.keySet()).get(paramInt)));
  }
  
  public final void a(com.paypal.android.sdk.ag paramag)
  {
    if (e)
    {
      a(new fq(l, b(), paramag));
      return;
    }
    a(new fi(l, b(), ei.a(paramag)));
  }
  
  final void a(ca paramca, String paramString1, boolean paramBoolean1, String paramString2, boolean paramBoolean2, String paramString3)
  {
    l.b(new fl(l, b(), l.c(), f.j(), paramca, paramString1, e.j, paramBoolean1, paramString2, paramBoolean2, paramString3));
  }
  
  final void a(ca paramca, boolean paramBoolean1, String paramString1, boolean paramBoolean2, String paramString2)
  {
    l.b(new fl(l, b(), l.c(), f.j(), paramca, paramBoolean1, paramString1, paramBoolean2, paramString2));
  }
  
  final void a(ej paramej)
  {
    a(paramej, false, null, null, null);
  }
  
  final void a(ej paramej, Boolean paramBoolean)
  {
    a(paramej, paramBoolean.booleanValue(), null, null, null);
  }
  
  final void a(ej paramej, Boolean paramBoolean, String paramString)
  {
    a(paramej, paramBoolean.booleanValue(), null, paramString, null);
  }
  
  final void a(ej paramej, String paramString)
  {
    a(paramej, false, null, paramString, null);
  }
  
  final void a(ej paramej, String paramString1, String paramString2)
  {
    a(paramej, false, null, paramString1, paramString2);
  }
  
  final void a(ak paramak)
  {
    h.a(paramak);
  }
  
  final void a(am paramam, boolean paramBoolean)
  {
    if (paramBoolean) {
      e.c = null;
    }
    m = paramam;
    if (g) {}
    while (e.a()) {
      return;
    }
    g = true;
    a(ej.b);
    l.b(new fp(f.b(), l, b(), f.j()));
  }
  
  public final void a(String paramString1, String paramString2)
  {
    a(new fh(l, b(), paramString1, paramString2));
  }
  
  final void a(List paramList)
  {
    l.b(new fe(l, b(), l.c(), f.j(), e.f.b(), e.j, paramList));
  }
  
  protected final boolean a(ap paramap)
  {
    if (x()) {
      return true;
    }
    p.add(paramap);
    return false;
  }
  
  final ef b()
  {
    if (d == null) {
      d = new cg();
    }
    return d;
  }
  
  final void b(ak paramak)
  {
    i.a(paramak);
  }
  
  protected final ad c()
  {
    return l;
  }
  
  protected final cm d()
  {
    return e;
  }
  
  final PayPalConfiguration e()
  {
    return f;
  }
  
  protected final String f()
  {
    return f.b();
  }
  
  protected final String g()
  {
    return f.j();
  }
  
  final void h()
  {
    q();
    i();
    o.a();
    r();
  }
  
  final void i()
  {
    e.h = null;
    cn.a(f.b());
    e.e = null;
    e.d = null;
  }
  
  final boolean j()
  {
    return e.a();
  }
  
  final boolean k()
  {
    cm localcm = e;
    return (h != null) && (h.b());
  }
  
  final boolean l()
  {
    return (e.f != null) && (e.j != null);
  }
  
  final void m()
  {
    i.b();
  }
  
  final void n()
  {
    h.b();
  }
  
  final void o()
  {
    m = null;
  }
  
  public final IBinder onBind(Intent paramIntent)
  {
    new StringBuilder("onBind(").append(b(paramIntent)).append(")");
    if (!x())
    {
      if (s != null) {
        break label47;
      }
      a(paramIntent);
    }
    for (;;)
    {
      return u;
      label47:
      a(s);
    }
  }
  
  public final void onCreate()
  {
    Log.w("paypal.sdk", PayPalService.class.getSimpleName() + " created. " + b().b());
    new cg();
    n = new ck(this, "AndroidBasePrefs");
    db.a(n);
    dd.a(n);
    fu.a(a, this, n, "2.9.10");
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.paypal.android.sdk.clearAllUserData");
    e.a(this).a(t, localIntentFilter);
  }
  
  public final void onDestroy()
  {
    if (l != null)
    {
      l.a();
      l.b();
      l = null;
    }
    try
    {
      e.a(this).a(t);
      new StringBuilder("service destroyed: ").append(this);
      return;
    }
    catch (Throwable localThrowable)
    {
      for (;;)
      {
        new StringBuilder("ignoring:").append(localThrowable.getMessage());
      }
    }
  }
  
  public final void onRebind(Intent paramIntent)
  {
    super.onRebind(paramIntent);
    new StringBuilder("onRebind(").append(b(paramIntent)).append(")");
  }
  
  public final int onStartCommand(Intent paramIntent, int paramInt1, int paramInt2)
  {
    new StringBuilder("onStartCommand(").append(b(paramIntent)).append(", ").append(paramInt1).append(", ").append(paramInt2).append(")");
    if (!x())
    {
      new ev(this).a();
      if ((paramIntent == null) || (paramIntent.getExtras() == null)) {
        throw new RuntimeException("Service extras required. Please see the docs.");
      }
      a(paramIntent);
    }
    if (p.size() > 0)
    {
      paramIntent = p.iterator();
      while (paramIntent.hasNext()) {
        ((ap)paramIntent.next()).a();
      }
      p.clear();
    }
    return 3;
  }
  
  public final boolean onUnbind(Intent paramIntent)
  {
    new StringBuilder("onUnbind(").append(b(paramIntent)).append(")");
    return true;
  }
  
  final void p()
  {
    l.b(new fj(l, b(), l.c(), e.c.a(), f.j()));
  }
  
  final void q()
  {
    b = o.a(f.j());
    o.b();
    if ((b != null) && (e.c != null))
    {
      a(e.c.a(), b.e());
      b = null;
    }
  }
  
  final void r()
  {
    if ((f != null) && (f.n()))
    {
      e = y();
      z();
    }
  }
  
  protected final String s()
  {
    return k;
  }
  
  final boolean t()
  {
    return q;
  }
  
  final boolean u()
  {
    return r;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.PayPalService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */