package com.taplytics;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;

class fu
  implements InvocationHandler
{
  fu(ft paramft) {}
  
  public Object invoke(Object paramObject, Method paramMethod, Object[] paramArrayOfObject)
    throws Throwable
  {
    int i = 0;
    paramObject = paramMethod.getName();
    switch (((String)paramObject).hashCode())
    {
    default: 
      i = -1;
      label43:
      switch (i)
      {
      }
      break;
    }
    for (;;)
    {
      return null;
      if (!((String)paramObject).equals("onConnectionFailed")) {
        break;
      }
      break label43;
      if (!((String)paramObject).equals("hashCode")) {
        break;
      }
      i = 1;
      break label43;
      paramObject = paramArrayOfObject[0];
      try
      {
        i = ((Integer)paramObject.getClass().getMethod("getErrorCode", new Class[0]).invoke(paramObject, new Object[0])).intValue();
        ck.c("Cannot connect to Google Play Services: " + i + ". Could be missing or out of date");
        if (ft.a(a) != null) {
          ft.a(a).b();
        }
      }
      catch (Exception paramObject)
      {
        ck.c("Failed to log localytics event: " + ((Exception)paramObject).getMessage());
      }
    }
    return Integer.valueOf(hashCode());
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */