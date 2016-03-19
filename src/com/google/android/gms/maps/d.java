package com.google.android.gms.maps;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.common.c;
import com.google.android.gms.common.internal.aq;
import com.google.android.gms.maps.internal.ak;
import com.google.android.gms.maps.internal.cw;
import com.google.android.gms.maps.model.f;

public final class d
{
  public static int a(Context paramContext)
  {
    aq.a(paramContext);
    try
    {
      paramContext = cw.a(paramContext);
      a(paramContext);
      return 0;
    }
    catch (c paramContext) {}
    return a;
  }
  
  public static void a(ak paramak)
  {
    try
    {
      b.a(paramak.a());
      com.google.android.gms.maps.model.b.a(paramak.b());
      return;
    }
    catch (RemoteException paramak)
    {
      throw new f(paramak);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */