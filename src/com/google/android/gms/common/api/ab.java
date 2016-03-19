package com.google.android.gms.common.api;

import android.content.Context;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.a;
import com.google.android.gms.common.internal.x;
import com.google.android.gms.d.cj;
import com.google.android.gms.d.ck;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.locks.Lock;

public class ab
  implements al
{
  private final zzg a;
  private final Lock b;
  private final Context c;
  private ConnectionResult d;
  private int e;
  private int f = 0;
  private boolean g = false;
  private int h;
  private final Bundle i = new Bundle();
  private final Set<j> j = new HashSet();
  private cj k;
  private int l;
  private boolean m;
  private boolean n;
  private a o;
  private boolean p;
  private boolean q;
  private final com.google.android.gms.common.internal.i r;
  private final Map<c<?>, Integer> s;
  private final k<? extends cj, ck> t;
  
  public ab(zzg paramzzg, com.google.android.gms.common.internal.i parami, Map<c<?>, Integer> paramMap, k<? extends cj, ck> paramk, Lock paramLock, Context paramContext)
  {
    a = paramzzg;
    r = parami;
    s = paramMap;
    t = paramk;
    b = paramLock;
    c = paramContext;
  }
  
  private void a(ConnectionResult paramConnectionResult)
  {
    b.lock();
    for (;;)
    {
      try
      {
        boolean bool = c(2);
        if (!bool) {
          return;
        }
        if (paramConnectionResult.b())
        {
          h();
          return;
        }
        if (c(paramConnectionResult))
        {
          j();
          h();
        }
        else
        {
          d(paramConnectionResult);
        }
      }
      finally
      {
        b.unlock();
      }
    }
  }
  
  private void a(ResolveAccountResponse paramResolveAccountResponse)
  {
    ConnectionResult localConnectionResult = paramResolveAccountResponse.b();
    b.lock();
    for (;;)
    {
      try
      {
        boolean bool = c(0);
        if (!bool) {
          return;
        }
        if (localConnectionResult.b())
        {
          o = paramResolveAccountResponse.a();
          n = true;
          p = paramResolveAccountResponse.c();
          q = paramResolveAccountResponse.d();
          f();
          return;
        }
        if (c(localConnectionResult))
        {
          j();
          if (h == 0) {
            h();
          }
        }
        else
        {
          d(localConnectionResult);
        }
      }
      finally
      {
        b.unlock();
      }
    }
  }
  
  private void a(boolean paramBoolean)
  {
    if (k != null)
    {
      if (k.b())
      {
        if (paramBoolean) {
          k.b_();
        }
        k.a();
      }
      o = null;
    }
  }
  
  private boolean a(int paramInt1, int paramInt2, ConnectionResult paramConnectionResult)
  {
    if ((paramInt2 == 1) && (!b(paramConnectionResult))) {}
    while ((d != null) && (paramInt1 >= e)) {
      return false;
    }
    return true;
  }
  
  private void b(ConnectionResult paramConnectionResult, c<?> paramc, int paramInt)
  {
    if (paramInt != 2)
    {
      int i1 = paramc.a().a();
      if (a(i1, paramInt, paramConnectionResult))
      {
        d = paramConnectionResult;
        e = i1;
      }
    }
    a.f.put(paramc.d(), paramConnectionResult);
  }
  
  private static boolean b(ConnectionResult paramConnectionResult)
  {
    if (paramConnectionResult.a()) {}
    while (e.a(paramConnectionResult.c()) != null) {
      return true;
    }
    return false;
  }
  
  private boolean c(int paramInt)
  {
    if (f != paramInt)
    {
      Log.wtf("GoogleApiClientConnecting", "GoogleApiClient connecting is in step " + d(f) + " but received callback for step " + d(paramInt));
      d(new ConnectionResult(8, null));
      return false;
    }
    return true;
  }
  
  private boolean c(ConnectionResult paramConnectionResult)
  {
    return (l == 2) || ((l == 1) && (!paramConnectionResult.a()));
  }
  
  private String d(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return "UNKNOWN";
    case 0: 
      return "STEP_GETTING_SERVICE_BINDINGS";
    case 1: 
      return "STEP_VALIDATING_ACCOUNT";
    case 2: 
      return "STEP_AUTHENTICATING";
    }
    return "STEP_GETTING_REMOTE_SERVICE";
  }
  
  private void d(ConnectionResult paramConnectionResult)
  {
    boolean bool = false;
    g = false;
    a.g.clear();
    d = paramConnectionResult;
    if (!paramConnectionResult.a()) {
      bool = true;
    }
    a(bool);
    a(3);
    if ((!a.e()) || (!e.b(c, paramConnectionResult.c())))
    {
      a.g();
      a.a.a(paramConnectionResult);
    }
    a.a.a();
  }
  
  private boolean d()
  {
    h -= 1;
    if (h > 0) {
      return false;
    }
    if (h < 0)
    {
      Log.wtf("GoogleApiClientConnecting", "GoogleApiClient received too many callbacks for the given step. Clients may be in an unexpected state; GoogleApiClient will now disconnect.");
      d(new ConnectionResult(8, null));
      return false;
    }
    if (d != null)
    {
      d(d);
      return false;
    }
    return true;
  }
  
  private void e()
  {
    if (m)
    {
      f();
      return;
    }
    h();
  }
  
  private void f()
  {
    if ((n) && (h == 0))
    {
      f = 1;
      h = a.e.size();
      Iterator localIterator = a.e.keySet().iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        if (a.f.containsKey(localj))
        {
          if (d()) {
            g();
          }
        }
        else {
          ((i)a.e.get(localj)).a(o);
        }
      }
    }
  }
  
  private void g()
  {
    f = 2;
    a.g = k();
    k.a(o, a.g, new ac(this));
  }
  
  private void h()
  {
    Set localSet = a.g;
    if (localSet.isEmpty()) {
      localSet = k();
    }
    for (;;)
    {
      f = 3;
      h = a.e.size();
      Iterator localIterator = a.e.keySet().iterator();
      while (localIterator.hasNext())
      {
        j localj = (j)localIterator.next();
        if (a.f.containsKey(localj))
        {
          if (d()) {
            i();
          }
        }
        else {
          ((i)a.e.get(localj)).a(o, localSet);
        }
      }
      return;
    }
  }
  
  private void i()
  {
    a.d();
    if (k != null)
    {
      if (p) {
        k.a(o, q);
      }
      a(false);
    }
    Object localObject = a.f.keySet().iterator();
    while (((Iterator)localObject).hasNext())
    {
      j localj = (j)((Iterator)localObject).next();
      ((i)a.e.get(localj)).a();
    }
    if (g)
    {
      g = false;
      a(-1);
      return;
    }
    if (i.isEmpty()) {}
    for (localObject = null;; localObject = i)
    {
      a.a.a((Bundle)localObject);
      return;
    }
  }
  
  private void j()
  {
    m = false;
    a.g.clear();
    Iterator localIterator = j.iterator();
    while (localIterator.hasNext())
    {
      j localj = (j)localIterator.next();
      if (!a.f.containsKey(localj)) {
        a.f.put(localj, new ConnectionResult(17, null));
      }
    }
  }
  
  private Set<Scope> k()
  {
    HashSet localHashSet = new HashSet(r.d());
    Map localMap = r.f();
    Iterator localIterator = localMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if (!a.f.containsKey(localc.d())) {
        localHashSet.addAll(geta);
      }
    }
    return localHashSet;
  }
  
  public <A extends i, R extends v, T extends y<R, A>> T a(T paramT)
  {
    a.b.add(paramT);
    return paramT;
  }
  
  public void a()
  {
    a.a.b();
    a.f.clear();
    g = false;
    m = false;
    d = null;
    f = 0;
    l = 2;
    n = false;
    p = false;
    int i1 = e.a(c);
    final Object localObject1;
    if (i1 != 0)
    {
      localObject1 = new ConnectionResult(i1, null);
      a.c.post(new Runnable()
      {
        public void run()
        {
          ab.a(ab.this).lock();
          try
          {
            ab.a(ab.this, localObject1);
            return;
          }
          finally
          {
            ab.a(ab.this).unlock();
          }
        }
      });
    }
    for (;;)
    {
      return;
      localObject1 = new HashMap();
      Object localObject2 = s.keySet().iterator();
      i1 = 0;
      Object localObject3;
      if (((Iterator)localObject2).hasNext())
      {
        localObject3 = (c)((Iterator)localObject2).next();
        i locali = (i)a.e.get(((c)localObject3).d());
        int i3 = ((Integer)s.get(localObject3)).intValue();
        if (((c)localObject3).a().a() == 1) {}
        for (int i2 = 1;; i2 = 0)
        {
          if (locali.c())
          {
            m = true;
            if (i3 < l) {
              l = i3;
            }
            if (i3 != 0) {
              j.add(((c)localObject3).d());
            }
          }
          ((Map)localObject1).put(locali, new ae(this, (c)localObject3, i3));
          i1 = i2 | i1;
          break;
        }
      }
      if (i1 != 0) {
        m = false;
      }
      if (m)
      {
        r.a(Integer.valueOf(a.getSessionId()));
        localObject2 = new af(this, null);
        k = ((cj)t.a(c, a.getLooper(), r, r.i(), (GoogleApiClient.ConnectionCallbacks)localObject2, (GoogleApiClient.OnConnectionFailedListener)localObject2));
        k.g();
      }
      h = a.e.size();
      localObject2 = a.e.values().iterator();
      while (((Iterator)localObject2).hasNext())
      {
        localObject3 = (i)((Iterator)localObject2).next();
        ((i)localObject3).a((p)((Map)localObject1).get(localObject3));
      }
    }
  }
  
  public void a(int paramInt)
  {
    if (paramInt == -1)
    {
      Iterator localIterator = a.b.iterator();
      while (localIterator.hasNext())
      {
        ak localak = (ak)localIterator.next();
        if (localak.f() != 1)
        {
          localak.b();
          localIterator.remove();
        }
      }
      a.a();
      if ((d == null) && (!a.b.isEmpty()))
      {
        g = true;
        return;
      }
      a.f.clear();
      d = null;
      a(true);
    }
    a.a(d);
  }
  
  public void a(Bundle paramBundle)
  {
    if (!c(3)) {}
    do
    {
      return;
      if (paramBundle != null) {
        i.putAll(paramBundle);
      }
    } while (!d());
    i();
  }
  
  public void a(ConnectionResult paramConnectionResult, c<?> paramc, int paramInt)
  {
    if (!c(3)) {}
    do
    {
      return;
      b(paramConnectionResult, paramc, paramInt);
    } while (!d());
    i();
  }
  
  public <A extends i, T extends y<? extends v, A>> T b(T paramT)
  {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
  
  public void b()
  {
    g = false;
  }
  
  public void b(int paramInt)
  {
    d(new ConnectionResult(8, null));
  }
  
  public String c()
  {
    return "CONNECTING";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */