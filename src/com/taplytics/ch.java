package com.taplytics;

import android.util.Pair;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class ch
  implements Runnable
{
  ch(cc paramcc, eq parameq) {}
  
  public void run()
  {
    cc.a(b, null);
    fy localfy = fy.e();
    Object localObject2 = localfy.k();
    String str;
    if (localObject2 != null) {
      str = ((eo)localObject2).b();
    }
    ArrayList localArrayList;
    Object localObject3;
    Object localObject1;
    for (;;)
    {
      try
      {
        localArrayList = cc.a(b).a(100);
        if ((localArrayList.size() <= 0) || (localObject2 == null) || (str == null)) {
          break label404;
        }
        localObject2 = new JSONArray();
        localObject3 = localArrayList.iterator();
        if (!((Iterator)localObject3).hasNext()) {
          break;
        }
        JSONObject localJSONObject = (JSONObject)((Iterator)localObject3).next();
        try
        {
          if (!localJSONObject.has("sid")) {
            localJSONObject.put("sid", str);
          }
          if (!localJSONObject.has("prod"))
          {
            if (!fy.e().g()) {
              break label307;
            }
            localJSONObject.put("prod", 0);
          }
          if ((localJSONObject.get("type").equals("tlError")) && (localJSONObject.has("data")))
          {
            Object localObject4 = localJSONObject.optJSONObject("data");
            if (((JSONObject)localObject4).has("taplyticsMessage"))
            {
              localObject4 = ((JSONObject)localObject4).optString("taplyticsMessage");
              if (cc.g().containsKey(localObject4))
              {
                localJSONObject.put("val", ggetsecond);
                cc.g().put(localObject4, new Pair(Boolean.valueOf(false), ggetsecond));
              }
            }
          }
          ((JSONArray)localObject2).put(localJSONObject);
        }
        catch (JSONException localJSONException)
        {
          ck.b("Adding JSONObject to eventQueue", localJSONException);
        }
        continue;
        localObject1 = null;
      }
      catch (Exception localException1)
      {
        ck.b("Something has gone wrong flushing.", localException1);
        return;
      }
      continue;
      label307:
      localJSONException.put("prod", 1);
    }
    try
    {
      localObject3 = new JSONObject();
      if (localfy.f() != null) {
        ((JSONObject)localObject3).put("t", localfy.f());
      }
      ((JSONObject)localObject3).put("sid", localObject1);
      ((JSONObject)localObject3).put("e", localObject2);
      localfy.l().a((JSONObject)localObject3, new ci(this, localArrayList));
      return;
    }
    catch (Exception localException2)
    {
      ck.b("Flushing Events Queue", localException2);
      cc.a(b, a);
      return;
    }
    label404:
    cc.a(b, a);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ch
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */