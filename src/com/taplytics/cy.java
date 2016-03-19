package com.taplytics;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.OnSharedPreferenceChangeListener;
import android.os.Handler;
import java.lang.reflect.Field;
import java.lang.reflect.Method;

public class cy
{
  private static cy a;
  private Method b;
  private Method c;
  private Class d;
  private Handler e;
  private SharedPreferences.OnSharedPreferenceChangeListener f;
  private long g = 0L;
  
  public static cy a()
  {
    if (a == null) {
      a = new cy();
    }
    return a;
  }
  
  public void b()
  {
    if (f != null) {
      fy.e().p().getSharedPreferences("com.amplitude.api." + fy.e().p().getPackageName(), 0).unregisterOnSharedPreferenceChangeListener(f);
    }
  }
  
  public void c()
  {
    Object localObject1 = fy.e().p();
    localObject1 = ((Context)localObject1).getSharedPreferences("com.amplitude.api." + ((Context)localObject1).getPackageName(), 0);
    f = new cz(this);
    ((SharedPreferences)localObject1).registerOnSharedPreferenceChangeListener(f);
    try
    {
      d = Class.forName("com.amplitude.api.DatabaseHelper");
      b = d.getDeclaredMethod("getDatabaseHelper", new Class[] { Context.class });
      Object localObject3 = Class.forName("com.amplitude.api.AmplitudeClient");
      Object localObject2 = ((Class)localObject3).getMethod("getInstance", new Class[0]).invoke(localObject3, new Object[0]);
      localObject3 = ((Class)localObject3).getDeclaredField("logThread");
      ((Field)localObject3).setAccessible(true);
      localObject2 = ((Field)localObject3).get(localObject2);
      ((Field)localObject3).setAccessible(false);
      localObject3 = localObject2.getClass().getDeclaredMethod("waitForInitialization", new Class[0]);
      ((Method)localObject3).setAccessible(true);
      ((Method)localObject3).invoke(localObject2, new Object[0]);
      ((Method)localObject3).setAccessible(false);
      localObject3 = localObject2.getClass().getDeclaredField("handler");
      ((Field)localObject3).setAccessible(true);
      e = ((Handler)((Field)localObject3).get(localObject2));
      ((Field)localObject3).setAccessible(false);
      return;
    }
    catch (Exception localException)
    {
      ((SharedPreferences)localObject1).unregisterOnSharedPreferenceChangeListener(f);
    }
  }
}

/* Location:
 * Qualified Name:     com.taplytics.cy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */