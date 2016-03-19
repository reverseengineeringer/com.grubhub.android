package com.google.android.gms.common.api;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import java.lang.ref.WeakReference;

class zzg$zzb
  extends BroadcastReceiver
{
  private WeakReference<zzg> a;
  
  zzg$zzb(zzg paramzzg)
  {
    a = new WeakReference(paramzzg);
  }
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramIntent = paramIntent.getData();
    paramContext = null;
    if (paramIntent != null) {
      paramContext = paramIntent.getSchemeSpecificPart();
    }
    if ((paramContext == null) || (!paramContext.equals("com.google.android.gms"))) {}
    do
    {
      return;
      paramContext = (zzg)a.get();
    } while (paramContext == null);
    zzg.c(paramContext);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.zzg.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */