package com.taplytics;

import android.view.View;
import java.lang.reflect.Method;
import java.util.HashMap;

final class ah
  implements Runnable
{
  ah(View paramView, String paramString1, String paramString2) {}
  
  public void run()
  {
    try
    {
      HashMap localHashMap1 = (HashMap)a.getTag(gq.h().t());
      HashMap localHashMap2 = new HashMap();
      localHashMap2.put(b, Integer.valueOf(jk.a(((Float)a.getClass().getMethod(b.replaceAll("set", "get"), new Class[0]).invoke(a, new Object[0])).floatValue())));
      localHashMap2.put("parameterType", c);
      localHashMap1.put(b, localHashMap2);
      a.setTag(gq.h().t(), localHashMap1);
      return;
    }
    catch (Exception localException) {}
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */