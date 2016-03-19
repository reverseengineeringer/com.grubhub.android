package com.taplytics;

import android.annotation.SuppressLint;
import android.os.Build.VERSION;
import android.support.v4.app.ac;
import android.support.v4.app.ad;
import android.util.Pair;
import android.view.View.OnLayoutChangeListener;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.HashSet;

public class fq
{
  private static fq c;
  HashSet<String> a = new HashSet();
  HashMap<Integer, Pair<String, String>> b = new HashMap();
  private final int d = gq.h().t() + 100;
  private Method e = null;
  private Field f = null;
  private Field g = null;
  private View.OnLayoutChangeListener h;
  private View.OnLayoutChangeListener i;
  
  @SuppressLint({"NewApi"})
  public fq()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      h = new fr(this);
      i = new fs(this);
    }
  }
  
  public static fq a()
  {
    if (c != null) {
      return c;
    }
    c = new fq();
    return c;
  }
  
  public Field a(Class paramClass)
  {
    if (paramClass == ac.class) {
      return f;
    }
    return g;
  }
  
  public void a(Field paramField, Class paramClass)
  {
    if (paramClass == ac.class) {
      f = paramField;
    }
    while (paramClass != ad.class) {
      return;
    }
    g = paramField;
  }
  
  public void a(Method paramMethod)
  {
    e = paramMethod;
  }
  
  public int b()
  {
    return d;
  }
  
  public HashMap<Integer, Pair<String, String>> c()
  {
    return b;
  }
  
  public HashSet<String> d()
  {
    return a;
  }
  
  public View.OnLayoutChangeListener e()
  {
    return h;
  }
  
  public View.OnLayoutChangeListener f()
  {
    return i;
  }
  
  public Method g()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.taplytics.fq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */