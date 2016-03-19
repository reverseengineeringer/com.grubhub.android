package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public abstract class n<T extends IInterface>
  implements com.google.android.gms.common.api.i, y
{
  public static final String[] c = { "service_esmobile", "service_googleme" };
  final Handler a;
  protected AtomicInteger b = new AtomicInteger(0);
  private final Context d;
  private final i e;
  private final Looper f;
  private final z g;
  private final Object h = new Object();
  private ai i;
  private com.google.android.gms.common.api.p j;
  private T k;
  private final ArrayList<n<T>.q<?>> l = new ArrayList();
  private n<T>.s m;
  private int n = 1;
  private final Set<Scope> o;
  private final Account p;
  private GoogleApiClient.ConnectionCallbacks q;
  private GoogleApiClient.OnConnectionFailedListener r;
  private final int s;
  
  @Deprecated
  protected n(Context paramContext, Looper paramLooper, int paramInt, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    d = ((Context)aq.a(paramContext));
    f = ((Looper)aq.a(paramLooper, "Looper must not be null"));
    g = z.a(paramContext);
    a = new p(this, paramLooper);
    s = paramInt;
    p = null;
    o = Collections.emptySet();
    e = new GoogleApiClient.Builder(paramContext).zzmx();
    q = ((GoogleApiClient.ConnectionCallbacks)aq.a(paramConnectionCallbacks));
    r = ((GoogleApiClient.OnConnectionFailedListener)aq.a(paramOnConnectionFailedListener));
  }
  
  protected n(Context paramContext, Looper paramLooper, int paramInt, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, i parami)
  {
    this(paramContext, paramLooper, z.a(paramContext), paramInt, parami, paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
  
  protected n(Context paramContext, Looper paramLooper, z paramz, int paramInt, i parami)
  {
    d = ((Context)aq.a(paramContext, "Context must not be null"));
    f = ((Looper)aq.a(paramLooper, "Looper must not be null"));
    g = ((z)aq.a(paramz, "Supervisor must not be null"));
    a = new p(this, paramLooper);
    s = paramInt;
    e = ((i)aq.a(parami));
    p = parami.b();
    o = b(parami.e());
  }
  
  protected n(Context paramContext, Looper paramLooper, z paramz, int paramInt, i parami, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    this(paramContext, paramLooper, paramz, paramInt, parami);
    q = ((GoogleApiClient.ConnectionCallbacks)aq.a(paramConnectionCallbacks));
    r = ((GoogleApiClient.OnConnectionFailedListener)aq.a(paramOnConnectionFailedListener));
  }
  
  private void a(int paramInt, T paramT)
  {
    boolean bool = true;
    int i1;
    int i2;
    if (paramInt == 3)
    {
      i1 = 1;
      if (paramT == null) {
        break label115;
      }
      i2 = 1;
      label17:
      if (i1 != i2) {
        break label121;
      }
    }
    for (;;)
    {
      aq.b(bool);
      for (;;)
      {
        synchronized (h)
        {
          n = paramInt;
          k = paramT;
          switch (paramInt)
          {
          case 2: 
            return;
            p();
          }
        }
        c_();
        continue;
        q();
      }
      i1 = 0;
      break;
      label115:
      i2 = 0;
      break label17;
      label121:
      bool = false;
    }
  }
  
  private boolean a(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (h)
    {
      if (n != paramInt1) {
        return false;
      }
      a(paramInt2, paramT);
      return true;
    }
  }
  
  private Set<Scope> b(Set<Scope> paramSet)
  {
    Set localSet = a(paramSet);
    if (localSet == null) {
      return localSet;
    }
    Iterator localIterator = localSet.iterator();
    while (localIterator.hasNext()) {
      if (!paramSet.contains((Scope)localIterator.next())) {
        throw new IllegalStateException("Expanding scopes is not permitted, use implied scopes instead");
      }
    }
    return localSet;
  }
  
  private void b(com.google.android.gms.common.api.p paramp)
  {
    j = ((com.google.android.gms.common.api.p)aq.a(paramp, "Connection progress callbacks cannot be null."));
  }
  
  private void p()
  {
    if (m != null)
    {
      Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + d());
      g.b(d(), m, f());
      b.incrementAndGet();
    }
    m = new s(this, b.get());
    if (!g.a(d(), m, f()))
    {
      Log.e("GmsClient", "unable to connect to service: " + d());
      a.sendMessage(a.obtainMessage(3, b.get(), 9));
    }
  }
  
  private void q()
  {
    if (m != null)
    {
      g.b(d(), m, f());
      m = null;
    }
  }
  
  protected abstract T a(IBinder paramIBinder);
  
  protected Set<Scope> a(Set<Scope> paramSet)
  {
    return paramSet;
  }
  
  public void a()
  {
    b.incrementAndGet();
    synchronized (l)
    {
      int i2 = l.size();
      int i1 = 0;
      while (i1 < i2)
      {
        ((q)l.get(i1)).e();
        i1 += 1;
      }
      l.clear();
      a(1, null);
      return;
    }
  }
  
  protected void a(int paramInt) {}
  
  protected void a(int paramInt1, Bundle paramBundle, int paramInt2)
  {
    a.sendMessage(a.obtainMessage(5, paramInt2, -1, new w(this, paramInt1, paramBundle)));
  }
  
  protected void a(int paramInt1, IBinder paramIBinder, Bundle paramBundle, int paramInt2)
  {
    a.sendMessage(a.obtainMessage(1, paramInt2, -1, new u(this, paramInt1, paramIBinder, paramBundle)));
  }
  
  protected void a(ConnectionResult paramConnectionResult) {}
  
  public void a(com.google.android.gms.common.api.p paramp)
  {
    b(paramp);
    a(2, null);
  }
  
  public void a(a parama)
  {
    Bundle localBundle = n();
    parama = new ValidateAccountRequest(parama, (Scope[])o.toArray(new Scope[o.size()]), d.getPackageName(), localBundle);
    try
    {
      i.a(new r(this, b.get()), parama);
      return;
    }
    catch (DeadObjectException parama)
    {
      Log.w("GmsClient", "service died");
      b(1);
      return;
    }
    catch (RemoteException parama)
    {
      Log.w("GmsClient", "Remote exception occurred", parama);
    }
  }
  
  public void a(a parama, Set<Scope> paramSet)
  {
    try
    {
      Object localObject = k();
      localObject = new GetServiceRequest(s).a(d.getPackageName()).a((Bundle)localObject);
      if (paramSet != null) {
        ((GetServiceRequest)localObject).a(paramSet);
      }
      if (c()) {
        ((GetServiceRequest)localObject).a(j()).a(parama);
      }
      for (;;)
      {
        i.a(new r(this, b.get()), (GetServiceRequest)localObject);
        return;
        if (o()) {
          ((GetServiceRequest)localObject).a(p);
        }
      }
      return;
    }
    catch (DeadObjectException parama)
    {
      Log.w("GmsClient", "service died");
      b(1);
      return;
    }
    catch (RemoteException parama)
    {
      Log.w("GmsClient", "Remote exception occurred", parama);
    }
  }
  
  public void a(String paramString, FileDescriptor arg2, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    for (;;)
    {
      synchronized (h)
      {
        int i1 = n;
        paramArrayOfString = k;
        paramPrintWriter.append(paramString).append("mConnectState=");
        switch (i1)
        {
        default: 
          paramPrintWriter.print("UNKNOWN");
          paramPrintWriter.append(" mService=");
          if (paramArrayOfString != null) {
            break label137;
          }
          paramPrintWriter.println("null");
          return;
        }
      }
      paramPrintWriter.print("CONNECTING");
      continue;
      paramPrintWriter.print("CONNECTED");
      continue;
      paramPrintWriter.print("DISCONNECTING");
      continue;
      paramPrintWriter.print("DISCONNECTED");
    }
    label137:
    paramPrintWriter.append(e()).append("@").println(Integer.toHexString(System.identityHashCode(paramArrayOfString.asBinder())));
  }
  
  public Bundle a_()
  {
    return null;
  }
  
  public void b(int paramInt)
  {
    a.sendMessage(a.obtainMessage(4, b.get(), paramInt));
  }
  
  public boolean b()
  {
    for (;;)
    {
      synchronized (h)
      {
        if (n == 3)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  protected void c(int paramInt)
  {
    a.sendMessage(a.obtainMessage(6, paramInt, -1, new v(this)));
  }
  
  public boolean c()
  {
    return false;
  }
  
  protected void c_() {}
  
  protected abstract String d();
  
  protected abstract String e();
  
  protected String f()
  {
    return e.h();
  }
  
  public boolean h()
  {
    for (;;)
    {
      synchronized (h)
      {
        if (n == 2)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public final Context i()
  {
    return d;
  }
  
  public final Account j()
  {
    if (p != null) {
      return p;
    }
    return new Account("<<default account>>", "com.google");
  }
  
  protected Bundle k()
  {
    return new Bundle();
  }
  
  protected final void l()
  {
    if (!b()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public final T m()
    throws DeadObjectException
  {
    synchronized (h)
    {
      if (n == 4) {
        throw new DeadObjectException();
      }
    }
    l();
    if (k != null) {}
    for (boolean bool = true;; bool = false)
    {
      aq.a(bool, "Client is connected but service is null");
      IInterface localIInterface = k;
      return localIInterface;
    }
  }
  
  protected Bundle n()
  {
    return null;
  }
  
  public boolean o()
  {
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */