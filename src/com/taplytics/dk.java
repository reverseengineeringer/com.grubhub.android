package com.taplytics;

import java.lang.reflect.Method;
import java.lang.reflect.Proxy;

class dk
  implements Runnable
{
  dk(dg paramdg) {}
  
  public void run()
  {
    try
    {
      Class localClass1 = Class.forName("com.localytics.android.Localytics");
      Class localClass2 = Class.forName("com.localytics.android.AnalyticsListener");
      Method localMethod = localClass1.getMethod("addAnalyticsListener", new Class[] { localClass2 });
      ClassLoader localClassLoader = localClass2.getClassLoader();
      dl localdl = new dl(this);
      localMethod.invoke(localClass1, new Object[] { Proxy.newProxyInstance(localClassLoader, new Class[] { localClass2 }, localdl) });
      return;
    }
    catch (Exception localException)
    {
      while (!ck.c()) {}
      ck.a("Problem setting up localyics tracking: " + localException.getMessage());
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.dk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */