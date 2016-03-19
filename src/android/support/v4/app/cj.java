package android.support.v4.app;

import android.app.Notification;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.provider.Settings.Secure;
import java.util.HashSet;
import java.util.Set;

public class cj
{
  private static final int a;
  private static final Object b = new Object();
  private static String c;
  private static Set<String> d = new HashSet();
  private static final Object g = new Object();
  private static cr h;
  private static final cl i;
  private final Context e;
  private final NotificationManager f;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14) {
      i = new co();
    }
    for (;;)
    {
      a = i.a();
      return;
      if (Build.VERSION.SDK_INT >= 5) {
        i = new cn();
      } else {
        i = new cm();
      }
    }
  }
  
  private cj(Context paramContext)
  {
    e = paramContext;
    f = ((NotificationManager)e.getSystemService("notification"));
  }
  
  public static cj a(Context paramContext)
  {
    return new cj(paramContext);
  }
  
  private void a(ct paramct)
  {
    synchronized (g)
    {
      if (h == null) {
        h = new cr(e.getApplicationContext());
      }
      h.a(paramct);
      return;
    }
  }
  
  private static boolean a(Notification paramNotification)
  {
    paramNotification = az.a(paramNotification);
    return (paramNotification != null) && (paramNotification.getBoolean("android.support.useSideChannel"));
  }
  
  public static Set<String> b(Context paramContext)
  {
    paramContext = Settings.Secure.getString(paramContext.getContentResolver(), "enabled_notification_listeners");
    HashSet localHashSet;
    if ((paramContext != null) && (!paramContext.equals(c)))
    {
      ??? = paramContext.split(":");
      localHashSet = new HashSet(???.length);
      int k = ???.length;
      int j = 0;
      while (j < k)
      {
        ComponentName localComponentName = ComponentName.unflattenFromString(???[j]);
        if (localComponentName != null) {
          localHashSet.add(localComponentName.getPackageName());
        }
        j += 1;
      }
    }
    synchronized (b)
    {
      d = localHashSet;
      c = paramContext;
      return d;
    }
  }
  
  public void a(int paramInt)
  {
    a(null, paramInt);
  }
  
  public void a(int paramInt, Notification paramNotification)
  {
    a(null, paramInt, paramNotification);
  }
  
  public void a(String paramString, int paramInt)
  {
    i.a(f, paramString, paramInt);
    if (Build.VERSION.SDK_INT <= 19) {
      a(new ck(e.getPackageName(), paramInt, paramString));
    }
  }
  
  public void a(String paramString, int paramInt, Notification paramNotification)
  {
    if (a(paramNotification))
    {
      a(new cp(e.getPackageName(), paramInt, paramString, paramNotification));
      i.a(f, paramString, paramInt);
      return;
    }
    i.a(f, paramString, paramInt, paramNotification);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */