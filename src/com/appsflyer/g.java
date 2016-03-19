package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.Log;
import com.appsflyer.a.a;
import com.appsflyer.a.b;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.util.Map;

class g
  implements Runnable
{
  Map<String, String> a;
  boolean b;
  private String c;
  private WeakReference<Context> d = null;
  
  private g(String paramString, Map<String, String> paramMap, Context paramContext, boolean paramBoolean)
  {
    c = paramString;
    a = paramMap;
    d = new WeakReference(paramContext);
    b = paramBoolean;
  }
  
  public void run()
  {
    String str = AppsFlyerLib.a(a);
    try
    {
      localObject1 = (Context)d.get();
      if (localObject1 == null) {
        break label360;
      }
      localObject2 = h.a().a((Context)localObject1);
      if ((localObject2 != null) && (((String)localObject2).length() > 0) && (a.get("referrer") == null)) {
        a.put("referrer", localObject2);
      }
      boolean bool2 = "true".equals(((Context)localObject1).getSharedPreferences("appsflyer-data", 0).getString("sentSuccessfully", ""));
      localObject2 = (String)a.get("eventName");
      Map localMap = a;
      if (localObject2 != null) {
        break label366;
      }
      bool1 = true;
      localMap.put("counter", Integer.toString(AppsFlyerLib.a((Context)localObject1, bool1)));
      bool1 = bool2;
    }
    catch (Throwable localThrowable)
    {
      Object localObject1;
      Log.e(str, localThrowable.getMessage(), localThrowable);
      return;
    }
    catch (IOException localIOException1)
    {
      for (;;)
      {
        Object localObject2 = null;
        continue;
        bool1 = false;
      }
    }
    localObject1 = a;
    if (!bool1) {}
    for (boolean bool1 = true;; bool1 = false)
    {
      ((Map)localObject1).put("isFirstCall", Boolean.toString(bool1));
      localObject2 = (String)a.get("appsflyerKey");
      if ((localObject2 == null) || (((String)localObject2).length() == 0))
      {
        Log.d(str, "Not sending data yet, waiting for dev key");
        return;
      }
      localObject1 = new m().a(a);
      a.put("af_v", localObject1);
      localObject1 = AppsFlyerLib.b(a);
      try
      {
        AppsFlyerLib.a(c, (String)localObject1, (String)localObject2, d, null, str, b);
        return;
      }
      catch (IOException localIOException2)
      {
        localObject2 = localObject1;
        localObject1 = localIOException2;
      }
      if ((localObject2 != null) && (d != null) && (!c.contains("&isCachedRequest=true")))
      {
        Log.e(str, ((IOException)localObject1).getMessage(), (Throwable)localObject1);
        a.a().a(new b(c, (String)localObject2, "1.16"), (Context)d.get());
        return;
      }
      label360:
      return;
      label366:
      bool1 = false;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */