package com.google.android.gms.analytics.internal;

import android.app.Activity;
import java.util.Map;

public class o
  implements ah
{
  public String a;
  public double b;
  public int c;
  public int d;
  public int e;
  public int f;
  public Map<String, String> g;
  
  public String a(Activity paramActivity)
  {
    return a(paramActivity.getClass().getCanonicalName());
  }
  
  public String a(String paramString)
  {
    String str = (String)g.get(paramString);
    if (str != null) {
      return str;
    }
    return paramString;
  }
  
  public boolean a()
  {
    return a != null;
  }
  
  public String b()
  {
    return a;
  }
  
  public boolean c()
  {
    return b >= 0.0D;
  }
  
  public double d()
  {
    return b;
  }
  
  public boolean e()
  {
    return c >= 0;
  }
  
  public int f()
  {
    return c;
  }
  
  public boolean g()
  {
    return d != -1;
  }
  
  public boolean h()
  {
    return d == 1;
  }
  
  public boolean i()
  {
    return e != -1;
  }
  
  public boolean j()
  {
    return e == 1;
  }
  
  public boolean k()
  {
    return f == 1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */