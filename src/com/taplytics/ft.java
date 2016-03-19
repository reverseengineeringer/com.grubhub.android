package com.taplytics;

import android.app.PendingIntent;
import android.content.Context;
import java.lang.reflect.Proxy;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONArray;

public class ft
{
  private static ft e;
  private m a = null;
  private Object b = null;
  private List<String> c = null;
  private es d = null;
  
  public static ft a()
  {
    if (e == null) {
      e = new ft();
    }
    return e;
  }
  
  private m a(Context paramContext)
  {
    try
    {
      if (a == null)
      {
        m localm = new m("com.google.android.gms.common.api.GoogleApiClient$Builder", new Class[] { Context.class }, new Object[] { paramContext });
        Class localClass = b().getClass();
        Object localObject = b();
        localm.a("addApi", new Class[] { localClass }, new Object[] { localObject });
        localClass = Class.forName("com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener");
        localObject = c();
        localm.a("addOnConnectionFailedListener", new Class[] { localClass }, new Object[] { localObject });
        a = new m(localm.a("build"));
        localm = a;
        localClass = Class.forName("com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks");
        paramContext = b(paramContext);
        localm.a("registerConnectionCallbacks", new Class[] { localClass }, new Object[] { paramContext });
      }
      return a;
    }
    catch (Exception paramContext)
    {
      for (;;)
      {
        ck.c("Exception " + paramContext.getMessage() + "while adding geofences");
        d.b();
      }
    }
    catch (Throwable paramContext)
    {
      for (;;)
      {
        ck.c("Error " + paramContext.getMessage() + " while adding geofences");
        d.b();
      }
    }
  }
  
  private void a(Object paramObject1, Object paramObject2, PendingIntent paramPendingIntent)
    throws Exception
  {
    new m(m.a("com.google.android.gms.location.LocationServices", "GeofencingApi")).a("addGeofences", new Class[] { Class.forName("com.google.android.gms.common.api.GoogleApiClient"), Class.forName("com.google.android.gms.location.GeofencingRequest"), PendingIntent.class }, new Object[] { paramObject1, paramObject2, paramPendingIntent });
  }
  
  private void a(Object paramObject, List<String> paramList)
    throws Exception
  {
    new m(m.a("com.google.android.gms.location.LocationServices", "GeofencingApi")).a("removeGeofences", new Class[] { Class.forName("com.google.android.gms.common.api.GoogleApiClient"), paramList.getClass() }, new Object[] { paramObject, paramList });
  }
  
  private Object b()
    throws Exception
  {
    return m.a("com.google.android.gms.location.LocationServices", "API");
  }
  
  private Object b(Context paramContext)
    throws ClassNotFoundException
  {
    Class localClass = Class.forName("com.google.android.gms.common.api.GoogleApiClient$ConnectionCallbacks");
    ClassLoader localClassLoader = localClass.getClassLoader();
    paramContext = new fv(this, paramContext);
    return Proxy.newProxyInstance(localClassLoader, new Class[] { localClass }, paramContext);
  }
  
  private Object c()
    throws ClassNotFoundException
  {
    Class localClass = Class.forName("com.google.android.gms.common.api.GoogleApiClient$OnConnectionFailedListener");
    ClassLoader localClassLoader = localClass.getClassLoader();
    fu localfu = new fu(this);
    return Proxy.newProxyInstance(localClassLoader, new Class[] { localClass }, localfu);
  }
  
  public void a(es parames)
  {
    d = parames;
  }
  
  public void a(JSONArray paramJSONArray)
  {
    ArrayList localArrayList = new ArrayList();
    localArrayList.add(paramJSONArray);
    new fw(this, null).a(new List[] { localArrayList });
  }
}

/* Location:
 * Qualified Name:     com.taplytics.ft
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */