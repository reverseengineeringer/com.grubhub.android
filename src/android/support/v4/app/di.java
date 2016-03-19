package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.support.v4.content.a;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class di
  implements Iterable<Intent>
{
  private static final dk a = new dl();
  private final ArrayList<Intent> b = new ArrayList();
  private final Context c;
  
  static
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new dm();
      return;
    }
  }
  
  private di(Context paramContext)
  {
    c = paramContext;
  }
  
  public static di a(Context paramContext)
  {
    return new di(paramContext);
  }
  
  public di a(Activity paramActivity)
  {
    Object localObject = null;
    if ((paramActivity instanceof dj)) {
      localObject = ((dj)paramActivity).a();
    }
    if (localObject == null) {}
    for (paramActivity = ar.a(paramActivity);; paramActivity = (Activity)localObject)
    {
      if (paramActivity != null)
      {
        ComponentName localComponentName = paramActivity.getComponent();
        localObject = localComponentName;
        if (localComponentName == null) {
          localObject = paramActivity.resolveActivity(c.getPackageManager());
        }
        a((ComponentName)localObject);
        a(paramActivity);
      }
      return this;
    }
  }
  
  public di a(ComponentName paramComponentName)
  {
    int i = b.size();
    try
    {
      for (paramComponentName = ar.a(c, paramComponentName); paramComponentName != null; paramComponentName = ar.a(c, paramComponentName.getComponent())) {
        b.add(i, paramComponentName);
      }
      return this;
    }
    catch (PackageManager.NameNotFoundException paramComponentName)
    {
      Log.e("TaskStackBuilder", "Bad ComponentName while traversing activity parent metadata");
      throw new IllegalArgumentException(paramComponentName);
    }
  }
  
  public di a(Intent paramIntent)
  {
    b.add(paramIntent);
    return this;
  }
  
  public void a()
  {
    a(null);
  }
  
  public void a(Bundle paramBundle)
  {
    if (b.isEmpty()) {
      throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
    }
    Intent[] arrayOfIntent = (Intent[])b.toArray(new Intent[b.size()]);
    arrayOfIntent[0] = new Intent(arrayOfIntent[0]).addFlags(268484608);
    if (!a.a(c, arrayOfIntent, paramBundle))
    {
      paramBundle = new Intent(arrayOfIntent[(arrayOfIntent.length - 1)]);
      paramBundle.addFlags(268435456);
      c.startActivity(paramBundle);
    }
  }
  
  public Iterator<Intent> iterator()
  {
    return b.iterator();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.app.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */