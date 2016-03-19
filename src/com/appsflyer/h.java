package com.appsflyer;

import android.content.Context;
import android.content.SharedPreferences;
import java.util.HashMap;
import java.util.Map;

public class h
{
  private static h a = new h();
  private Map<String, Object> b = new HashMap();
  private boolean c;
  private boolean d;
  private String e;
  private boolean f;
  
  public static h a()
  {
    return a;
  }
  
  public String a(Context paramContext)
  {
    if (e != null) {
      return e;
    }
    return paramContext.getSharedPreferences("appsflyer-data", 0).getString("referrer", null);
  }
  
  public void a(String paramString1, String paramString2)
  {
    b.put(paramString1, paramString2);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    b.put(paramString, Boolean.toString(paramBoolean));
  }
  
  public String[] a(String paramString)
  {
    return (String[])b.get(paramString);
  }
  
  public String b(String paramString)
  {
    return (String)b.get(paramString);
  }
  
  protected void b()
  {
    c = true;
  }
  
  public boolean b(String paramString, boolean paramBoolean)
  {
    paramString = b(paramString);
    if (paramString == null) {
      return paramBoolean;
    }
    return Boolean.valueOf(paramString).booleanValue();
  }
  
  protected void c(String paramString)
  {
    e = paramString;
  }
  
  protected boolean c()
  {
    return d;
  }
  
  protected void d()
  {
    d = true;
  }
  
  public boolean e()
  {
    return f;
  }
}

/* Location:
 * Qualified Name:     com.appsflyer.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */