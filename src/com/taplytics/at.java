package com.taplytics;

import com.taplytics.sdk.TaplyticsVar;
import com.taplytics.sdk.TaplyticsVarListener;
import java.util.WeakHashMap;
import org.json.JSONObject;

class at
  extends h
{
  at(as paramas, String paramString, Object paramObject, TaplyticsVar paramTaplyticsVar, Class paramClass) {}
  
  public void d()
  {
    super.d();
    if (c != null) {
      c.listener.variableUpdated(b);
    }
  }
  
  public void e()
  {
    super.a();
    en localen;
    try
    {
      localen = fy.e().k().h();
      if ((localen != null) && (!localen.has(a)))
      {
        as.a(e, a, b);
        if (c.listener == null) {
          return;
        }
        c.listener.variableUpdated(b);
        return;
      }
      JSONObject localJSONObject = null;
      if (localen != null) {
        localJSONObject = localen.getJSONObject(a);
      }
      if (((localJSONObject == null) || (!localJSONObject.has("value"))) && (fy.e().g()))
      {
        as.a(e, a, b);
        return;
      }
    }
    catch (Exception localException)
    {
      ck.b("Problem setting dynamic var after tlprop promise return", localException);
      return;
    }
    Object localObject1 = b;
    Object localObject2 = localObject1;
    if (localen != null)
    {
      localObject2 = localObject1;
      if (localen.optJSONObject(a) != null)
      {
        localObject2 = localObject1;
        if (localen.optJSONObject(a).opt("value") != null)
        {
          localObject2 = localen.optJSONObject(a).opt("value");
          if (!localObject2.getClass().equals(d)) {
            break label289;
          }
        }
      }
    }
    if (fy.e().g()) {
      if ((as.a(e).containsKey(a)) && ((as.a(e).get(a) instanceof TaplyticsVar))) {
        localObject1 = (TaplyticsVar)as.a(e).get(a);
      }
    }
    for (;;)
    {
      if (localObject1 == null) {
        return;
      }
      as.a(e, (TaplyticsVar)localObject1, localObject2, a, b);
      return;
      label289:
      ck.b("Variable types do no match. For " + a + " expected: " + d + " but found: " + localObject2.getClass() + ". Check variable config and try clearing app data.");
      as.a(e, a, b);
      localObject2 = localObject1;
      break;
      localObject1 = c;
      continue;
      localObject1 = c;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */