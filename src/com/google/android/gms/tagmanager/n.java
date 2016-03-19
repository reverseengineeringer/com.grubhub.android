package com.google.android.gms.tagmanager;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.os.Build.VERSION;
import android.os.Looper;
import com.google.android.gms.common.api.s;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public class n
{
  private static n g;
  private final o a;
  private final Context b;
  private final h c;
  private final cw d;
  private final ConcurrentMap<ed, Boolean> e;
  private final ep f;
  
  n(Context paramContext, o paramo, h paramh, cw paramcw)
  {
    if (paramContext == null) {
      throw new NullPointerException("context cannot be null");
    }
    b = paramContext.getApplicationContext();
    d = paramcw;
    a = paramo;
    e = new ConcurrentHashMap();
    c = paramh;
    c.a(new j()
    {
      public void a(Map<String, Object> paramAnonymousMap)
      {
        paramAnonymousMap = paramAnonymousMap.get("event");
        if (paramAnonymousMap != null) {
          n.a(n.this, paramAnonymousMap.toString());
        }
      }
    });
    c.a(new de(b));
    f = new ep();
    c();
  }
  
  public static n a(Context paramContext)
  {
    try
    {
      if (g != null) {
        break label68;
      }
      if (paramContext == null)
      {
        ba.a("TagManager.getInstance requires non-null context.");
        throw new NullPointerException();
      }
    }
    finally {}
    g = new n(paramContext, new o()new hnew eu
    {
      public eg a(Context paramAnonymousContext, n paramAnonymousn, Looper paramAnonymousLooper, String paramAnonymousString, int paramAnonymousInt, ep paramAnonymousep)
      {
        return new eg(paramAnonymousContext, paramAnonymousn, paramAnonymousLooper, paramAnonymousString, paramAnonymousInt, paramAnonymousep);
      }
    }, new h(new eu(paramContext)), cx.c());
    label68:
    paramContext = g;
    return paramContext;
  }
  
  private void a(String paramString)
  {
    Iterator localIterator = e.keySet().iterator();
    while (localIterator.hasNext()) {
      ((ed)localIterator.next()).a(paramString);
    }
  }
  
  private void c()
  {
    if (Build.VERSION.SDK_INT >= 14) {
      b.registerComponentCallbacks(new ComponentCallbacks2()
      {
        public void onConfigurationChanged(Configuration paramAnonymousConfiguration) {}
        
        public void onLowMemory() {}
        
        public void onTrimMemory(int paramAnonymousInt)
        {
          if (paramAnonymousInt == 20) {
            b();
          }
        }
      });
    }
  }
  
  public s<f> a(String paramString, int paramInt)
  {
    paramString = a.a(b, this, null, paramString, paramInt, f);
    paramString.e();
    return paramString;
  }
  
  public h a()
  {
    return c;
  }
  
  void a(ed paramed)
  {
    e.put(paramed, Boolean.valueOf(true));
  }
  
  public void a(boolean paramBoolean)
  {
    if (paramBoolean) {}
    for (int i = 2;; i = 5)
    {
      ba.a(i);
      return;
    }
  }
  
  public void b()
  {
    d.a();
  }
  
  boolean b(ed paramed)
  {
    return e.remove(paramed) != null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */