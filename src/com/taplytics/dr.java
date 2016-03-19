package com.taplytics;

import java.lang.reflect.Field;
import java.util.Collection;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.LinkedBlockingQueue;

public class dr
  extends LinkedBlockingQueue
{
  String a = null;
  
  public boolean add(Object paramObject)
  {
    if (!fy.e().j()) {
      return super.add(paramObject);
    }
    for (;;)
    {
      try
      {
        Object localObject1;
        if (a == null)
        {
          localObject1 = paramObject.getClass().getDeclaredFields();
          int j = localObject1.length;
          i = 0;
          if (i < j)
          {
            Object localObject2 = localObject1[i];
            if (!((Field)localObject2).getType().equals(Map.class)) {
              continue;
            }
            a = ((Field)localObject2).getName();
          }
        }
        if (a != null)
        {
          localObject1 = paramObject.getClass().getDeclaredField(a);
          ((Field)localObject1).setAccessible(true);
          localObject1 = new HashMap((Map)((Field)localObject1).get(paramObject));
          dg.b().a((Map)localObject1);
        }
      }
      catch (Exception localException)
      {
        int i;
        ck.b("GA Break adding", localException);
        continue;
      }
      return super.add(paramObject);
      i += 1;
    }
  }
  
  public boolean addAll(Collection paramCollection)
  {
    return super.addAll(paramCollection);
  }
  
  public Object poll()
  {
    return super.poll();
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */