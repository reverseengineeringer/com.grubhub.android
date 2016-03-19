package com.paypal.android.sdk;

import android.util.Log;
import java.util.LinkedHashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
import org.json.JSONTokener;

public abstract class dz
{
  private static final String a = dz.class.getSimpleName();
  private static long j = 1L;
  private String b;
  private String c;
  private Map d;
  private final ea e;
  private final ef f;
  private dx g;
  private String h;
  private al i;
  private long k;
  private Integer l;
  private String m;
  
  public dz(dx paramdx, ea paramea, ef paramef)
  {
    this(paramdx, paramea, paramef, null);
  }
  
  public dz(dx paramdx, ea paramea, ef paramef, String paramString)
  {
    long l1 = j;
    j = 1L + l1;
    k = l1;
    g = paramdx;
    h = paramString;
    e = paramea;
    f = paramef;
    d = new LinkedHashMap();
  }
  
  public static void l() {}
  
  public String a(dx paramdx)
  {
    String str = e.a(paramdx);
    if (str != null)
    {
      paramdx = str;
      if (h != null) {
        paramdx = str + h;
      }
      return paramdx;
    }
    throw new RuntimeException("API " + paramdx.toString() + " has no record for server " + e.c());
  }
  
  public final void a(al paramal)
  {
    if (i != null)
    {
      IllegalStateException localIllegalStateException = new IllegalStateException("Multiple exceptions reported");
      Log.e(a, "first error=" + i);
      Log.e(a, "second error=" + paramal);
      Log.e(a, "", localIllegalStateException);
      throw localIllegalStateException;
    }
    i = paramal;
  }
  
  public final void a(Integer paramInteger)
  {
    l = paramInteger;
  }
  
  public final void a(String paramString)
  {
    b = paramString;
  }
  
  protected final void a(String paramString1, String paramString2)
  {
    d.put(paramString1, paramString2);
  }
  
  public final void a(String paramString1, String paramString2, String paramString3)
  {
    a(new an(paramString1, paramString2, paramString3));
  }
  
  public boolean a()
  {
    return false;
  }
  
  public abstract String b();
  
  public final void b(String paramString)
  {
    c = paramString;
  }
  
  public abstract void c();
  
  public final void c(String paramString)
  {
    m = paramString;
  }
  
  public abstract void d();
  
  public abstract String e();
  
  public final ef f()
  {
    return f;
  }
  
  public final String g()
  {
    return b;
  }
  
  public final String h()
  {
    return c;
  }
  
  public final dx i()
  {
    return g;
  }
  
  public final Map j()
  {
    return d;
  }
  
  public final String k()
  {
    return m;
  }
  
  public void m() {}
  
  protected final JSONObject n()
  {
    String str = c;
    Object localObject = new JSONTokener(str).nextValue();
    if (!(localObject instanceof JSONObject)) {
      throw new JSONException("could not parse:" + str + "\nnextValue:" + localObject);
    }
    return (JSONObject)localObject;
  }
  
  public final String o()
  {
    return getClass().getSimpleName() + " SN:" + k;
  }
  
  public final long p()
  {
    return k;
  }
  
  public final al q()
  {
    return i;
  }
  
  public final boolean r()
  {
    return i == null;
  }
  
  public final Integer s()
  {
    return l;
  }
  
  public final ea t()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.dz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */