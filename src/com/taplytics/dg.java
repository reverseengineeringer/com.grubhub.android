package com.taplytics;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class dg
{
  private static dg h;
  boolean a = false;
  boolean b = false;
  boolean c = false;
  boolean d = false;
  boolean e = false;
  boolean f = false;
  Field[] g = null;
  private cy i;
  private ArrayList<cx> j = new ArrayList();
  private PendingIntent k;
  private Method l;
  private Method m;
  private Class n;
  private Class o;
  
  public static dg b()
  {
    if (h == null) {
      h = new dg();
    }
    return h;
  }
  
  private void b(Map<String, String> paramMap)
  {
    try
    {
      Object localObject = Class.forName("com.amplitude.api.Amplitude");
      localObject = ((Class)localObject).getMethod("getInstance", new Class[0]).invoke(localObject, new Object[0]);
      localObject.getClass().getMethod("logEvent", new Class[] { String.class, JSONObject.class }).invoke(localObject, new Object[] { "TL_experiments", new JSONObject(paramMap) });
      return;
    }
    catch (Exception paramMap)
    {
      while (!ck.c()) {}
      ck.a("Logging experiment data to Amplitude failed: " + paramMap.getMessage());
    }
  }
  
  private void c(Map<String, String> paramMap)
  {
    try
    {
      Class localClass = Class.forName("com.adobe.mobile.Analytics");
      localClass.getMethod("trackAction", new Class[] { String.class, Map.class }).invoke(localClass, new Object[] { "TL_experiments", paramMap });
      return;
    }
    catch (Exception paramMap)
    {
      while (!ck.c()) {}
      ck.a("Logging experiment data to Adobe failed: " + paramMap.getMessage());
    }
  }
  
  private void d(Map<String, String> paramMap)
  {
    try
    {
      Class localClass = Class.forName("com.localytics.android.Localytics");
      localClass.getMethod("tagEvent", new Class[] { String.class, Map.class }).invoke(localClass, new Object[] { "TL_experiments", paramMap });
      return;
    }
    catch (Exception paramMap)
    {
      while (!ck.c()) {}
      ck.a("Logging experiment data to localytics failed: " + paramMap.getMessage());
    }
  }
  
  private void e(Map<String, String> paramMap)
  {
    try
    {
      Class localClass = Class.forName("com.flurry.android.FlurryAgent");
      localClass.getMethod("logEvent", new Class[] { String.class, Map.class }).invoke(localClass, new Object[] { "TL_experiments", paramMap });
      return;
    }
    catch (Exception paramMap)
    {
      while (!ck.c()) {}
      ck.a("Logging experiment data to flurry failed: " + paramMap.getMessage());
    }
  }
  
  private void f(Map<String, String> paramMap)
  {
    try
    {
      Class localClass = Class.forName("com.mixpanel.android.mpmetrics.MixpanelAPI");
      Object localObject = localClass.getDeclaredField("sInstanceMap");
      ((Field)localObject).setAccessible(true);
      localObject = (String)((Map)localObject.get(null)).keySet().toArray()[0];
      localObject = localClass.getMethod("getInstance", new Class[] { Context.class, String.class }).invoke(null, new Object[] { fy.e().p(), localObject });
      localClass.getMethod("registerSuperProperties", new Class[] { JSONObject.class }).invoke(localObject, new Object[] { new JSONObject(paramMap) });
      return;
    }
    catch (Exception paramMap)
    {
      while (!ck.c()) {}
      ck.a("Mixpanel registering super properties failed: " + paramMap.getMessage());
    }
  }
  
  private void u()
  {
    try
    {
      Thread localThread = iz.b("GAThread");
      if (localThread != null)
      {
        Field[] arrayOfField = localThread.getClass().getDeclaredFields();
        int i2 = arrayOfField.length;
        int i1 = 0;
        while (i1 < i2)
        {
          Field localField = arrayOfField[i1];
          if (localField.getType().equals(LinkedBlockingQueue.class))
          {
            localField.setAccessible(true);
            localField.set(localThread, new dr());
          }
          i1 += 1;
        }
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("GA Thread", localException);
    }
  }
  
  private void v()
  {
    try
    {
      new Handler(Looper.getMainLooper()).post(new dk(this));
      return;
    }
    catch (Exception localException)
    {
      ck.c("Error when posting localytics runnable " + localException.getMessage());
    }
  }
  
  public ArrayList<cx> a()
  {
    return j;
  }
  
  /* Error */
  public void a(Object paramObject1, Object paramObject2)
  {
    // Byte code:
    //   0: ldc_w 269
    //   3: invokestatic 83	java/lang/Class:forName	(Ljava/lang/String;)Ljava/lang/Class;
    //   6: astore 4
    //   8: aload_1
    //   9: invokevirtual 99	java/lang/Object:getClass	()Ljava/lang/Class;
    //   12: aload 4
    //   14: invokevirtual 227	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   17: ifeq +320 -> 337
    //   20: aload_2
    //   21: instanceof 144
    //   24: ifeq +313 -> 337
    //   27: getstatic 275	com/taplytics/kb:antelope	Lcom/taplytics/kb;
    //   30: invokestatic 278	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   33: ifne +304 -> 337
    //   36: aload_2
    //   37: checkcast 144	java/util/Map
    //   40: astore 5
    //   42: aload 4
    //   44: ldc_w 280
    //   47: iconst_1
    //   48: anewarray 79	java/lang/Class
    //   51: dup
    //   52: iconst_0
    //   53: ldc -112
    //   55: aastore
    //   56: invokevirtual 89	java/lang/Class:getMethod	(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    //   59: aload_1
    //   60: iconst_1
    //   61: anewarray 4	java/lang/Object
    //   64: dup
    //   65: iconst_0
    //   66: aload 5
    //   68: aastore
    //   69: invokevirtual 95	java/lang/reflect/Method:invoke	(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    //   72: pop
    //   73: ldc_w 282
    //   76: astore_1
    //   77: iconst_0
    //   78: invokestatic 288	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   81: astore_2
    //   82: new 105	org/json/JSONObject
    //   85: dup
    //   86: invokespecial 289	org/json/JSONObject:<init>	()V
    //   89: astore 6
    //   91: aload 5
    //   93: ldc_w 291
    //   96: invokeinterface 294 2 0
    //   101: ifeq +28 -> 129
    //   104: aload 5
    //   106: ldc_w 291
    //   109: invokeinterface 295 2 0
    //   114: checkcast 103	java/lang/String
    //   117: astore_1
    //   118: aload 5
    //   120: ldc_w 291
    //   123: invokeinterface 298 2 0
    //   128: pop
    //   129: aload 5
    //   131: ldc_w 300
    //   134: invokeinterface 294 2 0
    //   139: ifeq +254 -> 393
    //   142: aload 5
    //   144: ldc_w 300
    //   147: invokeinterface 295 2 0
    //   152: astore 4
    //   154: aload 4
    //   156: instanceof 103
    //   159: istore_3
    //   160: iload_3
    //   161: ifeq +232 -> 393
    //   164: aload 4
    //   166: checkcast 103	java/lang/String
    //   169: invokestatic 305	java/lang/Long:valueOf	(Ljava/lang/String;)Ljava/lang/Long;
    //   172: astore 4
    //   174: aload 4
    //   176: astore_2
    //   177: aload 5
    //   179: ldc_w 300
    //   182: invokeinterface 298 2 0
    //   187: pop
    //   188: aload_1
    //   189: ldc_w 282
    //   192: invokevirtual 306	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   195: ifeq +195 -> 390
    //   198: aload 5
    //   200: ldc_w 308
    //   203: invokeinterface 294 2 0
    //   208: ifeq +182 -> 390
    //   211: aload 5
    //   213: ldc_w 308
    //   216: invokeinterface 295 2 0
    //   221: checkcast 103	java/lang/String
    //   224: astore_1
    //   225: aload 5
    //   227: ldc_w 308
    //   230: invokeinterface 298 2 0
    //   235: pop
    //   236: aload 5
    //   238: invokeinterface 186 1 0
    //   243: invokeinterface 312 1 0
    //   248: astore 4
    //   250: aload 4
    //   252: invokeinterface 317 1 0
    //   257: ifeq +86 -> 343
    //   260: aload 4
    //   262: invokeinterface 321 1 0
    //   267: astore 7
    //   269: aload 7
    //   271: instanceof 103
    //   274: ifeq -24 -> 250
    //   277: aload 7
    //   279: checkcast 103	java/lang/String
    //   282: astore 7
    //   284: aload 6
    //   286: aload 7
    //   288: aload 5
    //   290: aload 7
    //   292: invokeinterface 295 2 0
    //   297: invokevirtual 325	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   300: pop
    //   301: goto -51 -> 250
    //   304: astore 7
    //   306: ldc_w 327
    //   309: aload 7
    //   311: invokestatic 239	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   314: goto -64 -> 250
    //   317: astore_1
    //   318: aload_1
    //   319: instanceof 75
    //   322: ifeq +58 -> 380
    //   325: aload_1
    //   326: checkcast 75	java/lang/Exception
    //   329: astore_1
    //   330: ldc_w 329
    //   333: aload_1
    //   334: invokestatic 239	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   337: return
    //   338: astore 4
    //   340: goto -152 -> 188
    //   343: invokestatic 199	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   346: invokevirtual 332	com/taplytics/fy:n	()Lcom/taplytics/cc;
    //   349: ifnull +20 -> 369
    //   352: invokestatic 199	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   355: invokevirtual 332	com/taplytics/fy:n	()Lcom/taplytics/cc;
    //   358: ldc_w 334
    //   361: aload_1
    //   362: aload_2
    //   363: aload 6
    //   365: invokevirtual 339	com/taplytics/cc:a	(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)V
    //   368: return
    //   369: ldc_w 341
    //   372: ldc_w 343
    //   375: invokestatic 349	android/util/Log:w	(Ljava/lang/String;Ljava/lang/String;)I
    //   378: pop
    //   379: return
    //   380: aconst_null
    //   381: astore_1
    //   382: goto -52 -> 330
    //   385: astore 4
    //   387: goto -47 -> 340
    //   390: goto -154 -> 236
    //   393: goto -205 -> 188
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	396	0	this	dg
    //   0	396	1	paramObject1	Object
    //   0	396	2	paramObject2	Object
    //   159	2	3	bool	boolean
    //   6	255	4	localObject1	Object
    //   338	1	4	localException1	Exception
    //   385	1	4	localException2	Exception
    //   40	249	5	localMap	Map
    //   89	275	6	localJSONObject	JSONObject
    //   267	24	7	localObject2	Object
    //   304	6	7	localException3	Exception
    // Exception table:
    //   from	to	target	type
    //   284	301	304	java/lang/Exception
    //   0	73	317	java/lang/Throwable
    //   77	91	317	java/lang/Throwable
    //   91	129	317	java/lang/Throwable
    //   129	160	317	java/lang/Throwable
    //   164	174	317	java/lang/Throwable
    //   177	188	317	java/lang/Throwable
    //   188	236	317	java/lang/Throwable
    //   236	250	317	java/lang/Throwable
    //   250	284	317	java/lang/Throwable
    //   284	301	317	java/lang/Throwable
    //   306	314	317	java/lang/Throwable
    //   343	368	317	java/lang/Throwable
    //   369	379	317	java/lang/Throwable
    //   164	174	338	java/lang/Exception
    //   177	188	385	java/lang/Exception
  }
  
  public void a(Map<String, String> paramMap)
  {
    if (!fy.e().j()) {
      return;
    }
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = new JSONObject(paramMap);
        Object localObject = null;
        if ((paramMap.containsKey("&t")) && (((String)paramMap.get("&t")).equals("screenview"))) {
          break;
        }
        if (paramMap.containsKey("&ev")) {
          localObject = paramMap.get("&ev");
        }
        if (paramMap.containsKey("&ea"))
        {
          paramMap = (String)paramMap.get("&ea");
          fy.e().n().a("googleAnalytics", paramMap, localObject, localJSONObject);
          return;
        }
      }
      catch (Exception paramMap)
      {
        ck.b(getClass().getCanonicalName(), paramMap);
        return;
      }
      paramMap = "";
    }
  }
  
  public void a(Map<String, String> paramMap, Object paramObject)
  {
    iz.d().schedule(new dm(this, paramMap, paramObject), 5000L, TimeUnit.MILLISECONDS);
  }
  
  public void b(Map<String, String> paramMap, Object paramObject)
  {
    if (paramObject != null) {
      try
      {
        paramObject = new m(paramObject);
        Iterator localIterator = paramMap.keySet().iterator();
        while (localIterator.hasNext())
        {
          Object localObject = (String)localIterator.next();
          String str = "&" + ((String)localObject).replace(" ", "_");
          localObject = paramMap.get(localObject);
          ((m)paramObject).a("set", new Class[] { String.class, String.class }, new Object[] { str, localObject });
        }
        return;
      }
      catch (Exception paramMap)
      {
        if (ck.c()) {
          ck.a("Logging experiment data to GA failed: " + paramMap.getMessage());
        }
      }
    }
  }
  
  public boolean c()
  {
    try
    {
      Class.forName("com.mixpanel.android.mpmetrics.MixpanelAPI");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public boolean d()
  {
    try
    {
      Class.forName("com.flurry.android.FlurryAgent");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public Boolean e()
  {
    try
    {
      Class.forName("com.adobe.mobile.Analytics");
      return Boolean.valueOf(true);
    }
    catch (ClassNotFoundException localClassNotFoundException) {}
    return Boolean.valueOf(false);
  }
  
  public boolean f()
  {
    try
    {
      Class.forName("com.google.android.gms.analytics.e");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public boolean g()
  {
    try
    {
      Class.forName("com.localytics.android.AnalyticsListener");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public boolean h()
  {
    try
    {
      Class.forName("com.amplitude.api.Amplitude");
      return true;
    }
    catch (Exception localException) {}
    return false;
  }
  
  public void i()
  {
    a = true;
  }
  
  public void j()
  {
    d = true;
  }
  
  public void k()
  {
    e = true;
  }
  
  public void l()
  {
    c = true;
  }
  
  public void m()
  {
    b = true;
  }
  
  public void n()
  {
    f = true;
  }
  
  public void o()
  {
    new do(this, null).execute(new ArrayList[] { j });
  }
  
  public void p()
  {
    new dn(this, null).execute(new Void[0]);
  }
  
  public void q()
  {
    if ((a) && (c())) {
      j.add(dc.c());
    }
    if ((d) && (f())) {}
    try
    {
      new Handler(Looper.getMainLooper()).postDelayed(new dh(this), 3000L);
      if ((e) && (g())) {
        v();
      }
      if ((c) && (e().booleanValue())) {}
      try
      {
        localObject1 = Class.forName("com.adobe.mobile.StaticMethods");
        if (localObject1 != null)
        {
          localObject2 = ((Class)localObject1).getDeclaredMethod("getAnalyticsExecutor", new Class[0]);
          ((Method)localObject2).setAccessible(true);
          Object localObject3 = (ExecutorService)((Method)localObject2).invoke(localObject1, new Object[0]);
          ((Method)localObject2).setAccessible(false);
          localObject2 = new de((ExecutorService)localObject3);
          localObject3 = ((Class)localObject1).getDeclaredField("analyticsExecutor");
          ((Field)localObject3).setAccessible(true);
          ((Field)localObject3).set(localObject1, localObject2);
          ((Field)localObject3).setAccessible(false);
          if (ck.c()) {
            ck.a("adobe connected");
          }
        }
      }
      catch (Exception localException2)
      {
        for (;;)
        {
          Object localObject1;
          Object localObject2;
          if (ck.c()) {
            ck.a("Something went wrong when replacing adobe executor");
          }
        }
      }
      if ((b) && (d())) {
        new Handler(Looper.getMainLooper()).postDelayed(new di(this), 1000L);
      }
      if ((f) && (h()))
      {
        i = cy.a();
        i.c();
      }
      if ((j.size() > 0) && (a) && (c()))
      {
        localObject1 = (AlarmManager)fy.e().p().getSystemService("alarm");
        localObject2 = new goat(this);
        fy.e().p().registerReceiver((BroadcastReceiver)localObject2, new IntentFilter("com.taplytics"));
        k = PendingIntent.getBroadcast(fy.e().p(), 109, new Intent("com.taplytics"), 0);
        ((AlarmManager)localObject1).setRepeating(3, 35000L, 52000L, k);
      }
      return;
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        ck.b("ExtA GA issues", localException1);
      }
    }
  }
  
  public void r()
  {
    s();
    if (i != null) {
      i.b();
    }
  }
  
  public void s()
  {
    if (k != null) {}
    try
    {
      ((AlarmManager)fy.e().p().getSystemService("alarm")).cancel(k);
      return;
    }
    catch (Exception localException) {}
  }
  
  public void t()
  {
    p();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */