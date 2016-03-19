package com.paypal.android.sdk;

import android.content.Context;
import android.util.Base64;
import android.util.Log;
import java.io.File;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class z
{
  private static final String a = z.class.getSimpleName();
  private Context b;
  private String c;
  private JSONObject d;
  
  public z(Context paramContext)
  {
    b = paramContext;
    c = null;
    d = j();
    ch.a(a, "Configuation initialize, dumping config");
    ch.a(a, d);
  }
  
  public z(Context paramContext, String paramString)
  {
    this(paramContext, paramString, (byte)0);
  }
  
  private z(Context paramContext, String paramString, byte paramByte)
  {
    ch.a(a, "entering Configuration url loading");
    b = paramContext;
    c = paramString;
    paramContext = o();
    if ("".equals(paramContext)) {
      throw new IOException("No valid config found for " + paramString);
    }
    ch.a(a, "entering saveConfigDataToDisk");
    try
    {
      paramString = new File(b.getFilesDir(), "CONFIG_DATA");
      File localFile = new File(b.getFilesDir(), "CONFIG_TIME");
      ft.a(paramString, paramContext);
      ft.a(localFile, String.valueOf(System.currentTimeMillis()));
      ch.a(a, "leaving saveConfigDataToDisk successfully");
      d = new JSONObject(paramContext);
      ch.a(a, "leaving Configuration url loading");
      return;
    }
    catch (IOException paramString)
    {
      for (;;)
      {
        new StringBuilder("Failed to write config data: ").append(paramString.toString());
      }
    }
  }
  
  private JSONObject a(String paramString)
  {
    try
    {
      ch.a(a, "entering getIncrementalConfig");
      JSONObject localJSONObject = new JSONObject(ch.b(b, paramString));
      ch.a(a, "leaving getIncrementalConfig");
      return localJSONObject;
    }
    catch (Exception localException)
    {
      ch.a(6, "PRD", "Error while loading prdc Config " + paramString, localException);
    }
    return null;
  }
  
  private static JSONObject a(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    try
    {
      ch.a(a, "entering mergeConfig");
      Iterator localIterator = paramJSONObject2.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ch.a(a, "overridding " + str);
        paramJSONObject1.put(str, paramJSONObject2.get(str));
      }
      ch.a(a, "leaving mergeConfig");
    }
    catch (Exception paramJSONObject1)
    {
      ch.a(6, "PRD", "Error encountered while applying prdc Config", paramJSONObject1);
      return null;
    }
    return paramJSONObject1;
  }
  
  private JSONObject j()
  {
    for (;;)
    {
      try
      {
        JSONObject localJSONObject = l();
        if (localJSONObject != null)
        {
          if (ch.b(localJSONObject.optString("conf_version", ""), "3.0"))
          {
            long l1 = Long.parseLong(r());
            long l2 = localJSONObject.optLong("conf_refresh_time_interval", 0L);
            if (System.currentTimeMillis() <= l1 + l2 * 1000L) {
              break label242;
            }
            i = 1;
            if (i != 0) {
              n();
            }
            ch.a(a, "Using cached config");
            return localJSONObject;
          }
          q();
        }
        localJSONObject = k();
        if (localJSONObject == null)
        {
          Log.e(a, "default Configuration loading failed,Using hardcoded config");
          return m();
        }
        localObject = ch.a(b, "prdc", null);
        if (localObject == null)
        {
          n();
          ch.a(3, "PRD", "prdc field not configured, using default config");
          return localJSONObject;
        }
      }
      catch (Exception localException)
      {
        ch.a(6, "PRD", "Severe Error while loading config, using hard code version", localException);
        return m();
      }
      ch.a(3, "PRD", "prdc field is configured, loading path:" + (String)localObject);
      Object localObject = a((String)localObject);
      if (localObject == null)
      {
        ch.a(6, "PRD", "prdc Configuration loading failed, using default config");
        return localException;
      }
      localObject = a(localException, (JSONObject)localObject);
      if (localObject == null)
      {
        ch.a(6, "PRD", "applying prdc Configuration failed, using default config");
        return localException;
      }
      ch.a(3, "PRD", "prdc configuration loaded successfully");
      return (JSONObject)localObject;
      label242:
      int i = 0;
    }
  }
  
  private static JSONObject k()
  {
    ch.a(a, "entering getDefaultConfigurations");
    try
    {
      Object localObject = new String(Base64.decode("eyAiY29uZl92ZXJzaW9uIjogIjMuMCIsImFzeW5jX3VwZGF0ZV90aW1lX2ludGVydmFsIjogMzYwMCwgImZvcmNlZF9mdWxsX3VwZGF0ZV90aW1lX2ludGVydmFsIjogMTgwMCwgImNvbmZfcmVmcmVzaF90aW1lX2ludGVydmFsIjogODY0MDAsICJhbmRyb2lkX2FwcHNfdG9fY2hlY2siOiBbICJjb20uZWJheS5jbGFzc2lmaWVkcy9jb20uZWJheS5hcHAuTWFpblRhYkFjdGl2aXR5IiwgImNvbS5lYmF5Lm1vYmlsZS9jb20uZWJheS5tb2JpbGUuYWN0aXZpdGllcy5lQmF5IiwgImNvbS5lYmF5LnJlZGxhc2VyL2NvbS5lYmF5LnJlZGxhc2VyLlNjYW5uZWRJdGVtc0FjdGl2aXR5IiwgImNvbS5taWxvLmFuZHJvaWQvY29tLm1pbG8uYW5kcm9pZC5hY3Rpdml0eS5Ib21lQWN0aXZpdHkiLCAiY29tLnBheXBhbC5hbmRyb2lkLnAycG1vYmlsZS9jb20ucGF5cGFsLmFuZHJvaWQucDJwbW9iaWxlLmFjdGl2aXR5LlNlbmRNb25leUFjdGl2aXR5IiwgImNvbS5yZW50L2NvbS5yZW50LmFjdGl2aXRpZXMuc2Vzc2lvbi5BY3Rpdml0eUhvbWUiLCAiY29tLnN0dWJodWIvY29tLnN0dWJodWIuQWJvdXQiLCAiY29tLnVsb2NhdGUvY29tLnVsb2NhdGUuYWN0aXZpdGllcy5TZXR0aW5ncyIsICJjb20ubm9zaHVmb3UuYW5kcm9pZC5zdS9jb20ubm9zaHVmb3UuYW5kcm9pZC5zdS5TdSIsICJzdGVyaWNzb24uYnVzeWJveC9zdGVyaWNzb24uYnVzeWJveC5BY3Rpdml0eS5NYWluQWN0aXZpdHkiLCAib3JnLnByb3h5ZHJvaWQvb3JnLnByb3h5ZHJvaWQuUHJveHlEcm9pZCIsICJjb20uYWVkLmRyb2lkdnBuL2NvbS5hZWQuZHJvaWR2cG4uTWFpbkdVSSIsICJuZXQub3BlbnZwbi5vcGVudnBuL25ldC5vcGVudnBuLm9wZW52cG4uT3BlblZQTkNsaWVudCIsICJjb20ucGhvbmVhcHBzOTkuYWFiaXByb3h5L2NvbS5waG9uZWFwcHM5OS5hYWJpcHJveHkuT3Jib3QiLCAiY29tLmV2YW5oZS5wcm94eW1hbmFnZXIucHJvL2NvbS5ldmFuaGUucHJveHltYW5hZ2VyLk1haW5BY3Rpdml0eSIsICJjb20uZXZhbmhlLnByb3h5bWFuYWdlci9jb20uZXZhbmhlLnByb3h5bWFuYWdlci5NYWluQWN0aXZpdHkiLCAiY29tLmFuZHJvbW8uZGV2MzA5MzYuYXBwNzYxOTgvY29tLmFuZHJvbW8uZGV2MzA5MzYuYXBwNzYxOTguQW5kcm9tb0Rhc2hib2FyZEFjdGl2aXR5IiwgImNvbS5tZ3JhbmphLmF1dG9wcm94eV9saXRlL2NvbS5tZ3JhbmphLmF1dG9wcm94eV9saXRlLlByb3h5TGlzdEFjdGl2aXR5IiwgImNvbS52cG5vbmVjbGljay5hbmRyb2lkL2NvbS52cG5vbmVjbGljay5hbmRyb2lkLk1haW5BY3Rpdml0eSIsICJuZXQuaGlkZW1hbi9uZXQuaGlkZW1hbi5TdGFydGVyQWN0aXZpdHkiLCAiY29tLmRvZW50ZXIuYW5kcm9pZC52cG4uZml2ZXZwbi9jb20uZG9lbnRlci5hbmRyb2lkLnZwbi5maXZldnBuLkZpdmVWcG4iLCAiY29tLnRpZ2VydnBucy5hbmRyb2lkL2NvbS50aWdlcnZwbnMuYW5kcm9pZC5NYWluQWN0aXZpdHkiLCAiY29tLnBhbmRhcG93LnZwbi9jb20ucGFuZGFwb3cudnBuLlBhbmRhUG93IiwgImNvbS5leHByZXNzdnBuLnZwbi9jb20uZXhwcmVzc3Zwbi52cG4uTWFpbkFjdGl2aXR5IiwgImNvbS5sb25kb250cnVzdG1lZGlhLnZwbi9jb20ubG9uZG9udHJ1c3RtZWRpYS52cG4uVnBuU2VydmljZUFjdGl2aXR5IiwgImZyLm1lbGVjb20uVlBOUFBUUC52MTAxL2ZyLm1lbGVjb20uVlBOUFBUUC52MTAxLlNwbGFzaFNjcmVlbiIsICJjb20uY2hlY2twb2ludC5WUE4vY29tLmNoZWNrcG9pbnQuVlBOLk1haW5IYW5kbGVyIiwgImNvbS50dW5uZWxiZWFyLmFuZHJvaWQvY29tLnR1bm5lbGJlYXIuYW5kcm9pZC5UYmVhck1haW5BY3Rpdml0eSIsICJkZS5ibGlua3Qub3BlbnZwbi9kZS5ibGlua3Qub3BlbnZwbi5NYWluQWN0aXZpdHkiLCAib3JnLmFqZWplLmZha2Vsb2NhdGlvbi9vcmcuYWplamUuZmFrZWxvY2F0aW9uLkZha2UiLCAiY29tLmxleGEuZmFrZWdwcy9jb20ubGV4YS5mYWtlZ3BzLlBpY2tQb2ludCIsICJjb20uZm9yZ290dGVucHJvamVjdHMubW9ja2xvY2F0aW9ucy9jb20uZm9yZ290dGVucHJvamVjdHMubW9ja2xvY2F0aW9ucy5NYWluIiwgImtyLndvb3QwcGlhLmdwcy9rci53b290MHBpYS5ncHMuQ2F0Y2hNZUlmVUNhbiIsICJjb20ubXkuZmFrZS5sb2NhdGlvbi9jb20ubXkuZmFrZS5sb2NhdGlvbi5jb20ubXkuZmFrZS5sb2NhdGlvbiIsICJqcC5uZXRhcnQuYXJzdGFsa2luZy9qcC5uZXRhcnQuYXJzdGFsa2luZy5NeVByZWZlcmVuY2VBY3Rpdml0eSIsICJsb2NhdGlvblBsYXkuR1BTQ2hlYXRGcmVlL2xvY2F0aW9uUGxheS5HUFNDaGVhdEZyZWUuQWN0aXZpdHlTbWFydExvY2F0aW9uIiwgIm9yZy5nb29kZXYubGF0aXR1ZGUvb3JnLmdvb2Rldi5sYXRpdHVkZS5MYXRpdHVkZUFjdGl2aXR5IiwgImNvbS5zY2hlZmZzYmxlbmQuZGV2aWNlc3Bvb2YvY29tLnNjaGVmZnNibGVuZC5kZXZpY2VzcG9vZi5EZXZpY2VTcG9vZkFjdGl2aXR5IiwgImNvbS5wcm94eUJyb3dzZXIvY29tLnByb3h5QnJvd3Nlci5OZXdQcm94eUJyb3dzZXJBY3Rpdml0eSIsICJjb20uaWNlY29sZGFwcHMucHJveHlzZXJ2ZXJwcm8vY29tLmljZWNvbGRhcHBzLnByb3h5c2VydmVycHJvLnZpZXdTdGFydCIsICJob3RzcG90c2hpZWxkLmFuZHJvaWQudnBuL2NvbS5hbmNob3JmcmVlLnVpLkhvdFNwb3RTaGllbGQiLCAiY29tLmRvZW50ZXIub25ldnBuL2NvbS5kb2VudGVyLm9uZXZwbi5WcG5TZXR0aW5ncyIsICJjb20ueWVzdnBuLmVuL2NvbS55ZXN2cG4uTWFpblRhYiIsICJjb20ub2ZmaWNld3l6ZS5wbHV0b3Zwbi9jb20ub2ZmaWNld3l6ZS5wbHV0b3Zwbi5Ib21lQWN0aXZpdHkiLCAib3JnLmFqZWplLmxvY2F0aW9uc3Bvb2ZlcnByby9vcmcuYWplamUubG9jYXRpb25zcG9vZmVycHJvLkZha2UiLCAibG9jYXRpb25QbGF5LkdQU0NoZWF0L2xvY2F0aW9uUGxheS5HUFNDaGVhdC5BY3Rpdml0eVNtYXJ0TG9jYXRpb24iIF0sICJsb2NhdGlvbl9taW5fYWNjdXJhY3kiOiA1MDAsICJsb2NhdGlvbl9tYXhfY2FjaGVfYWdlIjogMTgwMCwgInNlbmRfb25fYXBwX3N0YXJ0IjogMSwgImVuZHBvaW50X3VybCI6ICJodHRwczovL3N2Y3MucGF5cGFsLmNvbS9BY2Nlc3NDb250cm9sL0xvZ1Jpc2tNZXRhZGF0YSIsICJpbnRlcm5hbF9jYWNoZV9tYXhfYWdlIjogMzAsICJjb21wX3RpbWVvdXQiOiA2MDAgfQ==", 0), "UTF-8");
      ch.a(a, "leaving getDefaultConfigurations, Default Conf load succeed");
      localObject = new JSONObject((String)localObject);
      return (JSONObject)localObject;
    }
    catch (Exception localException)
    {
      ch.a(6, "PRD", "Read default config file exception.", localException);
      ch.a(a, "leaving getDefaultConfigurations,returning null");
    }
    return null;
  }
  
  private JSONObject l()
  {
    ch.a(a, "entering getCachedConfiguration");
    try
    {
      Object localObject = p();
      if (!"".equals(localObject))
      {
        ch.a(a, "leaving getCachedConfiguration,cached config load succeed");
        localObject = new JSONObject((String)localObject);
        return (JSONObject)localObject;
      }
    }
    catch (Exception localException)
    {
      ch.a(a, "JSON Exception in creating config file", localException);
      ch.a(a, "leaving getCachedConfiguration,cached config load failed");
    }
    return null;
  }
  
  private static JSONObject m()
  {
    ch.a(a, "entering getHardcodedConfig");
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("conf_version", "3.0");
      localJSONObject.put("async_update_time_interval", 3600);
      localJSONObject.put("forced_full_update_time_interval", 1800);
      localJSONObject.put("conf_refresh_time_interval", 86400);
      localJSONObject.put("location_min_accuracy", 500);
      localJSONObject.put("location_max_cache_age", 1800);
      localJSONObject.put("endpoint_url", "https://svcs.paypal.com/AccessControl/LogRiskMetadata");
      ch.a(a, "leaving getHardcodedConfig");
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  private static void n()
  {
    ch.a(a, "Loading web config");
    bf.a().b();
  }
  
  /* Error */
  private String o()
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_3
    //   2: getstatic 21	com/paypal/android/sdk/z:a	Ljava/lang/String;
    //   5: ldc_w 315
    //   8: invokestatic 43	com/paypal/android/sdk/ch:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   11: new 67	java/lang/StringBuilder
    //   14: dup
    //   15: invokespecial 316	java/lang/StringBuilder:<init>	()V
    //   18: astore 4
    //   20: new 318	java/net/URL
    //   23: dup
    //   24: aload_0
    //   25: getfield 30	com/paypal/android/sdk/z:c	Ljava/lang/String;
    //   28: invokespecial 319	java/net/URL:<init>	(Ljava/lang/String;)V
    //   31: invokevirtual 323	java/net/URL:openStream	()Ljava/io/InputStream;
    //   34: astore_1
    //   35: new 325	java/io/BufferedReader
    //   38: dup
    //   39: new 327	java/io/InputStreamReader
    //   42: dup
    //   43: aload_1
    //   44: ldc_w 258
    //   47: invokespecial 330	java/io/InputStreamReader:<init>	(Ljava/io/InputStream;Ljava/lang/String;)V
    //   50: invokespecial 333	java/io/BufferedReader:<init>	(Ljava/io/Reader;)V
    //   53: astore_2
    //   54: aload_2
    //   55: invokevirtual 336	java/io/BufferedReader:readLine	()Ljava/lang/String;
    //   58: astore_3
    //   59: aload_3
    //   60: ifnull +30 -> 90
    //   63: aload 4
    //   65: aload_3
    //   66: invokevirtual 76	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   69: pop
    //   70: goto -16 -> 54
    //   73: astore 4
    //   75: aload_1
    //   76: astore_3
    //   77: aload 4
    //   79: astore_1
    //   80: aload_3
    //   81: invokestatic 339	com/paypal/android/sdk/ft:a	(Ljava/io/Closeable;)V
    //   84: aload_2
    //   85: invokestatic 339	com/paypal/android/sdk/ft:a	(Ljava/io/Closeable;)V
    //   88: aload_1
    //   89: athrow
    //   90: aload_1
    //   91: invokestatic 339	com/paypal/android/sdk/ft:a	(Ljava/io/Closeable;)V
    //   94: aload_2
    //   95: invokestatic 339	com/paypal/android/sdk/ft:a	(Ljava/io/Closeable;)V
    //   98: getstatic 21	com/paypal/android/sdk/z:a	Ljava/lang/String;
    //   101: ldc_w 341
    //   104: invokestatic 43	com/paypal/android/sdk/ch:a	(Ljava/lang/String;Ljava/lang/String;)V
    //   107: aload 4
    //   109: invokevirtual 79	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   112: areturn
    //   113: astore_1
    //   114: aconst_null
    //   115: astore_2
    //   116: goto -36 -> 80
    //   119: astore 4
    //   121: aconst_null
    //   122: astore_2
    //   123: aload_1
    //   124: astore_3
    //   125: aload 4
    //   127: astore_1
    //   128: goto -48 -> 80
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	131	0	this	z
    //   34	57	1	localObject1	Object
    //   113	11	1	localObject2	Object
    //   127	1	1	localObject3	Object
    //   53	70	2	localBufferedReader	java.io.BufferedReader
    //   1	124	3	localObject4	Object
    //   18	46	4	localStringBuilder	StringBuilder
    //   73	35	4	localObject5	Object
    //   119	7	4	localObject6	Object
    // Exception table:
    //   from	to	target	type
    //   54	59	73	finally
    //   63	70	73	finally
    //   20	35	113	finally
    //   35	54	119	finally
  }
  
  private String p()
  {
    Object localObject = new File(b.getFilesDir(), "CONFIG_DATA");
    try
    {
      localObject = ft.a((File)localObject);
      return (String)localObject;
    }
    catch (IOException localIOException)
    {
      ch.a(a, "Load cached config failed", localIOException);
    }
    return "";
  }
  
  private boolean q()
  {
    try
    {
      ch.a(a, "entering deleteCachedConfigDataFromDisk");
      File localFile1 = new File(b.getFilesDir(), "CONFIG_DATA");
      File localFile2 = new File(b.getFilesDir(), "CONFIG_TIME");
      if (localFile1.exists())
      {
        ch.a(a, "cached Config Data found, deleting");
        localFile1.delete();
      }
      if (localFile2.exists())
      {
        ch.a(a, "cached Config Time found, deleting");
        localFile1.delete();
      }
      ch.a(a, "leaving deleteCachedConfigDataFromDisk");
      return true;
    }
    catch (Exception localException)
    {
      ch.a(a, "error encountered while deleteCachedConfigData", localException);
    }
    return false;
  }
  
  private String r()
  {
    Object localObject = new File(b.getFilesDir(), "CONFIG_TIME");
    try
    {
      localObject = ft.a((File)localObject);
      return (String)localObject;
    }
    catch (IOException localIOException) {}
    return "";
  }
  
  public final String a()
  {
    return c;
  }
  
  public final String b()
  {
    return d.optString("conf_version", "");
  }
  
  public final long c()
  {
    return d.optLong("async_update_time_interval", 0L);
  }
  
  public final long d()
  {
    return d.optLong("forced_full_update_time_interval", 0L);
  }
  
  public final long e()
  {
    return d.optLong("comp_timeout", 0L);
  }
  
  public final List f()
  {
    ArrayList localArrayList = new ArrayList();
    JSONArray localJSONArray = d.optJSONArray("android_apps_to_check");
    int i = 0;
    while ((localJSONArray != null) && (i < localJSONArray.length()))
    {
      localArrayList.add(localJSONArray.getString(i));
      i += 1;
    }
    return localArrayList;
  }
  
  public final String g()
  {
    return d.optString("endpoint_url", null);
  }
  
  public final boolean h()
  {
    return d.optBoolean("endpoint_is_stage", false);
  }
  
  public final ce i()
  {
    try
    {
      Object localObject = d.optString("CDS", "");
      if ((localObject == null) || ("".equals(localObject)))
      {
        ch.a(3, "PRD", "No CDS is configured, enabling all variables");
        return ce.a;
      }
      ch.a(3, "PRD", "CDS field was found");
      localObject = new ce(((String)localObject).trim());
      return (ce)localObject;
    }
    catch (Exception localException)
    {
      ch.a(6, "PRD", "Failed to decode CDS", localException);
    }
    return ce.a;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */