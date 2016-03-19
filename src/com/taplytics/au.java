package com.taplytics;

import java.util.Date;
import org.json.JSONObject;

class au
  extends h
{
  au(as paramas, String paramString, Object paramObject) {}
  
  public void e()
  {
    super.e();
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("name", a);
      localJSONObject.put("createdAt", new Date());
      localJSONObject.put("defaultVal", b);
      try
      {
        localJSONObject.put("variableType", b.getClass().getSimpleName());
        im.a().a("newDynamicVar", localJSONObject);
        return;
      }
      catch (Throwable localThrowable)
      {
        for (;;)
        {
          localJSONObject.put("variableType", "unknown");
        }
      }
      return;
    }
    catch (Exception localException)
    {
      ck.b("Problem pushing dynamic var to socket", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */