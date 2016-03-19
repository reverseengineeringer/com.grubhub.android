package com.google.android.gms.analytics.internal;

import android.content.Context;
import android.database.sqlite.SQLiteException;
import android.text.TextUtils;
import android.util.Pair;
import com.google.android.gms.analytics.AnalyticsReceiver;
import com.google.android.gms.analytics.CampaignTrackingReceiver;
import com.google.android.gms.analytics.a;
import com.google.android.gms.analytics.b;
import com.google.android.gms.analytics.o;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.bo;
import com.google.android.gms.d.bs;
import com.google.android.gms.d.by;
import com.google.android.gms.d.bz;
import com.google.android.gms.d.u;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class ad
  extends t
{
  private boolean a;
  private final aa b;
  private final j c;
  private final zzag d;
  private final y e;
  private long f;
  private final am g;
  private final am h;
  private final n i;
  private long j;
  private boolean k;
  
  protected ad(v paramv, w paramw)
  {
    super(paramv);
    aq.a(paramw);
    f = Long.MIN_VALUE;
    d = paramw.k(paramv);
    b = paramw.m(paramv);
    c = paramw.n(paramv);
    e = paramw.o(paramv);
    i = new n(zzhP());
    g = new am(paramv)
    {
      public void a()
      {
        ad.a(ad.this);
      }
    };
    h = new am(paramv)
    {
      public void a()
      {
        ad.b(ad.this);
      }
    };
  }
  
  private void a(x paramx, bz parambz)
  {
    aq.a(paramx);
    aq.a(parambz);
    Object localObject1 = new o(zzhM());
    ((o)localObject1).b(paramx.c());
    ((o)localObject1).b(paramx.d());
    localObject1 = ((o)localObject1).l();
    com.google.android.gms.d.v localv = (com.google.android.gms.d.v)((bo)localObject1).b(com.google.android.gms.d.v.class);
    localv.a("data");
    localv.b(true);
    ((bo)localObject1).a(parambz);
    u localu = (u)((bo)localObject1).b(u.class);
    by localby = (by)((bo)localObject1).b(by.class);
    Iterator localIterator = paramx.f().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Object localObject2 = (Map.Entry)localIterator.next();
      String str = (String)((Map.Entry)localObject2).getKey();
      localObject2 = (String)((Map.Entry)localObject2).getValue();
      if ("an".equals(str)) {
        localby.a((String)localObject2);
      } else if ("av".equals(str)) {
        localby.b((String)localObject2);
      } else if ("aid".equals(str)) {
        localby.c((String)localObject2);
      } else if ("aiid".equals(str)) {
        localby.d((String)localObject2);
      } else if ("uid".equals(str)) {
        localv.c((String)localObject2);
      } else {
        localu.a(str, (String)localObject2);
      }
    }
    zzb("Sending installation campaign to", paramx.c(), parambz);
    ((bo)localObject1).a(zzhU().a());
    ((bo)localObject1).e();
  }
  
  private boolean b(String paramString)
  {
    return getContext().checkCallingOrSelfPermission(paramString) == 0;
  }
  
  private void n()
  {
    Context localContext = zzhM().b();
    if (!AnalyticsReceiver.a(localContext)) {
      zzaW("AnalyticsReceiver is not registered or is disabled. Register the receiver for reliable dispatching on non-Google Play devices. See http://goo.gl/8Rd3yj for instructions.");
    }
    do
    {
      while (!CampaignTrackingReceiver.a(localContext))
      {
        zzaW("CampaignTrackingReceiver is not registered, not exported or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
        return;
        if (!a.a(localContext)) {
          zzaX("AnalyticsService is not registered or is disabled. Analytics service at risk of not starting. See http://goo.gl/8Rd3yj for instructions.");
        }
      }
    } while (b.a(localContext));
    zzaW("CampaignTrackingService is not registered or is disabled. Installation campaign tracking is not possible. See http://goo.gl/8Rd3yj for instructions.");
  }
  
  private void o()
  {
    a(new ap()
    {
      public void a(Throwable paramAnonymousThrowable)
      {
        k();
      }
    });
  }
  
  private void p()
  {
    try
    {
      b.f();
      k();
      h.a(zzhR().C());
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        zzd("Failed to delete stale hits", localSQLiteException);
      }
    }
  }
  
  private boolean q()
  {
    if (k) {}
    while (((zzhR().a()) && (!zzhR().b())) || (l() <= 0L)) {
      return false;
    }
    return true;
  }
  
  private void r()
  {
    ao localao = zzhT();
    if (!localao.a()) {}
    long l;
    do
    {
      do
      {
        return;
      } while (localao.b());
      l = j();
    } while ((l == 0L) || (Math.abs(zzhP().a() - l) > zzhR().k()));
    zza("Dispatch alarm scheduled (ms)", Long.valueOf(zzhR().j()));
    localao.c();
  }
  
  private void s()
  {
    r();
    long l2 = l();
    long l1 = zzhU().c();
    if (l1 != 0L)
    {
      l1 = l2 - Math.abs(zzhP().a() - l1);
      if (l1 <= 0L) {}
    }
    for (;;)
    {
      zza("Dispatch scheduled (ms)", Long.valueOf(l1));
      if (!g.c()) {
        break;
      }
      l1 = Math.max(1L, l1 + g.b());
      g.b(l1);
      return;
      l1 = Math.min(zzhR().h(), l2);
      continue;
      l1 = Math.min(zzhR().h(), l2);
    }
    g.a(l1);
  }
  
  private void t()
  {
    u();
    v();
  }
  
  private void u()
  {
    if (g.c()) {
      zzaT("All hits dispatched or no network/service. Going to power save mode");
    }
    g.d();
  }
  
  private void v()
  {
    ao localao = zzhT();
    if (localao.b()) {
      localao.d();
    }
  }
  
  public long a(x paramx, boolean paramBoolean)
  {
    aq.a(paramx);
    zzia();
    zzhO();
    long l;
    for (;;)
    {
      try
      {
        b.a();
        b.a(paramx.a(), paramx.b());
        l = b.a(paramx.a(), paramx.b(), paramx.c());
        if (!paramBoolean)
        {
          paramx.a(l);
          b.a(paramx);
          b.b();
        }
      }
      catch (SQLiteException paramx)
      {
        paramx = paramx;
        zze("Failed to update Analytics property", paramx);
        try
        {
          b.c();
          return -1L;
        }
        catch (SQLiteException paramx)
        {
          zze("Failed to end transaction", paramx);
          return -1L;
        }
      }
      finally {}
      try
      {
        b.c();
        return l;
      }
      catch (SQLiteException paramx)
      {
        zze("Failed to end transaction", paramx);
        return l;
      }
      paramx.a(1L + l);
    }
    try
    {
      b.c();
      throw paramx;
    }
    catch (SQLiteException localSQLiteException)
    {
      for (;;)
      {
        zze("Failed to end transaction", localSQLiteException);
      }
    }
  }
  
  void a()
  {
    zzia();
    if (!a) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "Analytics backend already started");
      a = true;
      if (!zzhR().a()) {
        n();
      }
      zzhS().a(new Runnable()
      {
        public void run()
        {
          b();
        }
      });
      return;
    }
  }
  
  public void a(ap paramap)
  {
    a(paramap, j);
  }
  
  public void a(final ap paramap, final long paramLong)
  {
    bs.d();
    zzia();
    long l1 = -1L;
    long l2 = zzhU().c();
    if (l2 != 0L) {
      l1 = Math.abs(zzhP().a() - l2);
    }
    zzb("Dispatching local hits. Elapsed time since last dispatch (ms)", Long.valueOf(l1));
    if (!zzhR().a()) {
      f();
    }
    try
    {
      if (h())
      {
        zzhS().a(new Runnable()
        {
          public void run()
          {
            a(paramap, paramLong);
          }
        });
        return;
      }
      zzhU().d();
      k();
      if (paramap != null) {
        paramap.a(null);
      }
      if (j != paramLong)
      {
        d.c();
        return;
      }
    }
    catch (Throwable localThrowable)
    {
      zze("Local dispatch failed", localThrowable);
      zzhU().d();
      k();
      if (paramap != null) {
        paramap.a(localThrowable);
      }
    }
  }
  
  public void a(c paramc)
  {
    aq.a(paramc);
    bs.d();
    zzia();
    if (k) {
      zzaU("Hit delivery not possible. Missing network permissions. See http://goo.gl/8Rd3yj for instructions");
    }
    for (;;)
    {
      paramc = b(paramc);
      f();
      if (!e.a(paramc)) {
        break;
      }
      zzaU("Hit sent to the device AnalyticsService for delivery");
      return;
      zza("Delivering hit", paramc);
    }
    if (zzhR().a())
    {
      zzhQ().a(paramc, "Service unavailable on package side");
      return;
    }
    try
    {
      b.a(paramc);
      k();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      zze("Delivery failed to save hit to a database", localSQLiteException);
      zzhQ().a(paramc, "deliver: failed to insert hit to database");
    }
  }
  
  protected void a(x paramx)
  {
    zzhO();
    zzb("Sending first hit to property", paramx.c());
    if (zzhU().b().a(zzhR().F())) {}
    do
    {
      return;
      localObject = zzhU().e();
    } while (TextUtils.isEmpty((CharSequence)localObject));
    Object localObject = p.a(zzhQ(), (String)localObject);
    zzb("Found relevant installation campaign", localObject);
    a(paramx, (bz)localObject);
  }
  
  public void a(String paramString)
  {
    aq.a(paramString);
    zzhO();
    zzhN();
    bz localbz = p.a(zzhQ(), paramString);
    if (localbz == null) {
      zzd("Parsing failed. Ignoring invalid campaign data", paramString);
    }
    for (;;)
    {
      return;
      String str = zzhU().e();
      if (paramString.equals(str))
      {
        zzaW("Ignoring duplicate install campaign");
        return;
      }
      if (!TextUtils.isEmpty(str))
      {
        zzd("Ignoring multiple install campaigns. original, new", str, paramString);
        return;
      }
      zzhU().a(paramString);
      if (zzhU().b().a(zzhR().F()))
      {
        zzd("Campaign received too late, ignoring", localbz);
        return;
      }
      zzb("Received installation campaign", localbz);
      paramString = b.d(0L).iterator();
      while (paramString.hasNext()) {
        a((x)paramString.next(), localbz);
      }
    }
  }
  
  public void a(boolean paramBoolean)
  {
    k();
  }
  
  c b(c paramc)
  {
    if (!TextUtils.isEmpty(paramc.h())) {}
    do
    {
      return paramc;
      localObject2 = zzhU().f().a();
    } while (localObject2 == null);
    Object localObject1 = (Long)second;
    Object localObject2 = (String)first;
    localObject1 = localObject1 + ":" + (String)localObject2;
    localObject2 = new HashMap(paramc.b());
    ((Map)localObject2).put("_m", localObject1);
    return c.a(this, paramc, (Map)localObject2);
  }
  
  protected void b()
  {
    zzia();
    zzhU().a();
    if (!b("android.permission.ACCESS_NETWORK_STATE"))
    {
      zzaX("Missing required android.permission.ACCESS_NETWORK_STATE. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
      m();
    }
    if (!b("android.permission.INTERNET"))
    {
      zzaX("Missing required android.permission.INTERNET. Google Analytics disabled. See http://goo.gl/8Rd3yj for instructions");
      m();
    }
    if (a.a(getContext())) {
      zzaT("AnalyticsService registered in the app manifest and enabled");
    }
    for (;;)
    {
      if ((!k) && (!zzhR().a()) && (!b.e())) {
        f();
      }
      k();
      return;
      if (zzhR().a()) {
        zzaX("Device AnalyticsService not registered! Hits will not be delivered reliably.");
      } else {
        zzaW("AnalyticsService not registered in the app manifest. Hits might not be delivered reliably. See http://goo.gl/8Rd3yj for instructions.");
      }
    }
  }
  
  void c()
  {
    zzhO();
    j = zzhP().a();
  }
  
  protected void d()
  {
    zzhO();
    if (!zzhR().a()) {
      g();
    }
  }
  
  public void e()
  {
    bs.d();
    zzia();
    zzaT("Service disconnected");
  }
  
  protected void f()
  {
    if (k) {}
    do
    {
      long l;
      do
      {
        do
        {
          return;
        } while ((!zzhR().c()) || (e.a()));
        l = zzhR().x();
      } while (!i.a(l));
      i.a();
      zzaT("Connecting to service");
    } while (!e.b());
    zzaT("Connected to service");
    i.b();
    d();
  }
  
  public void g()
  {
    bs.d();
    zzia();
    zzhN();
    if (!zzhR().c()) {
      zzaW("Service client disabled. Can't dispatch local hits to device AnalyticsService");
    }
    if (!e.a()) {
      zzaT("Service not connected");
    }
    while (b.e()) {
      return;
    }
    zzaT("Dispatching local hits to device AnalyticsService");
    for (;;)
    {
      try
      {
        List localList = b.b(zzhR().l());
        if (!localList.isEmpty()) {
          break label126;
        }
        k();
        return;
      }
      catch (SQLiteException localSQLiteException1)
      {
        zze("Failed to read hits from store", localSQLiteException1);
        t();
        return;
      }
      label107:
      Object localObject;
      localSQLiteException1.remove(localObject);
      try
      {
        b.c(((c)localObject).c());
        label126:
        if (!localSQLiteException1.isEmpty())
        {
          localObject = (c)localSQLiteException1.get(0);
          if (e.a((c)localObject)) {
            break label107;
          }
          k();
          return;
        }
      }
      catch (SQLiteException localSQLiteException2)
      {
        zze("Failed to remove hit that was send for delivery", localSQLiteException2);
        t();
      }
    }
  }
  
  protected boolean h()
  {
    int n = 1;
    bs.d();
    zzia();
    zzaT("Dispatching a batch of local hits");
    int m;
    if ((!e.a()) && (!zzhR().a()))
    {
      m = 1;
      if (c.a()) {
        break label70;
      }
    }
    for (;;)
    {
      if ((m == 0) || (n == 0)) {
        break label75;
      }
      zzaT("No network or service available. Will retry later");
      return false;
      m = 0;
      break;
      label70:
      n = 0;
    }
    label75:
    long l3 = Math.max(zzhR().l(), zzhR().m());
    ArrayList localArrayList = new ArrayList();
    l1 = 0L;
    for (;;)
    {
      try
      {
        b.a();
        localArrayList.clear();
        try
        {
          localList = b.b(l3);
          if (localList.isEmpty())
          {
            zzaT("Store is empty, nothing to dispatch");
            t();
            try
            {
              b.b();
              b.c();
              return false;
            }
            catch (SQLiteException localSQLiteException1)
            {
              zze("Failed to commit local dispatch transaction", localSQLiteException1);
              t();
              return false;
            }
          }
          zza("Hits loaded from store. count", Integer.valueOf(localList.size()));
          localObject2 = localList.iterator();
          if (((Iterator)localObject2).hasNext())
          {
            if (((c)((Iterator)localObject2).next()).c() != l1) {
              continue;
            }
            zzd("Database contains successfully uploaded hit", Long.valueOf(l1), Integer.valueOf(localList.size()));
            t();
            try
            {
              b.b();
              b.c();
              return false;
            }
            catch (SQLiteException localSQLiteException2)
            {
              zze("Failed to commit local dispatch transaction", localSQLiteException2);
              t();
              return false;
            }
          }
          l2 = l1;
        }
        catch (SQLiteException localSQLiteException3)
        {
          zzd("Failed to read hits from persisted store", localSQLiteException3);
          t();
          try
          {
            b.b();
            b.c();
            return false;
          }
          catch (SQLiteException localSQLiteException4)
          {
            zze("Failed to commit local dispatch transaction", localSQLiteException4);
            t();
            return false;
          }
          l2 = l1;
          if (!e.a()) {
            continue;
          }
        }
        if (zzhR().a()) {
          continue;
        }
        zzaT("Service connected, sending hits to the service");
        l2 = l1;
        if (localList.isEmpty()) {
          continue;
        }
        localObject2 = (c)localList.get(0);
        if (e.a((c)localObject2)) {
          continue;
        }
      }
      finally
      {
        long l2;
        try
        {
          List localList;
          Object localObject2;
          Iterator localIterator;
          b.b();
          b.c();
          throw ((Throwable)localObject1);
        }
        catch (SQLiteException localSQLiteException11)
        {
          zze("Failed to commit local dispatch transaction", localSQLiteException11);
          t();
          return false;
        }
        l1 = l2;
        continue;
      }
      l2 = l1;
      if (c.a())
      {
        localObject2 = c.a(localList);
        localIterator = ((List)localObject2).iterator();
        if (localIterator.hasNext())
        {
          l1 = Math.max(l1, ((Long)localIterator.next()).longValue());
          continue;
          l1 = Math.max(l1, ((c)localObject2).c());
          localList.remove(localObject2);
          zzb("Hit sent do device AnalyticsService for delivery", localObject2);
          try
          {
            b.c(((c)localObject2).c());
            localSQLiteException4.add(Long.valueOf(((c)localObject2).c()));
          }
          catch (SQLiteException localSQLiteException5)
          {
            zze("Failed to remove hit that was send for delivery", localSQLiteException5);
            t();
            try
            {
              b.b();
              b.c();
              return false;
            }
            catch (SQLiteException localSQLiteException6)
            {
              zze("Failed to commit local dispatch transaction", localSQLiteException6);
              t();
              return false;
            }
          }
        }
        localList.removeAll((Collection)localObject2);
      }
      try
      {
        b.a((List)localObject2);
        localSQLiteException6.addAll((Collection)localObject2);
        l2 = l1;
        boolean bool = localSQLiteException6.isEmpty();
        if (bool) {
          try
          {
            b.b();
            b.c();
            return false;
          }
          catch (SQLiteException localSQLiteException7)
          {
            zze("Failed to commit local dispatch transaction", localSQLiteException7);
            t();
            return false;
          }
        }
      }
      catch (SQLiteException localSQLiteException8)
      {
        zze("Failed to remove successfully uploaded hits", localSQLiteException8);
        t();
        try
        {
          b.b();
          b.c();
          return false;
        }
        catch (SQLiteException localSQLiteException9)
        {
          zze("Failed to commit local dispatch transaction", localSQLiteException9);
          t();
          return false;
        }
        try
        {
          b.b();
          b.c();
          l1 = l2;
        }
        catch (SQLiteException localSQLiteException10)
        {
          zze("Failed to commit local dispatch transaction", localSQLiteException10);
          t();
          return false;
        }
      }
    }
  }
  
  public void i()
  {
    bs.d();
    zzia();
    zzaU("Sync dispatching local hits");
    long l = j;
    if (!zzhR().a()) {
      f();
    }
    try
    {
      while (h()) {}
      zzhU().d();
      k();
      if (j != l) {
        d.c();
      }
      return;
    }
    catch (Throwable localThrowable)
    {
      zze("Sync local dispatch failed", localThrowable);
      k();
    }
  }
  
  public long j()
  {
    bs.d();
    zzia();
    try
    {
      long l = b.g();
      return l;
    }
    catch (SQLiteException localSQLiteException)
    {
      zze("Failed to get min/max hit times from local store", localSQLiteException);
    }
    return 0L;
  }
  
  public void k()
  {
    zzhM().s();
    zzia();
    if (!q())
    {
      d.b();
      t();
      return;
    }
    if (b.e())
    {
      d.b();
      t();
      return;
    }
    if (!((Boolean)ar.J.a()).booleanValue()) {
      d.a();
    }
    for (boolean bool = d.e(); bool; bool = true)
    {
      s();
      return;
    }
    t();
    r();
  }
  
  public long l()
  {
    long l;
    if (f != Long.MIN_VALUE) {
      l = f;
    }
    do
    {
      return l;
      l = zzhR().i();
    } while (!zzhm().e());
    return zzhm().f() * 1000L;
  }
  
  public void m()
  {
    zzia();
    zzhO();
    k = true;
    e.c();
    k();
  }
  
  protected void zzhn()
  {
    b.zza();
    c.zza();
    e.zza();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */