package com.google.android.gms.d;

import android.text.TextUtils;
import java.util.HashMap;
import java.util.Map;

public final class cg
  extends bq<cg>
{
  public String a;
  public long b;
  public String c;
  public String d;
  
  public String a()
  {
    return a;
  }
  
  public void a(long paramLong)
  {
    b = paramLong;
  }
  
  public void a(cg paramcg)
  {
    if (!TextUtils.isEmpty(a)) {
      paramcg.a(a);
    }
    if (b != 0L) {
      paramcg.a(b);
    }
    if (!TextUtils.isEmpty(c)) {
      paramcg.b(c);
    }
    if (!TextUtils.isEmpty(d)) {
      paramcg.c(d);
    }
  }
  
  public void a(String paramString)
  {
    a = paramString;
  }
  
  public long b()
  {
    return b;
  }
  
  public void b(String paramString)
  {
    c = paramString;
  }
  
  public String c()
  {
    return c;
  }
  
  public void c(String paramString)
  {
    d = paramString;
  }
  
  public String d()
  {
    return d;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("variableName", a);
    localHashMap.put("timeInMillis", Long.valueOf(b));
    localHashMap.put("category", c);
    localHashMap.put("label", d);
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.cg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */