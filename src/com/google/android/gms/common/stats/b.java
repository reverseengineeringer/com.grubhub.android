package com.google.android.gms.common.stats;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Debug;
import android.os.Process;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.internal.h;
import com.google.android.gms.d.aj;
import com.google.android.gms.d.bb;
import com.google.android.gms.d.bg;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public class b
{
  private static final Object a = new Object();
  private static b b;
  private static final ComponentName g = new ComponentName("com.google.android.gms", "com.google.android.gms.common.stats.GmsCoreStatsService");
  private final List<String> c;
  private final List<String> d;
  private final List<String> e;
  private final List<String> f;
  private f h;
  
  private b()
  {
    if (b() == e.a)
    {
      c = Collections.EMPTY_LIST;
      d = Collections.EMPTY_LIST;
      e = Collections.EMPTY_LIST;
      f = Collections.EMPTY_LIST;
      return;
    }
    Object localObject = (String)d.b.c();
    if (localObject == null)
    {
      localObject = Collections.EMPTY_LIST;
      c = ((List)localObject);
      localObject = (String)d.c.c();
      if (localObject != null) {
        break label175;
      }
      localObject = Collections.EMPTY_LIST;
      label84:
      d = ((List)localObject);
      localObject = (String)d.d.c();
      if (localObject != null) {
        break label188;
      }
      localObject = Collections.EMPTY_LIST;
      label107:
      e = ((List)localObject);
      localObject = (String)d.e.c();
      if (localObject != null) {
        break label201;
      }
    }
    label175:
    label188:
    label201:
    for (localObject = Collections.EMPTY_LIST;; localObject = Arrays.asList(((String)localObject).split(",")))
    {
      f = ((List)localObject);
      h = new f(1024, ((Long)d.f.c()).longValue());
      return;
      localObject = Arrays.asList(((String)localObject).split(","));
      break;
      localObject = Arrays.asList(((String)localObject).split(","));
      break label84;
      localObject = Arrays.asList(((String)localObject).split(","));
      break label107;
    }
  }
  
  public static b a()
  {
    synchronized (a)
    {
      if (b == null) {
        b = new b();
      }
      return b;
    }
  }
  
  private String a(ServiceConnection paramServiceConnection)
  {
    return String.valueOf(Process.myPid() << 32 | System.identityHashCode(paramServiceConnection));
  }
  
  private void a(Context paramContext, ServiceConnection paramServiceConnection, String paramString, Intent paramIntent, int paramInt)
  {
    if (!h.a) {}
    String str;
    do
    {
      return;
      str = a(paramServiceConnection);
    } while (!a(paramContext, paramString, paramIntent, str, paramInt));
    long l2 = System.currentTimeMillis();
    paramServiceConnection = null;
    if ((b() & e.e) != 0) {
      paramServiceConnection = bg.a(3, 5);
    }
    long l1 = 0L;
    if ((b() & e.g) != 0) {
      l1 = Debug.getNativeHeapAllocatedSize();
    }
    if ((paramInt == 1) || (paramInt == 4)) {}
    for (paramServiceConnection = new ConnectionEvent(l2, paramInt, null, null, null, null, paramServiceConnection, str, SystemClock.elapsedRealtime(), l1);; paramServiceConnection = new ConnectionEvent(l2, paramInt, bg.a(paramContext), paramString, processName, name, paramServiceConnection, str, SystemClock.elapsedRealtime(), l1))
    {
      paramContext.startService(new Intent().setComponent(g).putExtra("com.google.android.gms.common.stats.EXTRA_LOG_EVENT", paramServiceConnection));
      return;
      paramIntent = b(paramContext, paramIntent);
    }
  }
  
  private boolean a(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getComponent();
    if ((paramIntent == null) || ((h.a) && ("com.google.android.gms".equals(paramIntent.getPackageName())))) {
      return false;
    }
    return bb.a(paramContext, paramIntent.getPackageName());
  }
  
  private boolean a(Context paramContext, String paramString1, Intent paramIntent, String paramString2, int paramInt)
  {
    int i = b();
    if ((i == e.a) || (h == null)) {}
    Object localObject;
    do
    {
      do
      {
        return false;
        if ((paramInt != 4) && (paramInt != 1)) {
          break;
        }
      } while (!h.b(paramString2));
      return true;
      localObject = b(paramContext, paramIntent);
      if (localObject == null)
      {
        Log.w("ConnectionTracker", String.format("Client %s made an invalid request %s", new Object[] { paramString1, paramIntent.toUri(0) }));
        return false;
      }
      paramContext = bg.a(paramContext);
      paramIntent = processName;
      localObject = name;
    } while ((c.contains(paramContext)) || (d.contains(paramString1)) || (e.contains(paramIntent)) || (f.contains(localObject)) || ((paramIntent.equals(paramContext)) && ((i & e.f) != 0)));
    h.a(paramString2);
    return true;
  }
  
  private int b()
  {
    try
    {
      if (bb.a()) {
        return ((Integer)d.a.c()).intValue();
      }
      int i = e.a;
      return i;
    }
    catch (SecurityException localSecurityException) {}
    return e.a;
  }
  
  private static ServiceInfo b(Context paramContext, Intent paramIntent)
  {
    paramContext = paramContext.getPackageManager().queryIntentServices(paramIntent, 128);
    if ((paramContext == null) || (paramContext.size() == 0))
    {
      Log.w("ConnectionTracker", String.format("There are no handler of this intent: %s\n Stack trace: %s", new Object[] { paramIntent.toUri(0), bg.a(3, 20) }));
      return null;
    }
    if (paramContext.size() > 1)
    {
      Log.w("ConnectionTracker", String.format("Multiple handlers found for this intent: %s\n Stack trace: %s", new Object[] { paramIntent.toUri(0), bg.a(3, 20) }));
      paramIntent = paramContext.iterator();
      if (paramIntent.hasNext())
      {
        Log.w("ConnectionTracker", nextserviceInfo.name);
        return null;
      }
    }
    return get0serviceInfo;
  }
  
  public void a(Context paramContext, ServiceConnection paramServiceConnection)
  {
    a(paramContext, paramServiceConnection, null, null, 1);
    paramContext.unbindService(paramServiceConnection);
  }
  
  public void a(Context paramContext, ServiceConnection paramServiceConnection, String paramString, Intent paramIntent)
  {
    a(paramContext, paramServiceConnection, paramString, paramIntent, 3);
  }
  
  public boolean a(Context paramContext, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    return a(paramContext, paramContext.getClass().getName(), paramIntent, paramServiceConnection, paramInt);
  }
  
  public boolean a(Context paramContext, String paramString, Intent paramIntent, ServiceConnection paramServiceConnection, int paramInt)
  {
    if (a(paramContext, paramIntent))
    {
      Log.w("ConnectionTracker", "Attempted to bind to a service in a STOPPED package.");
      return false;
    }
    a(paramContext, paramServiceConnection, paramString, paramIntent, 2);
    return paramContext.bindService(paramIntent, paramServiceConnection, paramInt);
  }
  
  public void b(Context paramContext, ServiceConnection paramServiceConnection)
  {
    a(paramContext, paramServiceConnection, null, null, 4);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.stats.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */