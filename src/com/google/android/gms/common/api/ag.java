package com.google.android.gms.common.api;

import android.os.Bundle;
import com.google.android.gms.common.ConnectionResult;
import java.util.Iterator;
import java.util.Map;
import java.util.Queue;

public class ag
  implements al
{
  private final zzg a;
  
  public ag(zzg paramzzg)
  {
    a = paramzzg;
  }
  
  public <A extends i, R extends v, T extends y<R, A>> T a(T paramT)
  {
    a.b.add(paramT);
    return paramT;
  }
  
  public void a()
  {
    a.b();
  }
  
  public void a(int paramInt)
  {
    if (paramInt == -1) {
      paramInt = 1;
    }
    while (paramInt != 0)
    {
      Iterator localIterator = a.b.iterator();
      for (;;)
      {
        if (localIterator.hasNext())
        {
          ((ak)localIterator.next()).b();
          continue;
          paramInt = 0;
          break;
        }
      }
      a.b.clear();
      a.a();
      a.f.clear();
    }
  }
  
  public void a(Bundle paramBundle) {}
  
  public void a(ConnectionResult paramConnectionResult, c<?> paramc, int paramInt) {}
  
  public <A extends i, T extends y<? extends v, A>> T b(T paramT)
  {
    throw new IllegalStateException("GoogleApiClient is not connected yet.");
  }
  
  public void b()
  {
    a.c();
  }
  
  public void b(int paramInt) {}
  
  public String c()
  {
    return "DISCONNECTED";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ag
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */