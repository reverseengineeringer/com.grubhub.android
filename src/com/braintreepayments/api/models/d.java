package com.braintreepayments.api.models;

import android.content.Context;
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
import android.os.Build;
import android.os.Build.VERSION;
import android.provider.Settings.Secure;
import com.google.gson.annotations.SerializedName;
import java.io.BufferedReader;
import java.io.File;
import java.io.InputStreamReader;
import java.util.UUID;

class d
{
  @SerializedName("platform")
  private String b;
  @SerializedName("platformVersion")
  private String c;
  @SerializedName("sdkVersion")
  private String d;
  @SerializedName("merchantAppId")
  private String e;
  @SerializedName("merchantAppName")
  private String f;
  @SerializedName("merchantAppVersion")
  private String g;
  @SerializedName("deviceRooted")
  private String h;
  @SerializedName("deviceManufacturer")
  private String i;
  @SerializedName("deviceModel")
  private String j;
  @SerializedName("deviceNetworkType")
  private String k;
  @SerializedName("androidId")
  private String l;
  @SerializedName("deviceAppGeneratedPersistentUuid")
  private String m;
  @SerializedName("isSimulator")
  private String n;
  @SerializedName("integrationType")
  private String o;
  @SerializedName("userInterfaceOrientation")
  private String p;
  
  protected d(b paramb, Context paramContext, String paramString)
  {
    String str = paramContext.getPackageName();
    PackageManager localPackageManager = paramContext.getPackageManager();
    try
    {
      paramb = localPackageManager.getApplicationInfo(str, 0);
      b = "Android";
      c = Integer.toString(Build.VERSION.SDK_INT);
      d = "1.6.5";
      e = str;
      f = a(paramb, localPackageManager);
      g = a(localPackageManager, str);
      h = a();
      i = Build.MANUFACTURER;
      j = Build.MODEL;
      k = a(paramContext);
      l = Settings.Secure.getString(paramContext.getContentResolver(), "android_id");
      m = b(paramContext);
      n = b();
      o = paramString;
      p = c(paramContext);
      return;
    }
    catch (PackageManager.NameNotFoundException paramb)
    {
      for (;;)
      {
        paramb = null;
      }
    }
  }
  
  private String a()
  {
    boolean bool2 = false;
    String str = Build.TAGS;
    int i2;
    if ((str != null) && (str.contains("test-keys"))) {
      i2 = 1;
    }
    try
    {
      for (;;)
      {
        bool1 = new File("/system/app/Superuser.apk").exists();
        try
        {
          str = new BufferedReader(new InputStreamReader(Runtime.getRuntime().exec(new String[] { "/system/xbin/which", "su" }).getInputStream())).readLine();
          if (str == null) {
            break;
          }
          i1 = 1;
        }
        catch (Exception localException2)
        {
          for (;;)
          {
            int i1 = 0;
          }
        }
        if ((i2 == 0) && (!bool1))
        {
          bool1 = bool2;
          if (i1 == 0) {}
        }
        else
        {
          bool1 = true;
        }
        return Boolean.toString(bool1);
        i2 = 0;
      }
    }
    catch (Exception localException1)
    {
      for (;;)
      {
        boolean bool1 = false;
        continue;
        i1 = 0;
      }
    }
  }
  
  private String a(Context paramContext)
  {
    return ((ConnectivityManager)paramContext.getSystemService("connectivity")).getActiveNetworkInfo().getTypeName();
  }
  
  private String a(ApplicationInfo paramApplicationInfo, PackageManager paramPackageManager)
  {
    if (paramApplicationInfo != null) {
      return (String)paramPackageManager.getApplicationLabel(paramApplicationInfo);
    }
    return "ApplicationNameUnknown";
  }
  
  private String a(PackageManager paramPackageManager, String paramString)
  {
    try
    {
      paramPackageManager = getPackageInfo0versionName;
      return paramPackageManager;
    }
    catch (PackageManager.NameNotFoundException paramPackageManager) {}
    return "VersionUnknown";
  }
  
  private String b()
  {
    if (("google_sdk".equalsIgnoreCase(Build.PRODUCT)) || ("sdk".equalsIgnoreCase(Build.PRODUCT)) || ("Genymotion".equalsIgnoreCase(Build.MANUFACTURER))) {
      return "true";
    }
    return "false";
  }
  
  private String b(Context paramContext)
  {
    SharedPreferences localSharedPreferences = paramContext.getSharedPreferences("BraintreeApi", 0);
    String str = localSharedPreferences.getString("braintreeUUID", null);
    paramContext = str;
    if (str == null)
    {
      paramContext = UUID.randomUUID().toString().replace("-", "");
      localSharedPreferences.edit().putString("braintreeUUID", paramContext).apply();
    }
    return paramContext;
  }
  
  private String c(Context paramContext)
  {
    switch (getResourcesgetConfigurationorientation)
    {
    default: 
      return "Unknown";
    case 1: 
      return "Portrait";
    }
    return "Landscape";
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */