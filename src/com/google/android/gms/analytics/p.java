package com.google.android.gms.analytics;

import android.net.Uri;
import android.net.Uri.Builder;
import android.text.TextUtils;
import com.google.android.gms.analytics.a.a;
import com.google.android.gms.analytics.a.b;
import com.google.android.gms.analytics.internal.i;
import com.google.android.gms.analytics.internal.r;
import com.google.android.gms.analytics.internal.x;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.d.bo;
import com.google.android.gms.d.bx;
import com.google.android.gms.d.by;
import com.google.android.gms.d.bz;
import com.google.android.gms.d.ca;
import com.google.android.gms.d.cb;
import com.google.android.gms.d.cc;
import com.google.android.gms.d.cd;
import com.google.android.gms.d.ce;
import com.google.android.gms.d.cf;
import com.google.android.gms.d.cg;
import com.google.android.gms.d.t;
import java.text.DecimalFormat;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class p
  extends com.google.android.gms.analytics.internal.s
  implements bx
{
  private static DecimalFormat a;
  private final com.google.android.gms.analytics.internal.v b;
  private final String c;
  private final Uri d;
  private final boolean e;
  private final boolean f;
  
  public p(com.google.android.gms.analytics.internal.v paramv, String paramString)
  {
    this(paramv, paramString, true, false);
  }
  
  public p(com.google.android.gms.analytics.internal.v paramv, String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(paramv);
    aq.a(paramString);
    b = paramv;
    c = paramString;
    e = paramBoolean1;
    f = paramBoolean2;
    d = a(c);
  }
  
  static Uri a(String paramString)
  {
    aq.a(paramString);
    Uri.Builder localBuilder = new Uri.Builder();
    localBuilder.scheme("uri");
    localBuilder.authority("google-analytics.com");
    localBuilder.path(paramString);
    return localBuilder.build();
  }
  
  static String a(double paramDouble)
  {
    if (a == null) {
      a = new DecimalFormat("0.######");
    }
    return a.format(paramDouble);
  }
  
  private static String a(Object paramObject)
  {
    if (paramObject == null) {
      paramObject = null;
    }
    String str;
    do
    {
      return (String)paramObject;
      if (!(paramObject instanceof String)) {
        break;
      }
      str = (String)paramObject;
      paramObject = str;
    } while (!TextUtils.isEmpty(str));
    return null;
    if ((paramObject instanceof Double))
    {
      paramObject = (Double)paramObject;
      if (((Double)paramObject).doubleValue() != 0.0D) {
        return a(((Double)paramObject).doubleValue());
      }
      return null;
    }
    if ((paramObject instanceof Boolean))
    {
      if (paramObject != Boolean.FALSE) {
        return "1";
      }
      return null;
    }
    return String.valueOf(paramObject);
  }
  
  private static String a(Map<String, String> paramMap)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    paramMap = paramMap.entrySet().iterator();
    while (paramMap.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)paramMap.next();
      if (localStringBuilder.length() != 0) {
        localStringBuilder.append(", ");
      }
      localStringBuilder.append((String)localEntry.getKey());
      localStringBuilder.append("=");
      localStringBuilder.append((String)localEntry.getValue());
    }
    return localStringBuilder.toString();
  }
  
  private static void a(Map<String, String> paramMap, String paramString, double paramDouble)
  {
    if (paramDouble != 0.0D) {
      paramMap.put(paramString, a(paramDouble));
    }
  }
  
  private static void a(Map<String, String> paramMap, String paramString, int paramInt1, int paramInt2)
  {
    if ((paramInt1 > 0) && (paramInt2 > 0)) {
      paramMap.put(paramString, paramInt1 + "x" + paramInt2);
    }
  }
  
  private static void a(Map<String, String> paramMap, String paramString1, String paramString2)
  {
    if (!TextUtils.isEmpty(paramString2)) {
      paramMap.put(paramString1, paramString2);
    }
  }
  
  private static void a(Map<String, String> paramMap, String paramString, boolean paramBoolean)
  {
    if (paramBoolean) {
      paramMap.put(paramString, "1");
    }
  }
  
  public static Map<String, String> b(bo parambo)
  {
    HashMap localHashMap = new HashMap();
    Object localObject1 = (com.google.android.gms.d.u)parambo.a(com.google.android.gms.d.u.class);
    Object localObject2;
    Object localObject3;
    if (localObject1 != null)
    {
      localObject1 = ((com.google.android.gms.d.u)localObject1).a().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = a(((Map.Entry)localObject2).getValue());
        if (localObject3 != null) {
          localHashMap.put(((Map.Entry)localObject2).getKey(), localObject3);
        }
      }
    }
    localObject1 = (com.google.android.gms.d.v)parambo.a(com.google.android.gms.d.v.class);
    if (localObject1 != null)
    {
      a(localHashMap, "t", ((com.google.android.gms.d.v)localObject1).a());
      a(localHashMap, "cid", ((com.google.android.gms.d.v)localObject1).b());
      a(localHashMap, "uid", ((com.google.android.gms.d.v)localObject1).c());
      a(localHashMap, "sc", ((com.google.android.gms.d.v)localObject1).f());
      a(localHashMap, "sf", ((com.google.android.gms.d.v)localObject1).h());
      a(localHashMap, "ni", ((com.google.android.gms.d.v)localObject1).g());
      a(localHashMap, "adid", ((com.google.android.gms.d.v)localObject1).d());
      a(localHashMap, "ate", ((com.google.android.gms.d.v)localObject1).e());
    }
    localObject1 = (ce)parambo.a(ce.class);
    if (localObject1 != null)
    {
      a(localHashMap, "cd", ((ce)localObject1).b());
      a(localHashMap, "a", ((ce)localObject1).c());
      a(localHashMap, "dr", ((ce)localObject1).d());
    }
    localObject1 = (cc)parambo.a(cc.class);
    if (localObject1 != null)
    {
      a(localHashMap, "ec", ((cc)localObject1).a());
      a(localHashMap, "ea", ((cc)localObject1).b());
      a(localHashMap, "el", ((cc)localObject1).c());
      a(localHashMap, "ev", ((cc)localObject1).d());
    }
    localObject1 = (bz)parambo.a(bz.class);
    if (localObject1 != null)
    {
      a(localHashMap, "cn", ((bz)localObject1).a());
      a(localHashMap, "cs", ((bz)localObject1).b());
      a(localHashMap, "cm", ((bz)localObject1).c());
      a(localHashMap, "ck", ((bz)localObject1).d());
      a(localHashMap, "cc", ((bz)localObject1).e());
      a(localHashMap, "ci", ((bz)localObject1).f());
      a(localHashMap, "anid", ((bz)localObject1).g());
      a(localHashMap, "gclid", ((bz)localObject1).h());
      a(localHashMap, "dclid", ((bz)localObject1).i());
      a(localHashMap, "aclid", ((bz)localObject1).j());
    }
    localObject1 = (cd)parambo.a(cd.class);
    if (localObject1 != null)
    {
      a(localHashMap, "exd", ((cd)localObject1).a());
      a(localHashMap, "exf", ((cd)localObject1).b());
    }
    localObject1 = (cf)parambo.a(cf.class);
    if (localObject1 != null)
    {
      a(localHashMap, "sn", ((cf)localObject1).a());
      a(localHashMap, "sa", ((cf)localObject1).b());
      a(localHashMap, "st", ((cf)localObject1).c());
    }
    localObject1 = (cg)parambo.a(cg.class);
    if (localObject1 != null)
    {
      a(localHashMap, "utv", ((cg)localObject1).a());
      a(localHashMap, "utt", ((cg)localObject1).b());
      a(localHashMap, "utc", ((cg)localObject1).c());
      a(localHashMap, "utl", ((cg)localObject1).d());
    }
    localObject1 = (com.google.android.gms.d.s)parambo.a(com.google.android.gms.d.s.class);
    if (localObject1 != null)
    {
      localObject1 = ((com.google.android.gms.d.s)localObject1).a().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = q.a(((Integer)((Map.Entry)localObject2).getKey()).intValue());
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          localHashMap.put(localObject3, ((Map.Entry)localObject2).getValue());
        }
      }
    }
    localObject1 = (t)parambo.a(t.class);
    if (localObject1 != null)
    {
      localObject1 = ((t)localObject1).a().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        localObject3 = q.b(((Integer)((Map.Entry)localObject2).getKey()).intValue());
        if (!TextUtils.isEmpty((CharSequence)localObject3)) {
          localHashMap.put(localObject3, a(((Double)((Map.Entry)localObject2).getValue()).doubleValue()));
        }
      }
    }
    localObject1 = (cb)parambo.a(cb.class);
    if (localObject1 != null)
    {
      localObject2 = ((cb)localObject1).a();
      if (localObject2 != null)
      {
        localObject2 = ((b)localObject2).a().entrySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          localObject3 = (Map.Entry)((Iterator)localObject2).next();
          if (((String)((Map.Entry)localObject3).getKey()).startsWith("&")) {
            localHashMap.put(((String)((Map.Entry)localObject3).getKey()).substring(1), ((Map.Entry)localObject3).getValue());
          } else {
            localHashMap.put(((Map.Entry)localObject3).getKey(), ((Map.Entry)localObject3).getValue());
          }
        }
      }
      localObject2 = ((cb)localObject1).d().iterator();
      int i = 1;
      while (((Iterator)localObject2).hasNext())
      {
        localHashMap.putAll(((com.google.android.gms.analytics.a.c)((Iterator)localObject2).next()).e(q.f(i)));
        i += 1;
      }
      localObject2 = ((cb)localObject1).b().iterator();
      i = 1;
      while (((Iterator)localObject2).hasNext())
      {
        localHashMap.putAll(((a)((Iterator)localObject2).next()).g(q.d(i)));
        i += 1;
      }
      localObject1 = ((cb)localObject1).c().entrySet().iterator();
      i = 1;
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        Object localObject4 = (List)((Map.Entry)localObject2).getValue();
        localObject3 = q.i(i);
        localObject4 = ((List)localObject4).iterator();
        int j = 1;
        while (((Iterator)localObject4).hasNext())
        {
          localHashMap.putAll(((a)((Iterator)localObject4).next()).g((String)localObject3 + q.g(j)));
          j += 1;
        }
        if (!TextUtils.isEmpty((CharSequence)((Map.Entry)localObject2).getKey())) {
          localHashMap.put((String)localObject3 + "nm", ((Map.Entry)localObject2).getKey());
        }
        i += 1;
      }
    }
    localObject1 = (ca)parambo.a(ca.class);
    if (localObject1 != null)
    {
      a(localHashMap, "ul", ((ca)localObject1).f());
      a(localHashMap, "sd", ((ca)localObject1).a());
      a(localHashMap, "sr", ((ca)localObject1).b(), ((ca)localObject1).c());
      a(localHashMap, "vp", ((ca)localObject1).d(), ((ca)localObject1).e());
    }
    parambo = (by)parambo.a(by.class);
    if (parambo != null)
    {
      a(localHashMap, "an", parambo.a());
      a(localHashMap, "aid", parambo.c());
      a(localHashMap, "aiid", parambo.d());
      a(localHashMap, "av", parambo.b());
    }
    return localHashMap;
  }
  
  public Uri a()
  {
    return d;
  }
  
  public void a(bo parambo)
  {
    aq.a(parambo);
    aq.b(parambo.f(), "Can't deliver not submitted measurement");
    aq.c("deliver should be called on worker thread");
    Object localObject2 = parambo.a();
    Object localObject1 = (com.google.android.gms.d.v)((bo)localObject2).b(com.google.android.gms.d.v.class);
    if (TextUtils.isEmpty(((com.google.android.gms.d.v)localObject1).a())) {
      zzhQ().a(b((bo)localObject2), "Ignoring measurement without type");
    }
    do
    {
      return;
      if (TextUtils.isEmpty(((com.google.android.gms.d.v)localObject1).b()))
      {
        zzhQ().a(b((bo)localObject2), "Ignoring measurement without client id");
        return;
      }
    } while (b.k().f());
    double d1 = ((com.google.android.gms.d.v)localObject1).h();
    if (com.google.android.gms.analytics.internal.p.a(d1, ((com.google.android.gms.d.v)localObject1).b()))
    {
      zzb("Sampling enabled. Hit sampled out. sampling rate", Double.valueOf(d1));
      return;
    }
    localObject2 = b((bo)localObject2);
    ((Map)localObject2).put("v", "1");
    ((Map)localObject2).put("_v", com.google.android.gms.analytics.internal.u.b);
    ((Map)localObject2).put("tid", c);
    if (b.k().e())
    {
      zzc("Dry run is enabled. GoogleAnalytics would have sent", a((Map)localObject2));
      return;
    }
    HashMap localHashMap = new HashMap();
    com.google.android.gms.analytics.internal.p.a(localHashMap, "uid", ((com.google.android.gms.d.v)localObject1).c());
    Object localObject3 = (by)parambo.a(by.class);
    if (localObject3 != null)
    {
      com.google.android.gms.analytics.internal.p.a(localHashMap, "an", ((by)localObject3).a());
      com.google.android.gms.analytics.internal.p.a(localHashMap, "aid", ((by)localObject3).c());
      com.google.android.gms.analytics.internal.p.a(localHashMap, "av", ((by)localObject3).b());
      com.google.android.gms.analytics.internal.p.a(localHashMap, "aiid", ((by)localObject3).d());
    }
    localObject3 = ((com.google.android.gms.d.v)localObject1).b();
    String str = c;
    if (!TextUtils.isEmpty(((com.google.android.gms.d.v)localObject1).d())) {}
    for (boolean bool = true;; bool = false)
    {
      localObject1 = new x(0L, (String)localObject3, str, bool, 0L, localHashMap);
      ((Map)localObject2).put("_s", String.valueOf(zzhl().a((x)localObject1)));
      parambo = new com.google.android.gms.analytics.internal.c(zzhQ(), (Map)localObject2, parambo.d(), true);
      zzhl().a(parambo);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */