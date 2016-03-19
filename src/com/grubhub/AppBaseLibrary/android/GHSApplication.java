package com.grubhub.AppBaseLibrary.android;

import android.accounts.Account;
import android.accounts.AccountManager;
import android.app.Activity;
import android.app.Application;
import android.app.Application.ActivityLifecycleCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.os.Bundle;
import android.telephony.TelephonyManager;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.crashlytics.android.Crashlytics;
import com.grubhub.AppBaseLibrary.android.dataServices.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.g;
import com.grubhub.AppBaseLibrary.android.dataServices.services.GHSReviewService;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Stack;

public class GHSApplication
  extends Application
  implements Application.ActivityLifecycleCallbacks
{
  private static final String a = GHSApplication.class.getSimpleName();
  private static GHSApplication b;
  private static DisplayMetrics c;
  private com.grubhub.AppBaseLibrary.android.dataServices.b.b d;
  private com.grubhub.AppBaseLibrary.android.utils.b.a e;
  private h f;
  private com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a g;
  private com.grubhub.AppBaseLibrary.android.utils.i.a h;
  private Stack<String> i;
  
  public static GHSApplication a()
  {
    if (b != null) {
      return b;
    }
    throw new NullPointerException("Instance not ready. Please ensure that your application is referenced in your manifest.");
  }
  
  public static com.grubhub.AppBaseLibrary.android.dataServices.net.a a(Context paramContext)
  {
    if (GHSPreferences.a().b()) {
      return com.grubhub.AppBaseLibrary.android.dataServices.net.i.b(paramContext);
    }
    return g.b(paramContext);
  }
  
  private void a(String paramString)
  {
    int k;
    for (int j = 0; j < i.size(); j = k + 1)
    {
      k = j;
      if (((String)i.get(j)).equalsIgnoreCase(paramString))
      {
        i.remove(j);
        k = j - 1;
      }
    }
  }
  
  public static boolean b(Context paramContext)
  {
    return a(paramContext).d();
  }
  
  public static GHSIUserAuthDataModel c(Context paramContext)
  {
    return a(paramContext).c();
  }
  
  public static GHSIUserAuthDataModel d(Context paramContext)
  {
    return a(paramContext).b();
  }
  
  public static String j()
  {
    try
    {
      String str = bgetPackageManagergetPackageInfobgetPackageName0versionName;
      return str;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
    return null;
  }
  
  public static String[] k()
  {
    Object localObject = b.getString(2131230996);
    if (f.b((String)localObject))
    {
      localObject = b.getSharedPreferences((String)localObject, 0);
      if ((localObject != null) && (f.b(((SharedPreferences)localObject).getString("username", null))) && (f.b(((SharedPreferences)localObject).getString("password", null)))) {
        return new String[] { ((SharedPreferences)localObject).getString("username", null), ((SharedPreferences)localObject).getString("password", null) };
      }
    }
    return null;
  }
  
  public static void l()
  {
    Object localObject = b.getString(2131230996);
    if (f.b((String)localObject))
    {
      localObject = b.getSharedPreferences((String)localObject, 0);
      if ((localObject != null) && ((f.b(((SharedPreferences)localObject).getString("username", null))) || (f.b(((SharedPreferences)localObject).getString("password", null)))))
      {
        localObject = ((SharedPreferences)localObject).edit();
        ((SharedPreferences.Editor)localObject).remove("username");
        ((SharedPreferences.Editor)localObject).remove("password");
        ((SharedPreferences.Editor)localObject).apply();
      }
    }
  }
  
  public static boolean m()
  {
    NetworkInfo localNetworkInfo = ((ConnectivityManager)b.getSystemService("connectivity")).getActiveNetworkInfo();
    return (localNetworkInfo != null) && (localNetworkInfo.isConnected());
  }
  
  public static boolean n()
  {
    TelephonyManager localTelephonyManager = (TelephonyManager)b.getSystemService("phone");
    PackageManager localPackageManager = b.getPackageManager();
    List localList = localPackageManager.queryIntentActivities(new Intent("android.intent.action.DIAL"), 0);
    return (localTelephonyManager.getPhoneType() != 0) && (localPackageManager.hasSystemFeature("android.hardware.telephony")) && (localList != null) && (localList.size() > 0);
  }
  
  public static float o()
  {
    w().getMetrics(c);
    return cdensity;
  }
  
  public static int p()
  {
    w().getMetrics(c);
    return cwidthPixels;
  }
  
  public static int q()
  {
    w().getMetrics(c);
    return cheightPixels;
  }
  
  public static int r()
  {
    int j = 0;
    int k = b.getResources().getIdentifier("status_bar_height", "dimen", "android");
    if (k > 0) {
      j = b.getResources().getDimensionPixelSize(k);
    }
    return j;
  }
  
  public static com.braintreepayments.api.a.b s()
  {
    if (u()) {
      return com.braintreepayments.api.a.b.SANDBOX;
    }
    return com.braintreepayments.api.a.b.PRODUCTION;
  }
  
  public static int t()
  {
    return (int)b.getResources().getDimension(2131427386);
  }
  
  public static boolean u()
  {
    boolean bool = false;
    try
    {
      int j = bgetPackageManagergetPackageInfobgetPackageName0applicationInfo.flags;
      if ((j & 0x2) != 0) {
        bool = true;
      }
      return bool;
    }
    catch (Exception localException)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, localException.getMessage());
    }
    return false;
  }
  
  private static Display w()
  {
    return ((WindowManager)b.getSystemService("window")).getDefaultDisplay();
  }
  
  public com.grubhub.AppBaseLibrary.android.dataServices.b.b b()
  {
    if (GHSPreferences.a().b()) {}
    for (d = d.a(this);; d = c.a(this)) {
      return d;
    }
  }
  
  public com.grubhub.AppBaseLibrary.android.utils.b.a c()
  {
    if (e == null) {
      e = com.grubhub.AppBaseLibrary.android.utils.b.a.a();
    }
    return e;
  }
  
  public void d() {}
  
  public void e()
  {
    if (f == null) {
      f = h.a();
    }
    f.a(this);
  }
  
  public void f()
  {
    if (g == null) {
      g = com.grubhub.AppBaseLibrary.android.utils.urbanAirship.a.a();
    }
    g.a(this);
  }
  
  public void g()
  {
    if (h == null) {
      h = com.grubhub.AppBaseLibrary.android.utils.i.a.a();
    }
    h.a(this);
  }
  
  public Locale h()
  {
    return getApplicationContextgetResourcesgetConfigurationlocale;
  }
  
  public Account[] i()
  {
    return AccountManager.get(getApplicationContext()).getAccountsByType("com.google");
  }
  
  public void onActivityCreated(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityDestroyed(Activity paramActivity) {}
  
  public void onActivityPaused(Activity paramActivity)
  {
    i.push(paramActivity.getClass().getSimpleName());
  }
  
  public void onActivityResumed(Activity paramActivity) {}
  
  public void onActivitySaveInstanceState(Activity paramActivity, Bundle paramBundle) {}
  
  public void onActivityStarted(Activity paramActivity)
  {
    if (i.isEmpty())
    {
      paramActivity = a().b();
      paramActivity.c(0);
      paramActivity.e(true);
      if (paramActivity.N() != null) {
        startService(GHSReviewService.a(this));
      }
      h.a().i();
      return;
    }
    a(paramActivity.getClass().getSimpleName());
  }
  
  public void onActivityStopped(Activity paramActivity)
  {
    a(paramActivity.getClass().getSimpleName());
  }
  
  public void onCreate()
  {
    super.onCreate();
    b = this;
    c = new DisplayMetrics();
    d = b();
    i = new Stack();
    registerActivityLifecycleCallbacks(this);
    Crashlytics.start(this);
    e();
    d();
    f();
    g();
  }
  
  public void v()
  {
    if (d != null)
    {
      Object localObject = d.R();
      if ((localObject != null) && (!((ArrayList)localObject).isEmpty()) && (((GHSIAddressDataModel)((ArrayList)localObject).get(0)).getDataModelVersion() == null))
      {
        d.d(null);
        localObject = d.z();
        if (localObject != null)
        {
          ((GHSFilterSortCriteria)localObject).setAddressToNotSaved();
          d.a((GHSFilterSortCriteria)localObject);
        }
        com.grubhub.AppBaseLibrary.android.order.cart.i.a();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSApplication
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */