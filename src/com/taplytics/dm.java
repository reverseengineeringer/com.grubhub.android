package com.taplytics;

import java.util.Map;
import org.json.JSONObject;

class dm
  implements Runnable
{
  dm(dg paramdg, Map paramMap, Object paramObject) {}
  
  public void run()
  {
    Object localObject = fy.e().k();
    if ((localObject != null) && (a != null) && (a.size() != 0) && (((eo)localObject).s() != null))
    {
      localObject = ((eo)localObject).s();
      if ((c.f) && (c.h()) && (((JSONObject)localObject).optBoolean("amplitude", false))) {
        dg.a(c, a);
      }
      if ((c.c) && (c.e().booleanValue()) && (((JSONObject)localObject).optBoolean("adobe", false))) {
        dg.b(c, a);
      }
      if ((c.e) && (c.g()) && (((JSONObject)localObject).optBoolean("localytics", false))) {
        dg.c(c, a);
      }
      if ((c.b) && (c.d()) && (((JSONObject)localObject).optBoolean("flurry", false))) {
        dg.d(c, a);
      }
      if ((c.a) && (c.c()) && (((JSONObject)localObject).optBoolean("mixpanel", false))) {
        dg.e(c, a);
      }
      if ((c.d) && (c.f()) && (((JSONObject)localObject).optBoolean("googleAnalytics", false))) {
        c.b(a, b);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */