package com.google.android.gms.d;

import android.app.Activity;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.c.d;
import com.google.android.gms.c.j;
import com.google.android.gms.c.l;
import com.google.android.gms.c.m;
import com.google.android.gms.common.c;
import com.google.android.gms.common.e;
import com.google.android.gms.wallet.fragment.WalletFragmentOptions;

public class dy
  extends l<dl>
{
  private static dy a;
  
  protected dy()
  {
    super("com.google.android.gms.wallet.dynamite.WalletDynamiteCreatorImpl");
  }
  
  public static dc a(Activity paramActivity, d paramd, WalletFragmentOptions paramWalletFragmentOptions, df paramdf)
    throws c
  {
    int i = e.a(paramActivity);
    if (i != 0) {
      throw new c(i);
    }
    try
    {
      paramActivity = ((dl)a().a(paramActivity)).a(j.a(paramActivity), paramd, paramWalletFragmentOptions, paramdf);
      return paramActivity;
    }
    catch (RemoteException paramActivity)
    {
      throw new RuntimeException(paramActivity);
    }
    catch (m paramActivity)
    {
      throw new RuntimeException(paramActivity);
    }
  }
  
  private static dy a()
  {
    if (a == null) {
      a = new dy();
    }
    return a;
  }
  
  protected dl b(IBinder paramIBinder)
  {
    return dm.a(paramIBinder);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.d.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */