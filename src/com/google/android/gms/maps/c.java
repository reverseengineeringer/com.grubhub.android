package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.maps.internal.d;
import com.google.android.gms.maps.model.MarkerOptions;
import com.google.android.gms.maps.model.e;
import com.google.android.gms.maps.model.f;

public final class c
{
  private final d a;
  
  protected c(d paramd)
  {
    a = ((d)aq.a(paramd));
  }
  
  public final e a(MarkerOptions paramMarkerOptions)
  {
    try
    {
      paramMarkerOptions = a.a(paramMarkerOptions);
      if (paramMarkerOptions != null)
      {
        paramMarkerOptions = new e(paramMarkerOptions);
        return paramMarkerOptions;
      }
      return null;
    }
    catch (RemoteException paramMarkerOptions)
    {
      throw new f(paramMarkerOptions);
    }
  }
  
  public final void a(a parama)
  {
    try
    {
      a.a(parama.a());
      return;
    }
    catch (RemoteException parama)
    {
      throw new f(parama);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */