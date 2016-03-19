package com.google.android.gms.analytics;

import android.text.TextUtils;
import com.google.android.gms.analytics.internal.a;
import com.google.android.gms.analytics.internal.ac;
import com.google.android.gms.analytics.internal.an;
import com.google.android.gms.analytics.internal.c;
import com.google.android.gms.analytics.internal.g;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.r;
import com.google.android.gms.analytics.internal.u;
import com.google.android.gms.analytics.internal.x;
import com.google.android.gms.d.by;
import com.google.android.gms.d.ca;
import java.util.HashMap;
import java.util.Map;

class Tracker$1
  implements Runnable
{
  Tracker$1(Tracker paramTracker, Map paramMap, boolean paramBoolean1, String paramString1, long paramLong, boolean paramBoolean2, boolean paramBoolean3, String paramString2) {}
  
  public void run()
  {
    boolean bool = true;
    if (Tracker.zza(h).a()) {
      a.put("sc", "start");
    }
    p.b(a, "cid", h.zzhg().h());
    Object localObject = (String)a.get("sf");
    if (localObject != null)
    {
      double d1 = p.a((String)localObject, 100.0D);
      if (p.a(d1, (String)a.get("cid")))
      {
        h.zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(d1));
        return;
      }
    }
    localObject = Tracker.zzb(h);
    if (b)
    {
      p.a(a, "ate", ((a)localObject).a());
      p.a(a, "adid", ((a)localObject).b());
      localObject = Tracker.zzc(h).b();
      p.a(a, "an", ((by)localObject).a());
      p.a(a, "av", ((by)localObject).b());
      p.a(a, "aid", ((by)localObject).c());
      p.a(a, "aiid", ((by)localObject).d());
      a.put("v", "1");
      a.put("_v", u.b);
      p.a(a, "ul", Tracker.zzd(h).a().f());
      p.a(a, "sr", Tracker.zze(h).b());
      if ((!c.equals("transaction")) && (!c.equals("item"))) {
        break label383;
      }
    }
    label383:
    for (int i = 1;; i = 0)
    {
      if ((i != 0) || (Tracker.zzf(h).a())) {
        break label388;
      }
      Tracker.zzg(h).a(a, "Too many hits sent too quickly, rate limiting invoked");
      return;
      a.remove("ate");
      a.remove("adid");
      break;
    }
    label388:
    long l2 = p.a((String)a.get("ht"));
    long l1 = l2;
    if (l2 == 0L) {
      l1 = d;
    }
    if (e)
    {
      localObject = new c(h, a, l1, f);
      Tracker.zzh(h).zzc("Dry run enabled. Would have sent hit", localObject);
      return;
    }
    localObject = (String)a.get("cid");
    HashMap localHashMap = new HashMap();
    p.a(localHashMap, "uid", a);
    p.a(localHashMap, "an", a);
    p.a(localHashMap, "aid", a);
    p.a(localHashMap, "av", a);
    p.a(localHashMap, "aiid", a);
    String str = g;
    if (!TextUtils.isEmpty((CharSequence)a.get("adid"))) {}
    for (;;)
    {
      localObject = new x(0L, (String)localObject, str, bool, 0L, localHashMap);
      l2 = Tracker.zzi(h).a((x)localObject);
      a.put("_s", String.valueOf(l2));
      localObject = new c(h, a, l1, f);
      Tracker.zzj(h).a((c)localObject);
      return;
      bool = false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */