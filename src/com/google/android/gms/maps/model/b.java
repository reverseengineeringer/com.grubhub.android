package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.maps.model.internal.g;

public final class b
{
  private static g a;
  
  public static a a(int paramInt)
  {
    try
    {
      a locala = new a(a().a(paramInt));
      return locala;
    }
    catch (RemoteException localRemoteException)
    {
      throw new f(localRemoteException);
    }
  }
  
  private static g a()
  {
    return (g)aq.a(a, "IBitmapDescriptorFactory is not initialized");
  }
  
  public static void a(g paramg)
  {
    if (a != null) {
      return;
    }
    a = (g)aq.a(paramg);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */