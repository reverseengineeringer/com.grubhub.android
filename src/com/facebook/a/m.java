package com.facebook.a;

import android.os.Bundle;
import com.facebook.ad;
import com.facebook.internal.ab;
import java.io.Serializable;
import java.util.Locale;

class m
  implements Serializable
{
  private static final String a = a.class.getCanonicalName();
  private static final long[] b = { 300000L, 900000L, 1800000L, 3600000L, 21600000L, 43200000L, 86400000L, 172800000L, 259200000L, 604800000L, 1209600000L, 1814400000L, 2419200000L, 5184000000L, 7776000000L, 10368000000L, 12960000000L, 15552000000L, 31536000000L };
  private static final long serialVersionUID = 1L;
  private boolean c;
  private boolean d;
  private long e;
  private long f;
  private long g;
  private long h;
  private int i;
  private String j;
  
  m()
  {
    a();
  }
  
  private m(long paramLong1, long paramLong2, long paramLong3, int paramInt, String paramString)
  {
    a();
    f = paramLong1;
    g = paramLong2;
    h = paramLong3;
    i = paramInt;
    j = paramString;
  }
  
  private static int a(long paramLong)
  {
    int k = 0;
    while ((k < b.length) && (b[k] < paramLong)) {
      k += 1;
    }
    return k;
  }
  
  private void a()
  {
    d = false;
    f = -1L;
    g = -1L;
    i = 0;
    h = 0L;
  }
  
  private void a(a parama, long paramLong)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("fb_mobile_app_interruptions", i);
    localBundle.putString("fb_mobile_time_between_sessions", String.format(Locale.ROOT, "session_quanta_%d", new Object[] { Integer.valueOf(a(paramLong)) }));
    localBundle.putString("fb_mobile_launch_source", j);
    parama.a("fb_mobile_deactivate_app", h / 1000L, localBundle);
    a();
  }
  
  private boolean b()
  {
    return g != -1L;
  }
  
  private boolean c()
  {
    if (!c) {}
    for (boolean bool = true;; bool = false)
    {
      c = true;
      return bool;
    }
  }
  
  private Object writeReplace()
  {
    return new n(f, g, h, i, j);
  }
  
  void a(a parama, long paramLong, String paramString)
  {
    long l2 = 0L;
    if ((c()) || (paramLong - e > 300000L))
    {
      Bundle localBundle = new Bundle();
      localBundle.putString("fb_mobile_launch_source", paramString);
      parama.a("fb_mobile_activate_app", localBundle);
      e = paramLong;
    }
    if (d)
    {
      ab.a(ad.APP_EVENTS, a, "Resume for active app");
      return;
    }
    long l1;
    if (b())
    {
      l1 = paramLong - g;
      if (l1 >= 0L) {
        break label178;
      }
      ab.a(ad.APP_EVENTS, a, "Clock skew detected");
      l1 = l2;
    }
    label178:
    for (;;)
    {
      if (l1 > 60000L) {
        a(parama, l1);
      }
      for (;;)
      {
        if (i == 0) {
          j = paramString;
        }
        f = paramLong;
        d = true;
        return;
        l1 = 0L;
        break;
        if (l1 > 1000L) {
          i += 1;
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.a.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */