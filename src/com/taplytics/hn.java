package com.taplytics;

import android.content.Context;
import com.android.volley.DefaultRetryPolicy;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.BasicNetwork;
import com.android.volley.toolbox.DiskBasedCache;
import com.android.volley.toolbox.HurlStack;
import com.android.volley.toolbox.JsonObjectRequest;
import java.util.Date;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONObject;

public class hn
{
  private il a = il.alpaca;
  private String b = "taplytics.com";
  private String c = "ping.taplytics.com";
  private String d = "socketio.taplytics.com";
  private String e = "api.taplytics.com";
  private String f = "https://";
  private RequestQueue g;
  
  public hn(Context paramContext)
  {
    g = new RequestQueue(new DiskBasedCache(paramContext.getCacheDir(), 36700160), new BasicNetwork(new HurlStack()));
    g.start();
  }
  
  public String a()
  {
    String str = f + d;
    if (a != il.antelope) {
      return str + ":443";
    }
    return str + ":3020";
  }
  
  public void a(ik paramik)
  {
    if (!fy.e().j()) {
      return;
    }
    new ig(this).execute(new Object[] { paramik });
  }
  
  public void a(il paramil)
  {
    if (paramil != a)
    {
      a = paramil;
      switch (hs.a[a.ordinal()])
      {
      default: 
        d = "socketio.taplytics.com";
        b = "taplytics.com";
        c = "ping.taplytics.com";
        e = "api.taplytics.com";
        f = "https://";
        if (ck.c()) {
          ck.a("Switched to Production Server!");
        }
        break;
      }
    }
    do
    {
      do
      {
        do
        {
          return;
          d = "socketio-dev.taplytics.com";
          b = "dev.taplytics.com";
          c = "dev.taplytics.com";
          e = "dev.taplytics.com";
          f = "https://";
        } while (!ck.c());
        ck.a("Switched to Dev Server!");
        return;
        d = "socketio-staging.taplytics.com";
        b = "staging.taplytics.com";
        c = "staging.taplytics.com";
        e = "staging.taplytics.com";
        f = "https://";
      } while (!ck.c());
      ck.a("Switched to Staging Server!");
      return;
      d = "10.0.3.2";
      b = "10.0.3.2:3002";
      c = "10.0.3.2:3002";
      e = "10.0.3.2:3002";
      f = "http://";
    } while (!ck.c());
    ck.a("Switched to Local Host!");
  }
  
  public void a(Map<String, Object> paramMap, ij paramij)
  {
    if (!fy.e().j()) {
      return;
    }
    new id(this).execute(new Object[] { paramMap, paramij });
  }
  
  public void a(JSONArray paramJSONArray, ik paramik)
  {
    if (!fy.e().j()) {
      return;
    }
    String str = (f + b + "/api/v1/experimentElements").replaceAll(" ", "%20");
    JSONObject localJSONObject = gq.h().g();
    for (;;)
    {
      try
      {
        localObject = new JSONObject(localJSONObject.toString());
      }
      catch (Exception localException1)
      {
        try
        {
          ((JSONObject)localObject).put("t", fy.e().f());
          ((JSONObject)localObject).put("os", "Android");
          ((JSONObject)localObject).put("views", paramJSONArray);
          ((JSONObject)localObject).put("exp_id", localJSONObject.optString("experiment_id"));
          paramJSONArray = (JSONArray)localObject;
          if ((paramJSONArray == null) || (paramJSONArray.length() == 0)) {
            break;
          }
          localObject = new Date();
          paramJSONArray = new hl(1, str, paramJSONArray, gq.h().q(), new ho(this, (Date)localObject, paramik), new ht(this, str, paramik));
          paramJSONArray.setTag("post_viewinfo");
          g.add(paramJSONArray);
          return;
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            Object localObject;
            paramJSONArray = (JSONArray)localObject;
          }
        }
        localException1 = localException1;
        paramJSONArray = null;
      }
      ck.b("Setting POST experimentElements properties", localException1);
    }
  }
  
  public void a(JSONObject paramJSONObject, ik paramik)
  {
    if ((!fy.e().j()) || (paramJSONObject == null) || (paramJSONObject.length() == 0)) {
      return;
    }
    if (iz.a(kb.cattle))
    {
      paramik.a(null);
      return;
    }
    StringBuilder localStringBuilder = new StringBuilder(f + c + "/api/v1/clientEvents");
    String str = localStringBuilder.toString();
    fy.e().m().a(localStringBuilder);
    Date localDate = new Date();
    paramJSONObject = new JsonObjectRequest(1, localStringBuilder.toString().replaceAll(" ", "%20"), paramJSONObject, new hu(this, localDate, paramik), new hv(this, str, paramik));
    paramJSONObject.setTag("post_clientEvents");
    g.add(paramJSONObject);
  }
  
  public void b(ik paramik)
  {
    if (!fy.e().j()) {
      return;
    }
    new ia(this, null).execute(new ik[] { paramik });
  }
  
  public void b(JSONObject paramJSONObject, ik paramik)
  {
    if (!fy.e().j()) {
      return;
    }
    String str = f + e + "/api/v1/clientAppUser";
    Date localDate = new Date();
    paramJSONObject = new JsonObjectRequest(1, str.replaceAll(" ", "%20"), paramJSONObject, new hw(this, localDate, paramik), new hx(this, str, paramik));
    paramJSONObject.setRetryPolicy(new DefaultRetryPolicy(2500, 10, 1.5F));
    paramJSONObject.setTag("post_clientAppUser");
    g.add(paramJSONObject);
  }
  
  public void c(JSONObject paramJSONObject, ik paramik)
  {
    if ((!fy.e().j()) || (paramJSONObject == null) || (paramJSONObject.length() == 0)) {
      return;
    }
    String str = f + e + "/api/v1/resetAppUser";
    Date localDate = new Date();
    paramJSONObject = new JsonObjectRequest(1, str.replaceAll(" ", "%20"), paramJSONObject, new hy(this, localDate, paramik), new hp(this, str, paramik));
    paramJSONObject.setTag("post_resetAppUser");
    g.add(paramJSONObject);
  }
  
  public void d(JSONObject paramJSONObject, ik paramik)
  {
    try
    {
      if ((fy.e().j()) && (paramJSONObject != null))
      {
        if (paramJSONObject.length() == 0) {
          return;
        }
        String str = f + e + "/api/v1/pushToken";
        Date localDate = new Date();
        paramJSONObject = new JsonObjectRequest(1, str.replaceAll(" ", "%20"), paramJSONObject, new hq(this, localDate, paramik), new hr(this, str, paramik));
        paramJSONObject.setTag("post_pushToken");
        g.add(paramJSONObject);
        return;
      }
    }
    catch (Throwable paramJSONObject) {}
  }
}

/* Location:
 * Qualified Name:     com.taplytics.hn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */