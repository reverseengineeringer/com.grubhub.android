package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class x
  implements Handler.Callback
{
  final ArrayList<GoogleApiClient.ConnectionCallbacks> a = new ArrayList();
  private final y b;
  private final ArrayList<GoogleApiClient.ConnectionCallbacks> c = new ArrayList();
  private final ArrayList<GoogleApiClient.OnConnectionFailedListener> d = new ArrayList();
  private volatile boolean e = false;
  private final AtomicInteger f = new AtomicInteger(0);
  private boolean g = false;
  private final Handler h;
  private final Object i = new Object();
  
  public x(Looper paramLooper, y paramy)
  {
    b = paramy;
    h = new Handler(paramLooper, this);
  }
  
  public void a()
  {
    e = false;
    f.incrementAndGet();
  }
  
  public void a(int paramInt)
  {
    h.removeMessages(1);
    synchronized (i)
    {
      g = true;
      Object localObject2 = new ArrayList(c);
      int j = f.get();
      localObject2 = ((ArrayList)localObject2).iterator();
      GoogleApiClient.ConnectionCallbacks localConnectionCallbacks;
      do
      {
        if (((Iterator)localObject2).hasNext())
        {
          localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)((Iterator)localObject2).next();
          if ((e) && (f.get() == j)) {}
        }
        else
        {
          a.clear();
          g = false;
          return;
        }
      } while (!c.contains(localConnectionCallbacks));
      localConnectionCallbacks.onConnectionSuspended(paramInt);
    }
  }
  
  public void a(Bundle paramBundle)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (i)
      {
        if (!g)
        {
          bool1 = true;
          aq.a(bool1);
          h.removeMessages(1);
          g = true;
          if (a.size() != 0) {
            break label185;
          }
          bool1 = bool2;
          aq.a(bool1);
          Object localObject2 = new ArrayList(c);
          int j = f.get();
          localObject2 = ((ArrayList)localObject2).iterator();
          GoogleApiClient.ConnectionCallbacks localConnectionCallbacks;
          if (((Iterator)localObject2).hasNext())
          {
            localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)((Iterator)localObject2).next();
            if ((e) && (b.b()) && (f.get() == j)) {}
          }
          else
          {
            a.clear();
            g = false;
            return;
          }
          if (a.contains(localConnectionCallbacks)) {
            continue;
          }
          localConnectionCallbacks.onConnected(paramBundle);
        }
      }
      boolean bool1 = false;
      continue;
      label185:
      bool1 = false;
    }
  }
  
  public void a(ConnectionResult paramConnectionResult)
  {
    h.removeMessages(1);
    synchronized (i)
    {
      Object localObject2 = new ArrayList(d);
      int j = f.get();
      localObject2 = ((ArrayList)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        GoogleApiClient.OnConnectionFailedListener localOnConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener)((Iterator)localObject2).next();
        if ((!e) || (f.get() != j)) {
          return;
        }
        if (d.contains(localOnConnectionFailedListener)) {
          localOnConnectionFailedListener.onConnectionFailed(paramConnectionResult);
        }
      }
    }
  }
  
  public void a(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    aq.a(paramConnectionCallbacks);
    synchronized (i)
    {
      if (c.contains(paramConnectionCallbacks))
      {
        Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + paramConnectionCallbacks + " is already registered");
        if (b.b()) {
          h.sendMessage(h.obtainMessage(1, paramConnectionCallbacks));
        }
        return;
      }
      c.add(paramConnectionCallbacks);
    }
  }
  
  public void a(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    aq.a(paramOnConnectionFailedListener);
    synchronized (i)
    {
      if (d.contains(paramOnConnectionFailedListener))
      {
        Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + paramOnConnectionFailedListener + " is already registered");
        return;
      }
      d.add(paramOnConnectionFailedListener);
    }
  }
  
  public void b()
  {
    e = true;
  }
  
  public boolean b(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    aq.a(paramConnectionCallbacks);
    synchronized (i)
    {
      boolean bool = c.contains(paramConnectionCallbacks);
      return bool;
    }
  }
  
  public boolean b(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    aq.a(paramOnConnectionFailedListener);
    synchronized (i)
    {
      boolean bool = d.contains(paramOnConnectionFailedListener);
      return bool;
    }
  }
  
  public void c(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    aq.a(paramConnectionCallbacks);
    synchronized (i)
    {
      if (!c.remove(paramConnectionCallbacks)) {
        Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + paramConnectionCallbacks + " not found");
      }
      while (!g) {
        return;
      }
      a.add(paramConnectionCallbacks);
    }
  }
  
  public void c(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    aq.a(paramOnConnectionFailedListener);
    synchronized (i)
    {
      if (!d.remove(paramOnConnectionFailedListener)) {
        Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + paramOnConnectionFailedListener + " not found");
      }
      return;
    }
  }
  
  public boolean handleMessage(Message arg1)
  {
    if (what == 1)
    {
      GoogleApiClient.ConnectionCallbacks localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)obj;
      synchronized (i)
      {
        if ((e) && (b.b()) && (c.contains(localConnectionCallbacks))) {
          localConnectionCallbacks.onConnected(b.a_());
        }
        return true;
      }
    }
    Log.wtf("GmsClientEvents", "Don't know how to handle this message.");
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */