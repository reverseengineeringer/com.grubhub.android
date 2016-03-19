package com.taplytics;

import android.util.Log;
import com.taplytics.sdk.TaplyticsPushSubscriptionChangedListener;
import com.taplytics.sdk.TaplyticsResetUserListener;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class cl
{
  private static final Map<String, String> c;
  private JSONObject a;
  private boolean b = false;
  private Boolean d = Boolean.valueOf(false);
  private Boolean e = Boolean.valueOf(false);
  
  static
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("user_id", "String");
    localHashMap.put("email", "String");
    localHashMap.put("name", "String");
    localHashMap.put("gender", "String");
    localHashMap.put("age", "Number");
    localHashMap.put("firstName", "String");
    localHashMap.put("lastName", "String");
    localHashMap.put("avatarUrl", "String");
    c = Collections.unmodifiableMap(localHashMap);
  }
  
  private void a(String paramString, Object paramObject)
    throws JSONException
  {
    JSONObject localJSONObject;
    if (a.has("customData"))
    {
      localJSONObject = a.getJSONObject("customData");
      localJSONObject.put(paramString, paramObject);
    }
    for (paramString = localJSONObject;; paramString = localJSONObject)
    {
      if (paramString.length() > 0) {
        a.put("customData", paramString);
      }
      return;
      localJSONObject = new JSONObject();
      localJSONObject.put(paramString, paramObject);
    }
  }
  
  private Object b(String paramString, Object paramObject)
    throws Exception
  {
    if ((paramString == null) || (paramObject == null)) {
      throw new Exception("No type or value to clean attribute value");
    }
    if ((paramString.equals("String")) && ((paramObject instanceof String))) {}
    while (((paramString.equals("Number")) && ((paramObject instanceof Number))) || ((paramString.equals("JSONObject")) && ((paramObject instanceof JSONObject)))) {
      return paramObject;
    }
    return null;
  }
  
  private void b(eq parameq)
  {
    if (parameq != null) {
      parameq.a();
    }
    cs.a().b(a);
    if (!b)
    {
      b = true;
      iz.d().schedule(new cn(this, parameq), Math.round((30.0D + iz.a(10.0D)) * 1000.0D), TimeUnit.MILLISECONDS);
    }
  }
  
  public String a(String paramString)
  {
    String str = null;
    if (a != null) {
      str = a.optString(paramString, null);
    }
    return str;
  }
  
  public void a()
  {
    cs.a().a(new cm(this));
  }
  
  /* Error */
  public void a(eq parameq)
  {
    // Byte code:
    //   0: invokestatic 187	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   3: invokevirtual 191	com/taplytics/fy:j	()Z
    //   6: ifeq +10 -> 16
    //   9: aload_0
    //   10: getfield 74	com/taplytics/cl:a	Lorg/json/JSONObject;
    //   13: ifnonnull +14 -> 27
    //   16: aload_1
    //   17: ifnull +9 -> 26
    //   20: aload_1
    //   21: invokeinterface 125 1 0
    //   26: return
    //   27: new 85	org/json/JSONObject
    //   30: dup
    //   31: aload_0
    //   32: getfield 74	com/taplytics/cl:a	Lorg/json/JSONObject;
    //   35: invokevirtual 195	org/json/JSONObject:toString	()Ljava/lang/String;
    //   38: invokespecial 196	org/json/JSONObject:<init>	(Ljava/lang/String;)V
    //   41: astore_3
    //   42: invokestatic 187	com/taplytics/fy:e	()Lcom/taplytics/fy;
    //   45: astore 4
    //   47: aload 4
    //   49: invokevirtual 200	com/taplytics/fy:k	()Lcom/taplytics/eo;
    //   52: astore 6
    //   54: aload 6
    //   56: ifnull +250 -> 306
    //   59: aload_0
    //   60: getfield 74	com/taplytics/cl:a	Lorg/json/JSONObject;
    //   63: invokevirtual 100	org/json/JSONObject:length	()I
    //   66: ifle +240 -> 306
    //   69: new 85	org/json/JSONObject
    //   72: dup
    //   73: invokespecial 101	org/json/JSONObject:<init>	()V
    //   76: astore 5
    //   78: aload 6
    //   80: invokevirtual 205	com/taplytics/eo:j	()Lorg/json/JSONObject;
    //   83: astore 7
    //   85: aload 4
    //   87: invokevirtual 208	com/taplytics/fy:f	()Ljava/lang/String;
    //   90: ifnull +16 -> 106
    //   93: aload 5
    //   95: ldc -46
    //   97: aload 4
    //   99: invokevirtual 208	com/taplytics/fy:f	()Ljava/lang/String;
    //   102: invokevirtual 96	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   105: pop
    //   106: aload 6
    //   108: invokevirtual 212	com/taplytics/eo:b	()Ljava/lang/String;
    //   111: ifnull +16 -> 127
    //   114: aload 5
    //   116: ldc -42
    //   118: aload 6
    //   120: invokevirtual 212	com/taplytics/eo:b	()Ljava/lang/String;
    //   123: invokevirtual 96	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   126: pop
    //   127: aload 6
    //   129: invokevirtual 217	com/taplytics/eo:c	()Lcom/taplytics/en;
    //   132: ifnull +21 -> 153
    //   135: aload 5
    //   137: ldc -37
    //   139: aload 6
    //   141: invokevirtual 217	com/taplytics/eo:c	()Lcom/taplytics/en;
    //   144: ldc -35
    //   146: invokevirtual 226	com/taplytics/en:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   149: invokevirtual 96	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   152: pop
    //   153: aload 5
    //   155: ldc -29
    //   157: ldc -27
    //   159: invokevirtual 96	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   162: pop
    //   163: aload 5
    //   165: ldc -25
    //   167: aload_0
    //   168: getfield 74	com/taplytics/cl:a	Lorg/json/JSONObject;
    //   171: invokevirtual 96	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   174: pop
    //   175: aload 7
    //   177: ifnull +30 -> 207
    //   180: aload 7
    //   182: ldc -35
    //   184: invokevirtual 89	org/json/JSONObject:has	(Ljava/lang/String;)Z
    //   187: istore_2
    //   188: iload_2
    //   189: ifeq +18 -> 207
    //   192: aload 5
    //   194: ldc -23
    //   196: aload 7
    //   198: ldc -35
    //   200: invokevirtual 234	org/json/JSONObject:getString	(Ljava/lang/String;)Ljava/lang/String;
    //   203: invokevirtual 96	org/json/JSONObject:put	(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    //   206: pop
    //   207: aload 5
    //   209: getstatic 238	org/json/JSONObject:NULL	Ljava/lang/Object;
    //   212: invokevirtual 239	java/lang/Object:equals	(Ljava/lang/Object;)Z
    //   215: ifne +31 -> 246
    //   218: aload 5
    //   220: invokevirtual 100	org/json/JSONObject:length	()I
    //   223: ifeq +23 -> 246
    //   226: aload 4
    //   228: invokevirtual 243	com/taplytics/fy:l	()Lcom/taplytics/hn;
    //   231: aload 5
    //   233: new 245	com/taplytics/co
    //   236: dup
    //   237: aload_0
    //   238: aload_1
    //   239: aload_3
    //   240: invokespecial 248	com/taplytics/co:<init>	(Lcom/taplytics/cl;Lcom/taplytics/eq;Lorg/json/JSONObject;)V
    //   243: invokevirtual 253	com/taplytics/hn:b	(Lorg/json/JSONObject;Lcom/taplytics/ik;)V
    //   246: aload_0
    //   247: aconst_null
    //   248: putfield 74	com/taplytics/cl:a	Lorg/json/JSONObject;
    //   251: invokestatic 130	com/taplytics/cs:a	()Lcom/taplytics/cs;
    //   254: invokevirtual 255	com/taplytics/cs:c	()V
    //   257: return
    //   258: astore 4
    //   260: ldc_w 257
    //   263: aload 4
    //   265: invokestatic 262	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   268: aload_0
    //   269: aload_3
    //   270: putfield 74	com/taplytics/cl:a	Lorg/json/JSONObject;
    //   273: aload_0
    //   274: aload_1
    //   275: invokespecial 78	com/taplytics/cl:b	(Lcom/taplytics/eq;)V
    //   278: return
    //   279: astore_3
    //   280: ldc_w 264
    //   283: aload_3
    //   284: invokestatic 262	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   287: aload_0
    //   288: aload_1
    //   289: invokespecial 78	com/taplytics/cl:b	(Lcom/taplytics/eq;)V
    //   292: return
    //   293: astore 6
    //   295: ldc_w 266
    //   298: aload 6
    //   300: invokestatic 262	com/taplytics/ck:b	(Ljava/lang/String;Ljava/lang/Exception;)V
    //   303: goto -96 -> 207
    //   306: aload 6
    //   308: ifnonnull -282 -> 26
    //   311: aload_0
    //   312: aload_1
    //   313: invokespecial 78	com/taplytics/cl:b	(Lcom/taplytics/eq;)V
    //   316: return
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	317	0	this	cl
    //   0	317	1	parameq	eq
    //   187	2	2	bool	boolean
    //   41	229	3	localJSONObject1	JSONObject
    //   279	5	3	localJSONException1	JSONException
    //   45	182	4	localfy	fy
    //   258	6	4	localException	Exception
    //   76	156	5	localJSONObject2	JSONObject
    //   52	88	6	localeo	eo
    //   293	14	6	localJSONException2	JSONException
    //   83	114	7	localJSONObject3	JSONObject
    // Exception table:
    //   from	to	target	type
    //   42	54	258	java/lang/Exception
    //   59	106	258	java/lang/Exception
    //   106	127	258	java/lang/Exception
    //   127	153	258	java/lang/Exception
    //   153	175	258	java/lang/Exception
    //   180	188	258	java/lang/Exception
    //   192	207	258	java/lang/Exception
    //   207	246	258	java/lang/Exception
    //   246	257	258	java/lang/Exception
    //   295	303	258	java/lang/Exception
    //   311	316	258	java/lang/Exception
    //   27	42	279	org/json/JSONException
    //   42	54	279	org/json/JSONException
    //   59	106	279	org/json/JSONException
    //   106	127	279	org/json/JSONException
    //   127	153	279	org/json/JSONException
    //   153	175	279	org/json/JSONException
    //   180	188	279	org/json/JSONException
    //   207	246	279	org/json/JSONException
    //   246	257	279	org/json/JSONException
    //   260	278	279	org/json/JSONException
    //   295	303	279	org/json/JSONException
    //   311	316	279	org/json/JSONException
    //   192	207	293	org/json/JSONException
  }
  
  public void a(TaplyticsResetUserListener paramTaplyticsResetUserListener)
  {
    if (ck.c()) {
      ck.a("Reseting app user");
    }
    try
    {
      fy localfy = fy.e();
      Object localObject = localfy.k();
      if (localObject != null)
      {
        JSONObject localJSONObject1 = new JSONObject();
        JSONObject localJSONObject2 = ((eo)localObject).j();
        if (localfy.f() != null) {
          localJSONObject1.put("t", localfy.f());
        }
        if (((eo)localObject).b() != null) {
          localJSONObject1.put("sid", ((eo)localObject).b());
        }
        if (localJSONObject2 != null)
        {
          boolean bool = localJSONObject2.has("_id");
          if (!bool) {}
        }
        try
        {
          localJSONObject1.put("auid", localJSONObject2.getString("_id"));
          localObject = fy.e().m().d();
          if ((localObject != null) && (((Map)localObject).get("id") != null)) {
            localJSONObject1.put("ad", ((Map)localObject).get("id"));
          }
          localfy.l().c(localJSONObject1, new cq(this, paramTaplyticsResetUserListener, localfy));
          return;
        }
        catch (JSONException localJSONException)
        {
          for (;;)
          {
            ck.b("Getting appUser_id", localJSONException);
          }
        }
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("Resetting App User Attributes", localException);
      if (paramTaplyticsResetUserListener != null) {
        paramTaplyticsResetUserListener.finishedResettingUser();
      }
    }
  }
  
  public void a(JSONObject paramJSONObject)
  {
    for (;;)
    {
      Object localObject2;
      try
      {
        if (!fy.e().j()) {
          return;
        }
        if (paramJSONObject == null) {
          break label418;
        }
        if (a == null) {
          a = new JSONObject();
        }
        i = 0;
        Iterator localIterator1 = paramJSONObject.keys();
        if (!localIterator1.hasNext()) {
          break;
        }
        localObject2 = (String)localIterator1.next();
        try
        {
          if (c.containsKey(localObject2))
          {
            localObject1 = b((String)c.get(localObject2), paramJSONObject.get((String)localObject2));
            if (localObject1 != null)
            {
              a.put((String)localObject2, localObject1);
              if (((String)localObject2).equals("email")) {
                break label419;
              }
              if (!((String)localObject2).equals("user_id")) {
                break label424;
              }
              break label419;
            }
            Log.w(ck.b(), "user attribute: " + (String)localObject2 + ", must be of type: " + (String)c.get(localObject2));
            break label424;
          }
          if (!((String)localObject2).equals("customData")) {
            break label353;
          }
          if (!a.has("customData")) {
            break label334;
          }
          Object localObject1 = a.getJSONObject((String)localObject2);
          localObject2 = paramJSONObject.getJSONObject((String)localObject2);
          Iterator localIterator2 = ((JSONObject)localObject2).keys();
          if (localIterator2.hasNext())
          {
            String str = (String)localIterator2.next();
            ((JSONObject)localObject1).put(str, ((JSONObject)localObject2).get(str));
            continue;
          }
        }
        catch (Exception localException)
        {
          ck.b("Cleaning AppUser JSON Attribute", localException);
        }
        a.put("customData", localException);
      }
      catch (Exception paramJSONObject)
      {
        ck.c("Issue when updating user attributes: " + paramJSONObject.getMessage());
        return;
      }
      continue;
      label334:
      a.put((String)localObject2, paramJSONObject.getJSONObject((String)localObject2));
      continue;
      label353:
      a((String)localObject2, paramJSONObject.get((String)localObject2));
    }
    if (ck.c()) {
      ck.a("Update App User Attributes: " + a.toString());
    }
    if (i != 0)
    {
      a(null);
      return;
    }
    b(null);
    label418:
    return;
    label419:
    int i = 1;
    label424:
    for (;;)
    {
      break;
    }
  }
  
  public void a(boolean paramBoolean, TaplyticsPushSubscriptionChangedListener paramTaplyticsPushSubscriptionChangedListener)
  {
    try
    {
      if (a == null) {
        a = new JSONObject();
      }
      a.put("push_enabled", paramBoolean);
      if (paramTaplyticsPushSubscriptionChangedListener == null) {}
      for (paramTaplyticsPushSubscriptionChangedListener = null;; paramTaplyticsPushSubscriptionChangedListener = new cw(this, paramTaplyticsPushSubscriptionChangedListener))
      {
        a(paramTaplyticsPushSubscriptionChangedListener);
        return;
      }
      return;
    }
    catch (JSONException paramTaplyticsPushSubscriptionChangedListener) {}
  }
  
  public void b(TaplyticsResetUserListener paramTaplyticsResetUserListener)
  {
    if (fy.e().k() != null)
    {
      d = Boolean.valueOf(false);
      e = Boolean.valueOf(false);
      a(new ct(this, paramTaplyticsResetUserListener));
      fy.e().n().a(new cu(this, paramTaplyticsResetUserListener));
      return;
    }
    c localc = new c();
    localc.a(new cv(this, paramTaplyticsResetUserListener));
    fy.e().a(null, localc);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */