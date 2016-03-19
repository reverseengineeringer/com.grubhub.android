package com.paypal.android.sdk;

import android.content.Context;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;

public final class u
{
  private final Context a;
  
  public u(Context paramContext)
  {
    a = paramContext;
  }
  
  public final void a(Class paramClass)
  {
    for (;;)
    {
      int i;
      try
      {
        ActivityInfo[] arrayOfActivityInfo = a.getPackageManager().getPackageInfo(a.getPackageName(), 1).activities;
        if (arrayOfActivityInfo == null) {
          break;
        }
        int j = arrayOfActivityInfo.length;
        i = 0;
        if (i >= j) {
          break;
        }
        ActivityInfo localActivityInfo = arrayOfActivityInfo[i];
        if ((name.equals(paramClass.getName())) && (localActivityInfo.getThemeResource() != 16973840)) {
          throw new RuntimeException("Theme for " + paramClass.getName() + " should be \"@android:style/Theme.Translucent.NoTitleBar\"");
        }
      }
      catch (PackageManager.NameNotFoundException paramClass)
      {
        throw new RuntimeException("Exception loading manifest" + paramClass.getMessage());
      }
      i += 1;
    }
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */