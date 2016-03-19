package com.grubhub.AppBaseLibrary.android.utils.urbanAirship;

import android.content.res.Resources;
import android.os.Build.VERSION;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.UAirship;
import com.urbanairship.UAirship.OnReadyCallback;
import com.urbanairship.push.NamedUser;
import com.urbanairship.push.PushManager;
import com.urbanairship.push.notifications.DefaultNotificationFactory;
import java.util.Set;

public class a
{
  private static a a;
  
  public static a a()
  {
    if (a == null) {
      a = new a();
    }
    return a;
  }
  
  public void a(final GHSApplication paramGHSApplication)
  {
    AirshipConfigOptions localAirshipConfigOptions = new AirshipConfigOptions();
    if (paramGHSApplication.getResources().getBoolean(2131361805))
    {
      productionAppKey = paramGHSApplication.getResources().getString(2131232047);
      productionAppSecret = paramGHSApplication.getResources().getString(2131232048);
    }
    for (inProduction = true;; inProduction = false)
    {
      gcmSender = paramGHSApplication.getResources().getString(2131232050);
      UAirship.takeOff(paramGHSApplication, localAirshipConfigOptions, new UAirship.OnReadyCallback()
      {
        public void onAirshipReady(UAirship paramAnonymousUAirship)
        {
          int i = 1;
          a(GHSApplication.a().b().c());
          paramAnonymousUAirship.getPushManager().setUserNotificationsEnabled(true);
          DefaultNotificationFactory localDefaultNotificationFactory = new DefaultNotificationFactory(paramGHSApplication);
          if (Build.VERSION.SDK_INT >= 21) {}
          for (;;)
          {
            if (i != 0)
            {
              localDefaultNotificationFactory.setColor(android.support.v4.content.a.b(paramGHSApplication, 2131558479));
              localDefaultNotificationFactory.setSmallIconId(2130837894);
            }
            paramAnonymousUAirship.getPushManager().setNotificationFactory(localDefaultNotificationFactory);
            paramAnonymousUAirship = GHSApplication.d(paramGHSApplication);
            if ((paramAnonymousUAirship != null) && (f.b(paramAnonymousUAirship.getUdid())))
            {
              a(paramAnonymousUAirship.getUdid());
              c();
            }
            return;
            i = 0;
          }
        }
      });
      return;
      developmentAppKey = paramGHSApplication.getResources().getString(2131232047);
      developmentAppSecret = paramGHSApplication.getResources().getString(2131232048);
    }
  }
  
  public void a(String paramString)
  {
    if (f.b(paramString)) {
      UAirship.shared().getPushManager().getNamedUser().setId(paramString);
    }
  }
  
  public void a(boolean paramBoolean)
  {
    UAirship.shared().getPushManager().setPushEnabled(paramBoolean);
  }
  
  public void b()
  {
    Set localSet = UAirship.shared().getPushManager().getTags();
    localSet.add("logged-in");
    UAirship.shared().getPushManager().setTags(localSet);
  }
  
  public void c()
  {
    Set localSet = UAirship.shared().getPushManager().getTags();
    localSet.remove("logged-in");
    UAirship.shared().getPushManager().setTags(localSet);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */