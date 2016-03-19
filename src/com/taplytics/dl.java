package com.taplytics;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.util.Map;
import org.json.JSONObject;

class dl
  implements InvocationHandler
{
  dl(dk paramdk) {}
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    throws Throwable
  {
    int i = 0;
    paramObject = paramMethod.getName();
    switch (((String)paramObject).hashCode())
    {
    default: 
      label40:
      i = -1;
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return null;
        if (!((String)paramObject).equals("localyticsDidTagEvent")) {
          break label40;
        }
        continue;
        if (!((String)paramObject).equals("hashCode")) {
          break label40;
        }
        i = 1;
      }
    }
    for (;;)
    {
      try
      {
        paramMethod = (String)paramArrayOfObject[0];
        paramObject = (Map)paramArrayOfObject[1];
        long l = ((Long)paramArrayOfObject[2]).longValue();
        if (paramObject == null) {
          break label193;
        }
        paramObject = new JSONObject((Map)paramObject);
        fy.e().n().a("localytics", paramMethod, Long.valueOf(l), (JSONObject)paramObject);
      }
      catch (Exception paramObject)
      {
        ck.c("Failed to log localytics event: " + ((Exception)paramObject).getMessage());
      }
      break;
      return Integer.valueOf(hashCode());
      label193:
      paramObject = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */