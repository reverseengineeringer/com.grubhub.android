package android.support.v4.app;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.HandlerThread;
import android.os.IBinder;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

class cr
  implements ServiceConnection, Handler.Callback
{
  private final Context a;
  private final HandlerThread b;
  private final Handler c;
  private final Map<ComponentName, cs> d = new HashMap();
  private Set<String> e = new HashSet();
  
  public cr(Context paramContext)
  {
    a = paramContext;
    b = new HandlerThread("NotificationManagerCompat");
    b.start();
    c = new Handler(b.getLooper(), this);
  }
  
  private void a()
  {
    Object localObject1 = cj.b(a);
    if (((Set)localObject1).equals(e)) {}
    for (;;)
    {
      return;
      e = ((Set)localObject1);
      Object localObject2 = a.getPackageManager().queryIntentServices(new Intent().setAction("android.support.BIND_NOTIFICATION_SIDE_CHANNEL"), 4);
      HashSet localHashSet = new HashSet();
      localObject2 = ((List)localObject2).iterator();
      while (((Iterator)localObject2).hasNext())
      {
        ResolveInfo localResolveInfo = (ResolveInfo)((Iterator)localObject2).next();
        if (((Set)localObject1).contains(serviceInfo.packageName))
        {
          ComponentName localComponentName = new ComponentName(serviceInfo.packageName, serviceInfo.name);
          if (serviceInfo.permission != null) {
            Log.w("NotifManCompat", "Permission present on component " + localComponentName + ", not adding listener record.");
          } else {
            localHashSet.add(localComponentName);
          }
        }
      }
      localObject1 = localHashSet.iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (ComponentName)((Iterator)localObject1).next();
        if (!d.containsKey(localObject2))
        {
          if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Adding listener record for " + localObject2);
          }
          d.put(localObject2, new cs((ComponentName)localObject2));
        }
      }
      localObject1 = d.entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        if (!localHashSet.contains(((Map.Entry)localObject2).getKey()))
        {
          if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Removing listener record for " + ((Map.Entry)localObject2).getKey());
          }
          b((cs)((Map.Entry)localObject2).getValue());
          ((Iterator)localObject1).remove();
        }
      }
    }
  }
  
  private void a(ComponentName paramComponentName)
  {
    paramComponentName = (cs)d.get(paramComponentName);
    if (paramComponentName != null) {
      b(paramComponentName);
    }
  }
  
  private void a(ComponentName paramComponentName, IBinder paramIBinder)
  {
    paramComponentName = (cs)d.get(paramComponentName);
    if (paramComponentName != null)
    {
      c = al.a(paramIBinder);
      e = 0;
      d(paramComponentName);
    }
  }
  
  private boolean a(cs paramcs)
  {
    if (b) {
      return true;
    }
    Intent localIntent = new Intent("android.support.BIND_NOTIFICATION_SIDE_CHANNEL").setComponent(a);
    b = a.bindService(localIntent, this, cj.a());
    if (b) {
      e = 0;
    }
    for (;;)
    {
      return b;
      Log.w("NotifManCompat", "Unable to bind to listener " + a);
      a.unbindService(this);
    }
  }
  
  private void b(ComponentName paramComponentName)
  {
    paramComponentName = (cs)d.get(paramComponentName);
    if (paramComponentName != null) {
      d(paramComponentName);
    }
  }
  
  private void b(cs paramcs)
  {
    if (b)
    {
      a.unbindService(this);
      b = false;
    }
    c = null;
  }
  
  private void b(ct paramct)
  {
    a();
    Iterator localIterator = d.values().iterator();
    while (localIterator.hasNext())
    {
      cs localcs = (cs)localIterator.next();
      d.add(paramct);
      d(localcs);
    }
  }
  
  private void c(cs paramcs)
  {
    if (c.hasMessages(3, a)) {
      return;
    }
    e += 1;
    if (e > 6)
    {
      Log.w("NotifManCompat", "Giving up on delivering " + d.size() + " tasks to " + a + " after " + e + " retries");
      d.clear();
      return;
    }
    int i = (1 << e - 1) * 1000;
    if (Log.isLoggable("NotifManCompat", 3)) {
      Log.d("NotifManCompat", "Scheduling retry for " + i + " ms");
    }
    paramcs = c.obtainMessage(3, a);
    c.sendMessageDelayed(paramcs, i);
  }
  
  private void d(cs paramcs)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      Log.d("NotifManCompat", "Processing component " + a + ", " + d.size() + " queued tasks");
    }
    if (d.isEmpty()) {}
    do
    {
      return;
      if ((!a(paramcs)) || (c == null))
      {
        c(paramcs);
        return;
      }
      try
      {
        Object localObject;
        do
        {
          if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Sending task " + localObject);
          }
          ((ct)localObject).a(c);
          d.remove();
          localObject = (ct)d.peek();
        } while (localObject != null);
      }
      catch (DeadObjectException localDeadObjectException)
      {
        for (;;)
        {
          if (Log.isLoggable("NotifManCompat", 3)) {
            Log.d("NotifManCompat", "Remote service has died: " + a);
          }
        }
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          Log.w("NotifManCompat", "RemoteException communicating with " + a, localRemoteException);
        }
      }
    } while (d.isEmpty());
    c(paramcs);
  }
  
  public void a(ct paramct)
  {
    c.obtainMessage(0, paramct).sendToTarget();
  }
  
  public boolean handleMessage(Message paramMessage)
  {
    switch (what)
    {
    default: 
      return false;
    case 0: 
      b((ct)obj);
      return true;
    case 1: 
      paramMessage = (cq)obj;
      a(a, b);
      return true;
    case 2: 
      a((ComponentName)obj);
      return true;
    }
    b((ComponentName)obj);
    return true;
  }
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      Log.d("NotifManCompat", "Connected to service " + paramComponentName);
    }
    c.obtainMessage(1, new cq(paramComponentName, paramIBinder)).sendToTarget();
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    if (Log.isLoggable("NotifManCompat", 3)) {
      Log.d("NotifManCompat", "Disconnected from service " + paramComponentName);
    }
    c.obtainMessage(2, paramComponentName).sendToTarget();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */