package com.taplytics;

import org.json.JSONObject;

class dv
  implements hj
{
  dv(cs paramcs, gr paramgr) {}
  
  public void a(Object paramObject, Exception paramException)
  {
    if (paramException != null)
    {
      a.a(null, paramException);
      return;
    }
    if (paramObject == null)
    {
      a.a(null, null);
      return;
    }
    try
    {
      paramObject = (JSONObject)paramObject;
      if (((JSONObject)paramObject).has("sid")) {
        ((JSONObject)paramObject).remove("sid");
      }
      paramObject = new eo((JSONObject)paramObject);
      a.a((eo)paramObject, null);
      return;
    }
    catch (Exception paramObject)
    {
      a.a(null, (Exception)paramObject);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */