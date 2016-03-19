package com.facebook.a;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.support.v4.content.o;
import com.facebook.AccessToken;
import com.facebook.GraphRequest;
import com.facebook.aa;
import com.facebook.ad;
import com.facebook.internal.ab;
import com.facebook.internal.al;
import com.facebook.internal.an;
import com.facebook.internal.ap;
import com.facebook.m;
import com.facebook.r;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private static final String a = a.class.getCanonicalName();
  private static Map<b, l> d = new ConcurrentHashMap();
  private static ScheduledThreadPoolExecutor e;
  private static f f = f.AUTO;
  private static boolean g;
  private static Context h;
  private static Object i = new Object();
  private static String j;
  private static boolean k;
  private final String b;
  private final b c;
  
  private a(Context paramContext, String arg2, AccessToken paramAccessToken)
  {
    ap.a(paramContext, "context");
    b = al.c(paramContext);
    AccessToken localAccessToken = paramAccessToken;
    if (paramAccessToken == null) {
      localAccessToken = AccessToken.a();
    }
    if ((localAccessToken != null) && ((??? == null) || (???.equals(localAccessToken.h())))) {
      c = new b(localAccessToken);
    }
    synchronized (i)
    {
      if (h == null) {
        h = paramContext.getApplicationContext();
      }
      h();
      return;
      paramAccessToken = ???;
      if (??? == null) {
        paramAccessToken = al.a(paramContext);
      }
      c = new b(null, paramAccessToken);
    }
  }
  
  private static GraphRequest a(b paramb, final l paraml, boolean paramBoolean, final i parami)
  {
    Object localObject = paramb.b();
    an localan = al.a((String)localObject, false);
    final GraphRequest localGraphRequest = GraphRequest.a(null, String.format("%s/activities", new Object[] { localObject }), null, null);
    Bundle localBundle = localGraphRequest.e();
    localObject = localBundle;
    if (localBundle == null) {
      localObject = new Bundle();
    }
    ((Bundle)localObject).putString("access_token", paramb.a());
    localGraphRequest.a((Bundle)localObject);
    if (localan == null) {
      return null;
    }
    int m = paraml.a(localGraphRequest, localan.a(), paramBoolean);
    if (m == 0) {
      return null;
    }
    a = (m + a);
    localGraphRequest.a(new r()
    {
      public void a(aa paramAnonymousaa)
      {
        a.a(a.this, localGraphRequest, paramAnonymousaa, paraml, parami);
      }
    });
    return localGraphRequest;
  }
  
  public static a a(Context paramContext)
  {
    return new a(paramContext, null, null);
  }
  
  public static a a(Context paramContext, String paramString)
  {
    return new a(paramContext, paramString, null);
  }
  
  public static f a()
  {
    synchronized (i)
    {
      f localf = f;
      return localf;
    }
  }
  
  private static i a(g paramg, Set<b> paramSet)
  {
    i locali = new i(null);
    boolean bool = m.b(h);
    ArrayList localArrayList = new ArrayList();
    paramSet = paramSet.iterator();
    while (paramSet.hasNext())
    {
      Object localObject = (b)paramSet.next();
      l locall = a((b)localObject);
      if (locall != null)
      {
        localObject = a((b)localObject, locall, bool, locali);
        if (localObject != null) {
          localArrayList.add(localObject);
        }
      }
    }
    if (localArrayList.size() > 0)
    {
      ab.a(ad.APP_EVENTS, a, "Flushing %d events due to %s.", new Object[] { Integer.valueOf(a), paramg.toString() });
      paramg = localArrayList.iterator();
      while (paramg.hasNext()) {
        ((GraphRequest)paramg.next()).i();
      }
      return locali;
    }
    return null;
  }
  
  private static l a(b paramb)
  {
    synchronized (i)
    {
      paramb = (l)d.get(paramb);
      return paramb;
    }
  }
  
  private void a(long paramLong, String paramString)
  {
    j.a(h, c, this, paramLong, paramString);
  }
  
  private static void a(Context paramContext, final d paramd, final b paramb)
  {
    m.d().execute(new Runnable()
    {
      public void run()
      {
        a.a(a.this, paramb).a(paramd);
        a.d();
      }
    });
    if ((!d.a(paramd)) && (!k))
    {
      if (paramd.a() == "fb_mobile_activate_app") {
        k = true;
      }
    }
    else {
      return;
    }
    ab.a(ad.APP_EVENTS, "AppEvents", "Warning: Please call AppEventsLogger.activateApp(...)from the long-lived activity's onResume() methodbefore logging other app events.");
  }
  
  private void a(String paramString, Double paramDouble, Bundle paramBundle, boolean paramBoolean)
  {
    paramString = new d(b, paramString, paramDouble, paramBundle, paramBoolean);
    a(h, paramString, c);
  }
  
  private static l b(Context paramContext, b paramb)
  {
    Object localObject1 = (l)d.get(paramb);
    com.facebook.internal.d locald = null;
    if (localObject1 == null) {
      locald = com.facebook.internal.d.a(paramContext);
    }
    synchronized (i)
    {
      l locall = (l)d.get(paramb);
      localObject1 = locall;
      if (locall == null)
      {
        localObject1 = new l(locald, paramContext.getPackageName(), b(paramContext));
        d.put(paramb, localObject1);
      }
      return (l)localObject1;
    }
  }
  
  public static String b(Context paramContext)
  {
    if (j == null) {}
    synchronized (i)
    {
      if (j == null)
      {
        j = paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).getString("anonymousAppDeviceGUID", null);
        if (j == null)
        {
          j = "XZ" + UUID.randomUUID().toString();
          paramContext.getSharedPreferences("com.facebook.sdk.appEventPreferences", 0).edit().putString("anonymousAppDeviceGUID", j).apply();
        }
      }
      return j;
    }
  }
  
  private static void b(b paramb, GraphRequest paramGraphRequest, aa paramaa, l paraml, i parami)
  {
    com.facebook.j localj = paramaa.a();
    Object localObject = h.SUCCESS;
    String str1;
    if (localj != null) {
      if (localj.b() == -1)
      {
        paramaa = h.NO_CONNECTIVITY;
        str1 = "Failed: No Connectivity";
      }
    }
    for (;;)
    {
      if (m.a(ad.APP_EVENTS)) {
        localObject = (String)paramGraphRequest.h();
      }
      String str2;
      try
      {
        localObject = new JSONArray((String)localObject).toString(2);
        ab.a(ad.APP_EVENTS, a, "Flush completed\nParams: %s\n  Result: %s\n  Events JSON: %s", new Object[] { paramGraphRequest.a().toString(), str1, localObject });
        if (localj != null)
        {
          bool = true;
          paraml.a(bool);
          if (paramaa == h.NO_CONNECTIVITY) {
            k.a(h, paramb, paraml);
          }
          if ((paramaa != h.SUCCESS) && (b != h.NO_CONNECTIVITY)) {
            b = paramaa;
          }
          return;
          str1 = String.format("Failed:\n  Response: %s\n  Error %s", new Object[] { paramaa.toString(), localj.toString() });
          paramaa = h.SERVER_ERROR;
        }
      }
      catch (JSONException localJSONException)
      {
        for (;;)
        {
          str2 = "<Can't encode events for debug logging>";
          continue;
          boolean bool = false;
        }
      }
      str1 = "Success";
      paramaa = str2;
    }
  }
  
  private static void b(g paramg)
  {
    m.d().execute(new Runnable()
    {
      public void run()
      {
        a.a(a.this);
      }
    });
  }
  
  private static void c(g paramg)
  {
    HashSet localHashSet;
    synchronized (i)
    {
      if (g) {
        return;
      }
      g = true;
      localHashSet = new HashSet(d.keySet());
      k();
      ??? = null;
    }
    try
    {
      paramg = a(paramg, localHashSet);
      return;
    }
    catch (Exception paramg)
    {
      synchronized (i)
      {
        g = false;
        if (paramg != null)
        {
          ??? = new Intent("com.facebook.sdk.APP_EVENTS_FLUSHED");
          ((Intent)???).putExtra("com.facebook.sdk.APP_EVENTS_NUM_EVENTS_FLUSHED", a);
          ((Intent)???).putExtra("com.facebook.sdk.APP_EVENTS_FLUSH_RESULT", b);
          o.a(h).a((Intent)???);
          return;
          paramg = finally;
          throw paramg;
          paramg = paramg;
          al.a(a, "Caught unexpected exception while flushing: ", paramg);
          paramg = (g)???;
        }
      }
    }
  }
  
  private static void h()
  {
    synchronized (i)
    {
      if (e != null) {
        return;
      }
      e = new ScheduledThreadPoolExecutor(1);
      ??? = new Runnable()
      {
        public void run()
        {
          if (a.a() != f.EXPLICIT_ONLY) {
            a.a(g.TIMER);
          }
        }
      };
      e.scheduleAtFixedRate((Runnable)???, 0L, 15L, TimeUnit.SECONDS);
      ??? = new Runnable()
      {
        public void run()
        {
          HashSet localHashSet = new HashSet();
          synchronized (a.b())
          {
            Iterator localIterator = a.c().keySet().iterator();
            if (localIterator.hasNext()) {
              localHashSet.add(((b)localIterator.next()).b());
            }
          }
          ??? = ((Set)localObject2).iterator();
          while (((Iterator)???).hasNext()) {
            al.a((String)((Iterator)???).next(), true);
          }
        }
      };
      e.scheduleAtFixedRate((Runnable)???, 0L, 86400L, TimeUnit.SECONDS);
      return;
    }
  }
  
  private static void i()
  {
    synchronized (i)
    {
      if ((a() != f.EXPLICIT_ONLY) && (j() > 100)) {
        b(g.EVENT_THRESHOLD);
      }
      return;
    }
  }
  
  private static int j()
  {
    synchronized (i)
    {
      Iterator localIterator = d.values().iterator();
      for (int m = 0; localIterator.hasNext(); m = ((l)localIterator.next()).a() + m) {}
      return m;
    }
  }
  
  private static int k()
  {
    k localk = k.a(h);
    Iterator localIterator = localk.a().iterator();
    Object localObject;
    for (int m = 0; localIterator.hasNext(); m = ((List)localObject).size() + m)
    {
      localObject = (b)localIterator.next();
      l locall = b(h, (b)localObject);
      localObject = localk.a((b)localObject);
      locall.a((List)localObject);
    }
    return m;
  }
  
  public void a(String paramString, double paramDouble, Bundle paramBundle)
  {
    a(paramString, Double.valueOf(paramDouble), paramBundle, false);
  }
  
  public void a(String paramString, Bundle paramBundle)
  {
    a(paramString, null, paramBundle, false);
  }
  
  public void a(String paramString, Double paramDouble, Bundle paramBundle)
  {
    a(paramString, paramDouble, paramBundle, true);
  }
}

/* Location:
 * Qualified Name:     com.facebook.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */