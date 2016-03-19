package com.google.android.gms.d;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public final class cf
  extends bq<cf>
{
  public String a;
  public String b;
  public String c;
  
  public String a()
  {
    return a;
  }
  
  public void a(cf paramcf)
  {
    if (!TextUtils.isEmpty(a)) {
      paramcf.a(a);
    }
    if (!TextUtils.isEmpty(b)) {
      paramcf.b(b);
    }
    if (!TextUtils.isEmpty(c)) {
      paramcf.c(c);
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
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("network", a);
    localHashMap.put("action", b);
    localHashMap.put("target", c);
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */