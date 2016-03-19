package com.taplytics;

import java.lang.reflect.Field;
import org.json.JSONObject;

class dq
  implements Runnable
{
  dq(dp paramdp, Object paramObject, int paramInt, String paramString) {}
  
  public void run()
  {
    try
    {
      int i = a.getClass().getDeclaredFields()[0].getInt(a);
      if ((i != b) && (c.split("\\.").length < 2)) {
        fy.e().n().a("flurry", c, Integer.valueOf(i), new JSONObject());
      }
      return;
    }
    catch (Throwable localThrowable) {}
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */