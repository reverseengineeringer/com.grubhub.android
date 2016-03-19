package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import com.google.android.gms.maps.model.f;

public final class b
{
  private static com.google.android.gms.maps.internal.a a;
  
  public static a a(LatLng paramLatLng, float paramFloat)
  {
    try
    {
      paramLatLng = new a(a().a(paramLatLng, paramFloat));
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      throw new f(paramLatLng);
    }
  }
  
  public static a a(LatLngBounds paramLatLngBounds, int paramInt)
  {
    try
    {
      paramLatLngBounds = new a(a().a(paramLatLngBounds, paramInt));
      return paramLatLngBounds;
    }
    catch (RemoteException paramLatLngBounds)
    {
      throw new f(paramLatLngBounds);
    }
  }
  
  private static com.google.android.gms.maps.internal.a a()
  {
    return (com.google.android.gms.maps.internal.a)aq.a(a, "CameraUpdateFactory is not initialized");
  }
  
  public static void a(com.google.android.gms.maps.internal.a parama)
  {
    a = (com.google.android.gms.maps.internal.a)aq.a(parama);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */