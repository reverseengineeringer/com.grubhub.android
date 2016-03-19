package com.taplytics;

import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Pair;
import com.taplytics.sdk.TaplyticsPushOpenedListener;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Locale;
import java.util.Map;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class cc
{
  private static Map<String, Long> c = new HashMap();
  private static Map<Integer, Pair<String, Long>> d = new HashMap();
  private static Map<String, Pair<Boolean, Integer>> e = new HashMap();
  public ArrayList<String> a;
  private boolean b = false;
  private cl f = null;
  private Handler g = new Handler(Looper.getMainLooper());
  private Runnable h = new cd(this);
  private SimpleDateFormat i = new SimpleDateFormat("yyyy-MM-dd'T'HH:mmZ", Locale.US);
  private bw j = null;
  private ExecutorService k = null;
  private Date l = null;
  
  public cc()
  {
    k.submit(new ce(this));
  }
  
  public static void a(int paramInt)
  {
    if (d.containsKey(Integer.valueOf(paramInt)))
    {
      localLong = Long.valueOf(System.currentTimeMillis() - ((Long)dgetvalueOfsecond).longValue());
      d.remove(Integer.valueOf(paramInt));
      if (ck.c()) {
        ck.a("Time on fragment: " + String.format("%d min, %d sec", new Object[] { Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(localLong.longValue())), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(localLong.longValue()) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(localLong.longValue()))) }));
      }
      fy.e().n().b("viewTimeOnPage", localLong, null);
    }
    while (!ck.c())
    {
      Long localLong;
      return;
    }
    ck.a("Problem: Id not in fragment map, cant track time");
  }
  
  private void a(JSONObject paramJSONObject)
  {
    if (paramJSONObject == null) {}
    while (b(paramJSONObject)) {
      return;
    }
    k.submit(new cg(this, paramJSONObject));
    b(null);
  }
  
  private void b(eq parameq)
  {
    if (parameq != null) {
      parameq.a();
    }
    if ((l == null) && (j.b() > 0))
    {
      l = new Date();
      if (fy.e().k() == null) {
        break label98;
      }
      d1 = fy.e().k().p();
      if (!fy.e().g()) {
        break label105;
      }
    }
    label98:
    label105:
    double d2;
    for (double d1 = iz.a(20.0D) + 5.0D;; d1 = d2 + iz.a(5.0D))
    {
      g.postDelayed(h, Math.round(d1) * 1000L);
      return;
      d1 = -1.0D;
      break;
      d2 = d1;
      if (d1 == -1.0D) {
        d2 = 60.0D;
      }
    }
  }
  
  public static void b(String paramString)
  {
    if (c.containsKey(paramString))
    {
      localLong = Long.valueOf(System.currentTimeMillis() - ((Long)c.get(paramString)).longValue());
      c.remove(paramString);
      if (ck.c()) {
        ck.a("Time on activity: " + String.format("%d min, %d sec", new Object[] { Long.valueOf(TimeUnit.MILLISECONDS.toMinutes(localLong.longValue())), Long.valueOf(TimeUnit.MILLISECONDS.toSeconds(localLong.longValue()) - TimeUnit.MINUTES.toSeconds(TimeUnit.MILLISECONDS.toMinutes(localLong.longValue()))) }));
      }
      fy.e().n().b("viewTimeOnPage", localLong, null);
    }
    while (!ck.c())
    {
      Long localLong;
      return;
    }
    ck.a("Problem: Activity not in activity map, cant track time");
  }
  
  private boolean b(JSONObject paramJSONObject)
  {
    for (;;)
    {
      try
      {
        if (fy.e().k() != null)
        {
          Object localObject1 = fy.e().k().r();
          Object localObject2 = paramJSONObject.optString("type");
          if ((localObject1 == null) || (!((JSONObject)localObject1).has((String)localObject2))) {
            break;
          }
          if (((String)localObject2).length() != 0)
          {
            localObject1 = ((JSONObject)localObject1).optJSONArray((String)localObject2);
            if (localObject1 != null)
            {
              int m = 0;
              if (m < ((JSONArray)localObject1).length())
              {
                localObject2 = ((JSONArray)localObject1).optJSONObject(m);
                Iterator localIterator = ((JSONObject)localObject2).keys();
                if (!localIterator.hasNext()) {
                  break label183;
                }
                Object localObject4 = (String)localIterator.next();
                Object localObject3 = paramJSONObject.opt((String)localObject4);
                localObject4 = ((JSONObject)localObject2).opt((String)localObject4);
                if ((localObject4 != null) || (localObject3 == null))
                {
                  if (localObject4 == null) {
                    continue;
                  }
                  boolean bool = localObject4.equals(localObject3);
                  if (bool) {
                    continue;
                  }
                }
                n = 0;
                if (n != 0) {
                  return true;
                }
                m += 1;
                continue;
              }
            }
          }
        }
        return false;
      }
      catch (Exception paramJSONObject)
      {
        return false;
      }
      label183:
      int n = 1;
    }
    return false;
  }
  
  public static Map<Integer, Pair<String, Long>> c()
  {
    return d;
  }
  
  private JSONObject c(String paramString, Object paramObject, JSONObject paramJSONObject)
    throws JSONException
  {
    if (paramString == null) {
      return null;
    }
    fy localfy = fy.e();
    eo localeo = localfy.k();
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.put("type", paramString);
    if ((paramJSONObject != null) && (paramJSONObject.has("TLTime")))
    {
      localJSONObject.put("date", i.format(new Date(Long.valueOf(paramJSONObject.optString("TLTime")).longValue())));
      if (paramJSONObject != null) {
        localJSONObject.put("data", paramJSONObject);
      }
      if (paramObject != null) {
        localJSONObject.put("val", paramObject);
      }
      if ((localeo != null) && (localeo.b() != null)) {
        localJSONObject.put("sid", localeo.b());
      }
      if (!localfy.g()) {
        break label229;
      }
    }
    label229:
    for (int m = 0;; m = 1)
    {
      localJSONObject.put("prod", m);
      return localJSONObject;
      if (paramString.equals("tlError"))
      {
        localJSONObject.put("date", i.format(new Date()));
        break;
      }
      localJSONObject.put("date", i.format(new Date()));
      break;
    }
  }
  
  private boolean c(String paramString)
  {
    if (a != null)
    {
      Iterator localIterator = a.iterator();
      while (localIterator.hasNext()) {
        if (((String)localIterator.next()).equals(paramString)) {
          return true;
        }
      }
    }
    return false;
  }
  
  public cl a()
  {
    return f;
  }
  
  public void a(Bundle paramBundle)
    throws JSONException
  {
    Object localObject = null;
    try
    {
      if ((fy.e().j()) && (!iz.a(kb.alligator)))
      {
        if (iz.a(kb.buffalo)) {
          return;
        }
        if (ck.c()) {
          ck.a("Push notification opened");
        }
        if ((paramBundle.getString("tl_id") != null) && (fy.e().j()))
        {
          if (paramBundle.get("custom_keys") != null) {
            localObject = new JSONObject((String)paramBundle.get("custom_keys"));
          }
          localObject = c("pushOpened", null, (JSONObject)localObject);
          if (localObject != null)
          {
            ((JSONObject)localObject).put("gn", paramBundle.getString("tl_id"));
            a((JSONObject)localObject);
            localObject = fy.e().o().c();
            if (localObject != null)
            {
              ((TaplyticsPushOpenedListener)localObject).pushOpened(paramBundle);
              return;
            }
          }
        }
      }
    }
    catch (Exception paramBundle) {}
  }
  
  public void a(eq parameq)
  {
    if (!fy.e().j()) {
      return;
    }
    k.submit(new ch(this, parameq));
  }
  
  public void a(String paramString)
  {
    b(paramString, null, null);
  }
  
  public void a(String paramString, Exception paramException, boolean paramBoolean)
  {
    int i1 = 1;
    int n = 1;
    if ((!fy.e().j()) || (iz.a(kb.alligator)) || (iz.a(kb.bee))) {
      return;
    }
    JSONObject localJSONObject;
    int m;
    try
    {
      localJSONObject = new JSONObject();
      m = i1;
      if (paramString == null) {
        break label176;
      }
      m = i1;
      if (paramString.equals("")) {
        break label176;
      }
      m = n;
      if (e.containsKey(paramString))
      {
        m = ((Integer)egetsecond).intValue() + 1;
        if (((Boolean)egetfirst).booleanValue())
        {
          e.put(paramString, new Pair(Boolean.valueOf(true), Integer.valueOf(m)));
          return;
        }
      }
    }
    catch (Exception paramString)
    {
      ck.c("Broke tracking error.", paramException);
      return;
    }
    localJSONObject.put("taplyticsMessage", paramString);
    label176:
    if ((paramException != null) && (paramException.getMessage() != null) && (!paramException.getMessage().equals(""))) {
      localJSONObject.put("message", paramException.getMessage());
    }
    for (;;)
    {
      try
      {
        StringWriter localStringWriter = new StringWriter();
        paramException.printStackTrace(new PrintWriter(localStringWriter));
        localJSONObject.put("stacktrace", localStringWriter.toString());
        localJSONObject = c("tlError", null, localJSONObject);
        if ((localJSONObject == null) || (!paramBoolean)) {
          break;
        }
        if (paramString == null) {
          break label376;
        }
        e.put(paramString, new Pair(Boolean.valueOf(true), Integer.valueOf(m)));
        a(localJSONObject);
        return;
      }
      catch (Exception localException2)
      {
        ck.c("Broke tracking error.", localException2);
        continue;
      }
      if ((paramException != null) && (paramException.getMessage() != null))
      {
        boolean bool = paramException.getMessage().equals("");
        if (!bool) {}
      }
      else
      {
        try
        {
          localJSONObject = c("tlError", null, localJSONObject);
        }
        catch (Exception localException1)
        {
          ck.c("Broke tracking error.", localException1);
          break label383;
        }
        label376:
        a(localException1);
        return;
      }
      label383:
      Object localObject = null;
    }
  }
  
  public void a(String paramString, Number paramNumber, JSONObject paramJSONObject)
  {
    if ((!fy.e().j()) || (iz.a(kb.alligator))) {}
    while (paramString == null) {
      return;
    }
    if (ck.c()) {
      ck.a("Log Revenue: " + paramString + ", revenue: " + paramNumber);
    }
    try
    {
      paramNumber = c("revenue", paramNumber, paramJSONObject);
      paramNumber.put("gn", paramString);
      a(paramNumber);
      return;
    }
    catch (JSONException paramString)
    {
      ck.b("Track Revenue", paramString);
    }
  }
  
  public void a(String paramString, Object paramObject, JSONObject paramJSONObject)
  {
    if ((!fy.e().j()) || (iz.a(kb.alligator))) {}
    while (paramString == null) {
      return;
    }
    if (ck.c()) {
      ck.a("Log event: " + paramString + ", value: " + paramObject);
    }
    try
    {
      paramObject = c("goalAchieved", paramObject, paramJSONObject);
      ((JSONObject)paramObject).put("gn", paramString);
      a((JSONObject)paramObject);
      return;
    }
    catch (JSONException paramString)
    {
      ck.b("Track Event", paramString);
    }
  }
  
  public void a(String paramString1, Object paramObject, JSONObject paramJSONObject, String paramString2)
  {
    if ((!fy.e().j()) || (iz.a(kb.alligator))) {}
    while (paramString1 == null) {
      return;
    }
    if (ck.c()) {
      ck.a("Log TL Event: " + paramString1 + ", value: " + paramObject);
    }
    try
    {
      paramJSONObject = c(paramString1, paramObject, paramJSONObject);
      if ((paramString1.equals("viewAppeared")) || (paramString1.equals("viewDisappeared")))
      {
        paramJSONObject.put("val", i.format(new Date()));
        paramJSONObject.put("vKey", paramObject);
      }
      if (paramString2 != null) {
        paramJSONObject.put("gn", paramString2);
      }
      a(paramJSONObject);
      return;
    }
    catch (Exception paramString1)
    {
      ck.b("Tracking TLEvent", paramString1);
    }
  }
  
  public void a(String paramString1, String paramString2)
  {
    if ((!fy.e().j()) || (iz.a(kb.alligator))) {}
    while (paramString1 == null) {
      return;
    }
    if (ck.c()) {
      ck.a("Track Code Experiment Shown, expID: " + paramString1 + ", varID: " + paramString2);
    }
    try
    {
      JSONObject localJSONObject = c("codeExperiment", null, null);
      localJSONObject.put("exp_id", paramString1);
      if (paramString2 != null) {
        localJSONObject.put("var_id", paramString2);
      }
      a(localJSONObject);
      return;
    }
    catch (Exception paramString1)
    {
      ck.b("Tracking Code Experiment Shown", paramString1);
    }
  }
  
  public void a(String paramString1, String paramString2, Object paramObject, JSONObject paramJSONObject)
  {
    if ((!fy.e().j()) || (iz.a(kb.alligator)) || (iz.a(kb.anteater))) {}
    while (paramString2 == null) {
      return;
    }
    String str;
    if (ck.c())
    {
      StringBuilder localStringBuilder = new StringBuilder().append("Log event: ").append(paramString2).append(", value: ").append(paramObject).append(". From source: ").append(paramString1).append(". Metadata: ");
      if (paramJSONObject == null)
      {
        str = "none";
        ck.a(str);
      }
    }
    else
    {
      try
      {
        paramString1 = c(paramString1, paramObject, paramJSONObject);
        paramString1.put("gn", paramString2);
        a(paramString1);
        return;
      }
      catch (Throwable paramString1)
      {
        if (!(paramString1 instanceof Exception)) {}
      }
    }
    for (paramString1 = (Exception)paramString1;; paramString1 = null)
    {
      ck.b("Track source event", paramString1);
      return;
      str = paramJSONObject.toString();
      break;
    }
  }
  
  /* Error */
  public void a(String paramString1, String paramString2, String paramString3, Exception paramException)
  {
    // Byte code:
    //   0: invokestatic 100	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   3: invokevirtual 386	com/taplytics/fy:j	()Z
    //   6: ifeq +21 -> 27
    //   9: getstatic 392	com/taplytics/kb:alligator	Lcom/taplytics/kb;
    //   12: invokestatic 395	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   15: ifne +12 -> 27
    //   18: getstatic 556	com/taplytics/kb:catfish	Lcom/taplytics/kb;
    //   21: invokestatic 395	com/taplytics/iz:a	(Lcom/taplytics/kb;)Z
    //   24: ifeq +4 -> 28
    //   27: return
    //   28: aload_1
    //   29: ifnull -2 -> 27
    //   32: new 292	org/json/JSONObject
    //   35: dup
    //   36: invokespecial 341	org/json/JSONObject:<init>	()V
    //   39: astore 5
    //   41: invokestatic 169	com/taplytics/ck:c	()Z
    //   44: ifeq +36 -> 80
    //   47: new 171	java/lang/StringBuilder
    //   50: dup
    //   51: invokespecial 172	java/lang/StringBuilder:<init>	()V
    //   54: ldc_w 558
    //   57: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   60: aload_1
    //   61: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   64: ldc_w 509
    //   67: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   70: aload_2
    //   71: invokevirtual 178	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   74: invokevirtual 206	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   77: invokestatic 209	com/taplytics/ck:a	(Ljava/lang/String;)V
    //   80: aload 4
    //   82: ifnull +73 -> 155
    //   85: aload 4
    //   87: invokevirtual 474	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   90: ifnull +65 -> 155
    //   93: aload 4
    //   95: invokevirtual 474	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   98: ldc_w 444
    //   101: invokevirtual 374	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   104: ifne +51 -> 155
    //   107: aload 5
    //   109: ldc_w 476
    //   112: aload 4
    //   114: invokevirtual 474	java/lang/Exception:getMessage	()Ljava/lang/String;
    //   117: invokevirtual 345	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   120: pop
    //   121: new 478	java/io/StringWriter
    //   124: dup
    //   125: invokespecial 479	java/io/StringWriter:<init>	()V
    //   128: astore_1
    //   129: aload 4
    //   131: new 481	java/io/PrintWriter
    //   134: dup
    //   135: aload_1
    //   136: invokespecial 484	java/io/PrintWriter:<init>	(Ljava/io/Writer;)V
    //   139: invokevirtual 488	java/lang/Exception:printStackTrace	(Ljava/io/PrintWriter;)V
    //   142: aload 5
    //   144: ldc_w 490
    //   147: aload_1
    //   148: invokevirtual 491	java/io/StringWriter:toString	()Ljava/lang/String;
    //   151: invokevirtual 345	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   154: pop
    //   155: aload_3
    //   156: ifnull +13 -> 169
    //   159: aload 5
    //   161: ldc_w 560
    //   164: aload_3
    //   165: invokevirtual 345	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   168: pop
    //   169: aload_0
    //   170: ldc_w 562
    //   173: iconst_0
    //   174: invokestatic 131	java/lang/Integer:valueOf	(I)Ljava/lang/Integer;
    //   177: aload 5
    //   179: invokespecial 417	com/taplytics/cc:c	(Ljava/lang/String;Ljava/lang/Object;Lorg/json/JSONObject;)Lorg/json/JSONObject;
    //   182: astore_1
    //   183: aload_1
    //   184: ldc_w 419
    //   187: aload_2
    //   188: invokevirtual 345	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   191: pop
    //   192: aload_0
    //   193: aload_1
    //   194: invokespecial 421	com/taplytics/cc:a	(Lorg/json/JSONObject;)V
    //   197: return
    //   198: astore_1
    //   199: ldc_w 513
    //   202: aload_1
    //   203: invokestatic 505	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   206: return
    //   207: astore_1
    //   208: ldc_w 564
    //   211: aload_1
    //   212: invokestatic 469	com/taplytics/ck:c	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   215: goto -60 -> 155
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	218	0	this	cc
    //   0	218	1	paramString1	String
    //   0	218	2	paramString2	String
    //   0	218	3	paramString3	String
    //   0	218	4	paramException	Exception
    //   39	139	5	localJSONObject	JSONObject
    // Exception table:
    //   from	to	target	type
    //   41	80	198	org/json/JSONException
    //   85	121	198	org/json/JSONException
    //   121	155	198	org/json/JSONException
    //   159	169	198	org/json/JSONException
    //   169	197	198	org/json/JSONException
    //   208	215	198	org/json/JSONException
    //   121	155	207	java/lang/Exception
  }
  
  public void a(String paramString, JSONObject paramJSONObject)
  {
    if ((!fy.e().j()) || (iz.a(kb.caribou))) {}
    while ((paramString == null) || (paramJSONObject == null)) {
      return;
    }
    try
    {
      paramString = c(paramString, null, null);
      if (paramJSONObject.has("key")) {
        paramString.put("eKey", paramJSONObject.optString("key"));
      }
      if (paramJSONObject.has("vKey")) {
        paramString.put("vKey", fy.e().q().getClass().getSimpleName());
      }
      a(paramString);
      return;
    }
    catch (JSONException paramString)
    {
      ck.b("Track View Event", paramString);
    }
  }
  
  public Map<String, Long> b()
  {
    return c;
  }
  
  public void b(String paramString, Object paramObject, JSONObject paramJSONObject)
  {
    a(paramString, paramObject, paramJSONObject, null);
  }
  
  public void b(String paramString1, String paramString2)
  {
    a(paramString1, paramString2, null, null);
  }
  
  public void d()
  {
    if ((!fy.e().j()) || (iz.a(kb.anteater))) {
      return;
    }
    Object localObject = fy.e().k();
    if (localObject != null)
    {
      localObject = ((eo)localObject).d();
      label35:
      if ((localObject == null) || (b)) {
        break label303;
      }
      if ((!c("Mixpanel")) && (((JSONObject)localObject).optBoolean("mpSource", false)) && (!iz.a(kb.ape))) {
        dg.b().i();
      }
      if ((c("GA")) || (!((JSONObject)localObject).optBoolean("gaSource", false)) || (iz.a(kb.antelope))) {
        break label305;
      }
      dg.b().j();
      if (ck.c()) {
        ck.a("Enabling GA");
      }
      label130:
      if ((!c("Localytics")) && (((JSONObject)localObject).optBoolean("llSource", false)) && (!iz.a(kb.badger))) {
        dg.b().k();
      }
      if ((!c("Flurry")) && (((JSONObject)localObject).optBoolean("flSource", false)) && (!iz.a(kb.armadillo))) {
        dg.b().m();
      }
      if (c("Adobe")) {
        break label320;
      }
    }
    label303:
    label305:
    label320:
    for (int m = 1;; m = 0)
    {
      if (((m & ((JSONObject)localObject).has("adbSource")) != 0) && (((JSONObject)localObject).optBoolean("adbSource", true)) && (!iz.a(kb.baboon))) {
        dg.b().l();
      }
      if ((!c("Amplitude")) && (((JSONObject)localObject).optBoolean("ampSource", false)) && (!iz.a(kb.barracuda))) {
        dg.b().n();
      }
      dg.b().q();
      b = true;
      return;
      localObject = null;
      break label35;
      break;
      if (!ck.c()) {
        break label130;
      }
      ck.a("GA not enabled.");
      break label130;
    }
  }
  
  public void e()
  {
    if ((!fy.e().j()) || (iz.a(kb.alligator))) {
      return;
    }
    f.a();
  }
  
  public void f()
  {
    k.submit(new cj(this));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */