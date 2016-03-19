package com.grubhub.AppBaseLibrary.android.utils.urbanAirship;

import android.os.Build.VERSION;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.notifications.DefaultNotificationFactory;

class a$1
  implements UAirship.OnReadyCallback
{
  a$1(a parama, GHSApplication paramGHSApplication) {}
  
  public void onAirshipReady(UAirship paramUAirship)
  {
    int i = 1;
    b.a(GHSApplication.a().b().c());
    paramUAirship.getPushManager().setUserNotificationsEnabled(true);
    DefaultNotificationFactory localDefaultNotificationFactory = new DefaultNotificationFactory(a);
    if (Build.VERSION.SDK_INT >= 21) {}
    for (;;)
    {
      if (i != 0)
      {
        localDefaultNotificationFactory.setColor(android.support.v4.content.a.b(a, 2131558479));
        localDefaultNotificationFactory.setSmallIconId(2130837894);
      }
      paramUAirship.getPushManager().setNotificationFactory(localDefaultNotificationFactory);
      paramUAirship = GHSApplication.d(a);
      if ((paramUAirship != null) && (f.b(paramUAirship.getUdid())))
      {
        b.a(paramUAirship.getUdid());
        b.c();
      }
      return;
      i = 0;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */