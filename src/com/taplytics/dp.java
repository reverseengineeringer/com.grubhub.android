package com.taplytics;

import android.os.Handler;
import android.os.Looper;
import java.lang.reflect.Field;
import java.util.HashMap;
import org.json.JSONObject;

public class dp
  extends HashMap
{
  public Object get(Object paramObject)
  {
    try
    {
      String str = paramObject.toString();
      Object localObject = super.get(paramObject);
      if (localObject != null)
      {
        int i = localObject.getClass().getDeclaredFields()[0].getInt(localObject);
        new Handler(Looper.getMainLooper()).postDelayed(new dq(this, localObject, i, str), 4L);
      }
    }
    catch (Throwable localThrowable)
    {
      for (;;) {}
    }
    return super.get(paramObject);
  }
  
  public Object put(Object paramObject1, Object paramObject2)
  {
    try
    {
      int i = ((Integer)paramObject2.getClass().getFields()[0].get(paramObject2)).intValue();
      if (i > 0)
      {
        if (paramObject1.toString().split("\\.").length < 2) {
          fy.e().n().a("flurry", paramObject1.toString(), Integer.valueOf(i), new JSONObject());
        }
        Object localObject = super.put(paramObject1, paramObject2);
        return localObject;
      }
    }
    catch (Throwable localThrowable1) {}
    try
    {
      if (paramObject1.toString().split("\\.").length < 2) {
        fy.e().n().a("flurry", paramObject1.toString(), Integer.valueOf(0), new JSONObject());
      }
      return super.put(paramObject1, paramObject2);
    }
    catch (Throwable localThrowable2)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */