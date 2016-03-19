package com.flurry.android;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.flurry.sdk.fv;
import com.flurry.sdk.ib;
import com.flurry.sdk.jn;

public final class InstallReceiver
  extends BroadcastReceiver
{
  static final String a = InstallReceiver.class.getSimpleName();
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    ib.a(4, a, "Received an Install nofication of " + paramIntent.getAction());
    String str = paramIntent.getExtras().getString("referrer");
    ib.a(4, a, "Received an Install referrer of " + str);
    if ((str == null) || (!"com.android.vending.INSTALL_REFERRER".equals(paramIntent.getAction())))
    {
      ib.a(5, a, "referrer is null");
      return;
    }
    paramIntent = str;
    if (!str.contains("="))
    {
      ib.a(4, a, "referrer is before decoding: " + str);
      paramIntent = jn.d(str);
      ib.a(4, a, "referrer is: " + paramIntent);
    }
    new fv(paramContext).a(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.InstallReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */