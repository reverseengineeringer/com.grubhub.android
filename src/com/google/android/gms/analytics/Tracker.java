package com.google.android.gms.analytics;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.a;
import com.google.android.gms.analytics.internal.ac;
import com.google.android.gms.analytics.internal.af;
import com.google.android.gms.analytics.internal.an;
import com.google.android.gms.analytics.internal.c;
import com.google.android.gms.analytics.internal.g;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.o;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.q;
import com.google.android.gms.analytics.internal.r;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.analytics.internal.u;
import com.google.android.gms.analytics.internal.v;
import com.google.android.gms.analytics.internal.x;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bc;
import com.google.android.gms.d.bs;
import com.google.android.gms.d.by;
import com.google.android.gms.d.ca;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Random;
import java.util.Set;

public class Tracker
  extends t
{
  private boolean zzIH;
  private final Map<String, String> zzII = new HashMap();
  private final g zzIJ;
  private final n zzIK;
  private d zzIL;
  private o zzIM;
  private final Map<String, String> zzyn = new HashMap();
  
  Tracker(v paramv, String paramString, g paramg)
  {
    super(paramv);
    if (paramString != null) {
      zzyn.put("&tid", paramString);
    }
    zzyn.put("useSecure", "1");
    zzyn.put("&a", Integer.toString(new Random().nextInt(Integer.MAX_VALUE) + 1));
    if (paramg == null) {}
    for (zzIJ = new g("tracking");; zzIJ = paramg)
    {
      zzIK = new n(this, paramv);
      return;
    }
  }
  
  private static void zza(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    aq.a(paramMap2);
    if (paramMap1 == null) {}
    for (;;)
    {
      return;
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap1.next();
        String str = zzb(localEntry);
        if (str != null) {
          paramMap2.put(str, localEntry.getValue());
        }
      }
    }
  }
  
  private static boolean zza(Map.Entry<String, String> paramEntry)
  {
    String str = (String)paramEntry.getKey();
    paramEntry = (String)paramEntry.getValue();
    return (str.startsWith("&")) && (str.length() >= 2);
  }
  
  private static String zzb(Map.Entry<String, String> paramEntry)
  {
    if (!zza(paramEntry)) {
      return null;
    }
    return ((String)paramEntry.getKey()).substring(1);
  }
  
  private static void zzb(Map<String, String> paramMap1, Map<String, String> paramMap2)
  {
    aq.a(paramMap2);
    if (paramMap1 == null) {}
    for (;;)
    {
      return;
      paramMap1 = paramMap1.entrySet().iterator();
      while (paramMap1.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap1.next();
        String str = zzb(localEntry);
        if ((str != null) && (!paramMap2.containsKey(str))) {
          paramMap2.put(str, localEntry.getValue());
        }
      }
    }
  }
  
  private boolean zzho()
  {
    return zzIL != null;
  }
  
  static String zzp(Activity paramActivity)
  {
    aq.a(paramActivity);
    paramActivity = paramActivity.getIntent();
    if (paramActivity == null) {}
    do
    {
      return null;
      paramActivity = paramActivity.getStringExtra("android.intent.extra.REFERRER_NAME");
    } while (TextUtils.isEmpty(paramActivity));
    return paramActivity;
  }
  
  public void enableAdvertisingIdCollection(boolean paramBoolean)
  {
    zzIH = paramBoolean;
  }
  
  public void enableAutoActivityTracking(boolean paramBoolean)
  {
    zzIK.a(paramBoolean);
  }
  
  public void enableExceptionReporting(boolean paramBoolean)
  {
    for (;;)
    {
      try
      {
        if (zzho() == paramBoolean) {
          return;
        }
        if (paramBoolean)
        {
          Context localContext = getContext();
          zzIL = new d(this, Thread.getDefaultUncaughtExceptionHandler(), localContext);
          Thread.setDefaultUncaughtExceptionHandler(zzIL);
          zzaT("Uncaught exceptions will be reported to Google Analytics");
          return;
        }
      }
      finally {}
      Thread.setDefaultUncaughtExceptionHandler(zzIL.b());
      zzaT("Uncaught exceptions will not be reported to Google Analytics");
    }
  }
  
  public String get(String paramString)
  {
    zzia();
    if (TextUtils.isEmpty(paramString)) {}
    do
    {
      return null;
      if (zzyn.containsKey(paramString)) {
        return (String)zzyn.get(paramString);
      }
      if (paramString.equals("&ul")) {
        return p.a(Locale.getDefault());
      }
      if (paramString.equals("&cid")) {
        return zzhV().a();
      }
      if (paramString.equals("&sr")) {
        return zzhY().b();
      }
      if (paramString.equals("&aid")) {
        return zzhX().b().c();
      }
      if (paramString.equals("&an")) {
        return zzhX().b().a();
      }
      if (paramString.equals("&av")) {
        return zzhX().b().b();
      }
    } while (!paramString.equals("&aiid"));
    return zzhX().b().d();
  }
  
  public void send(final Map<String, String> paramMap)
  {
    final long l = zzhP().a();
    if (zzhg().f())
    {
      zzaU("AppOptOut is set to true. Not sending Google Analytics hit");
      return;
    }
    boolean bool1 = zzhg().e();
    final HashMap localHashMap = new HashMap();
    zza(zzyn, localHashMap);
    zza(paramMap, localHashMap);
    final boolean bool2 = p.a((String)zzyn.get("useSecure"), true);
    zzb(zzII, localHashMap);
    zzII.clear();
    paramMap = (String)localHashMap.get("t");
    if (TextUtils.isEmpty(paramMap))
    {
      zzhQ().a(localHashMap, "Missing hit type parameter");
      return;
    }
    final String str = (String)localHashMap.get("tid");
    if (TextUtils.isEmpty(str))
    {
      zzhQ().a(localHashMap, "Missing tracking id parameter");
      return;
    }
    final boolean bool3 = zzhp();
    try
    {
      if (("screenview".equalsIgnoreCase(paramMap)) || ("pageview".equalsIgnoreCase(paramMap)) || ("appview".equalsIgnoreCase(paramMap)) || (TextUtils.isEmpty(paramMap)))
      {
        int j = Integer.parseInt((String)zzyn.get("&a")) + 1;
        int i = j;
        if (j >= Integer.MAX_VALUE) {
          i = 1;
        }
        zzyn.put("&a", Integer.toString(i));
      }
      zzhS().a(new Runnable()
      {
        public void run()
        {
          boolean bool = true;
          if (Tracker.zza(Tracker.this).a()) {
            localHashMap.put("sc", "start");
          }
          p.b(localHashMap, "cid", zzhg().h());
          Object localObject = (String)localHashMap.get("sf");
          if (localObject != null)
          {
            double d1 = p.a((String)localObject, 100.0D);
            if (p.a(d1, (String)localHashMap.get("cid")))
            {
              zzb("Sampling enabled. Hit sampled out. sample rate", Double.valueOf(d1));
              return;
            }
          }
          localObject = Tracker.zzb(Tracker.this);
          if (bool3)
          {
            p.a(localHashMap, "ate", ((a)localObject).a());
            p.a(localHashMap, "adid", ((a)localObject).b());
            localObject = Tracker.zzc(Tracker.this).b();
            p.a(localHashMap, "an", ((by)localObject).a());
            p.a(localHashMap, "av", ((by)localObject).b());
            p.a(localHashMap, "aid", ((by)localObject).c());
            p.a(localHashMap, "aiid", ((by)localObject).d());
            localHashMap.put("v", "1");
            localHashMap.put("_v", u.b);
            p.a(localHashMap, "ul", Tracker.zzd(Tracker.this).a().f());
            p.a(localHashMap, "sr", Tracker.zze(Tracker.this).b());
            if ((!paramMap.equals("transaction")) && (!paramMap.equals("item"))) {
              break label383;
            }
          }
          label383:
          for (int i = 1;; i = 0)
          {
            if ((i != 0) || (Tracker.zzf(Tracker.this).a())) {
              break label388;
            }
            Tracker.zzg(Tracker.this).a(localHashMap, "Too many hits sent too quickly, rate limiting invoked");
            return;
            localHashMap.remove("ate");
            localHashMap.remove("adid");
            break;
          }
          label388:
          long l2 = p.a((String)localHashMap.get("ht"));
          long l1 = l2;
          if (l2 == 0L) {
            l1 = l;
          }
          if (bool2)
          {
            localObject = new c(Tracker.this, localHashMap, l1, str);
            Tracker.zzh(Tracker.this).zzc("Dry run enabled. Would have sent hit", localObject);
            return;
          }
          localObject = (String)localHashMap.get("cid");
          HashMap localHashMap = new HashMap();
          p.a(localHashMap, "uid", localHashMap);
          p.a(localHashMap, "an", localHashMap);
          p.a(localHashMap, "aid", localHashMap);
          p.a(localHashMap, "av", localHashMap);
          p.a(localHashMap, "aiid", localHashMap);
          String str = g;
          if (!TextUtils.isEmpty((CharSequence)localHashMap.get("adid"))) {}
          for (;;)
          {
            localObject = new x(0L, (String)localObject, str, bool, 0L, localHashMap);
            l2 = Tracker.zzi(Tracker.this).a((x)localObject);
            localHashMap.put("_s", String.valueOf(l2));
            localObject = new c(Tracker.this, localHashMap, l1, str);
            Tracker.zzj(Tracker.this).a((c)localObject);
            return;
            bool = false;
          }
        }
      });
      return;
    }
    finally {}
  }
  
  public void set(String paramString1, String paramString2)
  {
    aq.a(paramString1, "Key should be non-null");
    if (TextUtils.isEmpty(paramString1)) {
      return;
    }
    zzyn.put(paramString1, paramString2);
  }
  
  public void setAnonymizeIp(boolean paramBoolean)
  {
    set("&aip", p.a(paramBoolean));
  }
  
  public void setAppId(String paramString)
  {
    set("&aid", paramString);
  }
  
  public void setAppInstallerId(String paramString)
  {
    set("&aiid", paramString);
  }
  
  public void setAppName(String paramString)
  {
    set("&an", paramString);
  }
  
  public void setAppVersion(String paramString)
  {
    set("&av", paramString);
  }
  
  public void setCampaignParamsOnNextHit(Uri paramUri)
  {
    if ((paramUri == null) || (paramUri.isOpaque())) {}
    do
    {
      do
      {
        return;
        paramUri = paramUri.getQueryParameter("referrer");
      } while (TextUtils.isEmpty(paramUri));
      paramUri = Uri.parse("http://hostname/?" + paramUri);
      String str = paramUri.getQueryParameter("utm_id");
      if (str != null) {
        zzII.put("&ci", str);
      }
      str = paramUri.getQueryParameter("anid");
      if (str != null) {
        zzII.put("&anid", str);
      }
      str = paramUri.getQueryParameter("utm_campaign");
      if (str != null) {
        zzII.put("&cn", str);
      }
      str = paramUri.getQueryParameter("utm_content");
      if (str != null) {
        zzII.put("&cc", str);
      }
      str = paramUri.getQueryParameter("utm_medium");
      if (str != null) {
        zzII.put("&cm", str);
      }
      str = paramUri.getQueryParameter("utm_source");
      if (str != null) {
        zzII.put("&cs", str);
      }
      str = paramUri.getQueryParameter("utm_term");
      if (str != null) {
        zzII.put("&ck", str);
      }
      str = paramUri.getQueryParameter("dclid");
      if (str != null) {
        zzII.put("&dclid", str);
      }
      str = paramUri.getQueryParameter("gclid");
      if (str != null) {
        zzII.put("&gclid", str);
      }
      paramUri = paramUri.getQueryParameter("aclid");
    } while (paramUri == null);
    zzII.put("&aclid", paramUri);
  }
  
  public void setClientId(String paramString)
  {
    set("&cid", paramString);
  }
  
  public void setEncoding(String paramString)
  {
    set("&de", paramString);
  }
  
  public void setHostname(String paramString)
  {
    set("&dh", paramString);
  }
  
  public void setLanguage(String paramString)
  {
    set("&ul", paramString);
  }
  
  public void setLocation(String paramString)
  {
    set("&dl", paramString);
  }
  
  public void setPage(String paramString)
  {
    set("&dp", paramString);
  }
  
  public void setReferrer(String paramString)
  {
    set("&dr", paramString);
  }
  
  public void setSampleRate(double paramDouble)
  {
    set("&sf", Double.toString(paramDouble));
  }
  
  public void setScreenColors(String paramString)
  {
    set("&sd", paramString);
  }
  
  public void setScreenName(String paramString)
  {
    set("&cd", paramString);
  }
  
  public void setScreenResolution(int paramInt1, int paramInt2)
  {
    if ((paramInt1 < 0) && (paramInt2 < 0))
    {
      zzaW("Invalid width or height. The values should be non-negative.");
      return;
    }
    set("&sr", paramInt1 + "x" + paramInt2);
  }
  
  public void setSessionTimeout(long paramLong)
  {
    zzIK.a(1000L * paramLong);
  }
  
  public void setTitle(String paramString)
  {
    set("&dt", paramString);
  }
  
  public void setUseSecure(boolean paramBoolean)
  {
    set("useSecure", p.a(paramBoolean));
  }
  
  public void setViewportSize(String paramString)
  {
    set("&vp", paramString);
  }
  
  void zza(o paramo)
  {
    zzaT("Loading Tracker config values");
    zzIM = paramo;
    if (zzIM.a())
    {
      paramo = zzIM.b();
      set("&tid", paramo);
      zza("trackingId loaded", paramo);
    }
    if (zzIM.c())
    {
      paramo = Double.toString(zzIM.d());
      set("&sf", paramo);
      zza("Sample frequency loaded", paramo);
    }
    if (zzIM.e())
    {
      int i = zzIM.f();
      setSessionTimeout(i);
      zza("Session timeout loaded", Integer.valueOf(i));
    }
    boolean bool;
    if (zzIM.g())
    {
      bool = zzIM.h();
      enableAutoActivityTracking(bool);
      zza("Auto activity tracking loaded", Boolean.valueOf(bool));
    }
    if (zzIM.i())
    {
      bool = zzIM.j();
      if (bool) {
        set("&aip", "1");
      }
      zza("Anonymize ip loaded", Boolean.valueOf(bool));
    }
    enableExceptionReporting(zzIM.k());
  }
  
  protected void zzhn()
  {
    zzIK.zza();
    String str = zzhm().b();
    if (str != null) {
      set("&an", str);
    }
    str = zzhm().a();
    if (str != null) {
      set("&av", str);
    }
  }
  
  boolean zzhp()
  {
    return zzIH;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.Tracker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */