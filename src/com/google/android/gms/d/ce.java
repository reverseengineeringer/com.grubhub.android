package com.google.android.gms.d;

import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.internal.aq;
import java.util.HashMap;
import java.util.Map;
import java.util.UUID;

public final class ce
  extends bq<ce>
{
  private String a;
  private int b;
  private int c;
  private String d;
  private String e;
  private boolean f;
  private boolean g;
  private boolean h;
  
  public ce()
  {
    this(false);
  }
  
  public ce(boolean paramBoolean)
  {
    this(paramBoolean, a());
  }
  
  public ce(boolean paramBoolean, int paramInt)
  {
    aq.a(paramInt);
    b = paramInt;
    g = paramBoolean;
  }
  
  static int a()
  {
    UUID localUUID = UUID.randomUUID();
    int i = (int)(localUUID.getLeastSignificantBits() & 0x7FFFFFFF);
    if (i != 0) {}
    int j;
    do
    {
      return i;
      j = (int)(localUUID.getMostSignificantBits() & 0x7FFFFFFF);
      i = j;
    } while (j != 0);
    Log.e("GAv4", "UUID.randomUUID() returned 0.");
    return Integer.MAX_VALUE;
  }
  
  private void e()
  {
    if (h) {
      throw new IllegalStateException("ScreenViewInfo is immutable");
    }
  }
  
  public void a(int paramInt)
  {
    e();
    b = paramInt;
  }
  
  public void a(ce paramce)
  {
    if (!TextUtils.isEmpty(a)) {
      paramce.a(a);
    }
    if (b != 0) {
      paramce.a(b);
    }
    if (c != 0) {
      paramce.b(c);
    }
    if (!TextUtils.isEmpty(d)) {
      paramce.b(d);
    }
    if (!TextUtils.isEmpty(e)) {
      paramce.c(e);
    }
    if (f) {
      paramce.b(f);
    }
    if (g) {
      paramce.a(g);
    }
  }
  
  public void a(String paramString)
  {
    e();
    a = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    e();
    g = paramBoolean;
  }
  
  public String b()
  {
    return a;
  }
  
  public void b(int paramInt)
  {
    e();
    c = paramInt;
  }
  
  public void b(String paramString)
  {
    e();
    d = paramString;
  }
  
  public void b(boolean paramBoolean)
  {
    e();
    f = paramBoolean;
  }
  
  public int c()
  {
    return b;
  }
  
  public void c(String paramString)
  {
    e();
    if (TextUtils.isEmpty(paramString))
    {
      e = null;
      return;
    }
    e = paramString;
  }
  
  public String d()
  {
    return e;
  }
  
  public String toString()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("screenName", a);
    localHashMap.put("interstitial", Boolean.valueOf(f));
    localHashMap.put("automatic", Boolean.valueOf(g));
    localHashMap.put("screenId", Integer.valueOf(b));
    localHashMap.put("referrerScreenId", Integer.valueOf(c));
    localHashMap.put("referrerScreenName", d);
    localHashMap.put("referrerUri", e);
    return a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */