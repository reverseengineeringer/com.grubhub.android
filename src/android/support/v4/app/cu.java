package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;

class cu
{
  static void a(NotificationManager paramNotificationManager, String paramString, int paramInt)
  {
    paramNotificationManager.cancel(paramString, paramInt);
  }
  
  public static void a(NotificationManager paramNotificationManager, String paramString, int paramInt, Notification paramNotification)
  {
    paramNotificationManager.notify(paramString, paramInt, paramNotification);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */