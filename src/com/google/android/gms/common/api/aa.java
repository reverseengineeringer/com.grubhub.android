package com.google.android.gms.common.api;

import android.os.Bundle;
import android.os.DeadObjectException;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.x;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;
import java.util.Set;

public class aa
  implements al
{
  private final zzg a;
  
  public aa(zzg paramzzg)
  {
    a = paramzzg;
  }
  
  private <A extends i> void a(ak<A> paramak)
    throws DeadObjectException
  {
    a.a(paramak);
    i locali = a.zza(paramak.e());
    if ((!locali.b()) && (a.f.containsKey(paramak.e())))
    {
      paramak.c(new Status(17));
      return;
    }
    paramak.a(locali);
  }
  
  public <A extends i, R extends v, T extends y<R, A>> T a(T paramT)
  {
    return b(paramT);
  }
  
  public void a()
  {
    while (!a.b.isEmpty()) {
      try
      {
        a((ak)a.b.remove());
      }
      catch (DeadObjectException localDeadObjectException)
      {
        Log.w("GoogleApiClientConnected", "Service died while flushing queue", localDeadObjectException);
      }
    }
  }
  
  public void a(int paramInt)
  {
    int i;
    if (paramInt == -1)
    {
      i = 1;
      if (i == 0) {
        break label69;
      }
      a.a();
      a.f.clear();
    }
    for (;;)
    {
      a.a(null);
      if (i == 0) {
        a.a.a(paramInt);
      }
      a.a.a();
      return;
      i = 0;
      break;
      label69:
      Iterator localIterator = a.k.iterator();
      while (localIterator.hasNext()) {
        ((ak)localIterator.next()).a(new Status(8, "The connection to Google Play services was lost"));
      }
    }
  }
  
  public void a(Bundle paramBundle) {}
  
  public void a(ConnectionResult paramConnectionResult, c<?> paramc, int paramInt) {}
  
  public <A extends i, T extends y<? extends v, A>> T b(T paramT)
  {
    try
    {
      a(paramT);
      return paramT;
    }
    catch (DeadObjectException localDeadObjectException)
    {
      a(1);
    }
    return paramT;
  }
  
  public void b() {}
  
  public void b(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 2: 
      a(paramInt);
      a.connect();
      return;
    }
    a.f();
    a(paramInt);
  }
  
  public String c()
  {
    return "CONNECTED";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */