package com.google.android.gms.d;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public final class by
  extends bq<by>
{
  private String a;
  private String b;
  private String c;
  private String d;
  
  public String a()
  {
    return a;
  }
  
  public void a(by paramby)
  {
    if (!TextUtils.isEmpty(a)) {
      paramby.a(a);
    }
    if (!TextUtils.isEmpty(b)) {
      paramby.b(b);
    }
    if (!TextUtils.isEmpty(c)) {
      paramby.c(c);
    }
    if (!TextUtils.isEmpty(d)) {
      paramby.d(d);
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public String b()
  {
    return b;
  }
  
  public void b(String paramString)
  {
    b = paramString;
  }
  
  public String c()
  {
    return c;
  }
  
  public void c(String paramString)
  {
    c = paramString;
  }
  
  public String d()
  {
    return d;
  }
  
  public void d(String paramString)
  {
    d = paramString;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("appName", a);
    localHashMap.put("appVersion", b);
    localHashMap.put("appId", c);
    localHashMap.put("appInstallerId", d);
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.by
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */