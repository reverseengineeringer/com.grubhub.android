package com.amazon.insights.core.system;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.pm.Signature;
import com.amazon.insights.core.log.Logger;

public class AndroidAppDetails
  implements AppDetails
{
  private static Logger logger = Logger.getLogger(AndroidAppDetails.class);
  private Context applicationContext;
  private PackageInfo packageInfo;
  
  public AndroidAppDetails(Context paramContext)
  {
    applicationContext = paramContext.getApplicationContext();
    try
    {
      packageInfo = applicationContext.getPackageManager().getPackageInfo(applicationContext.getPackageName(), 0);
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext)
    {
      logger.w("Unable to get details for package " + applicationContext.getPackageName());
    }
  }
  
  public String packageName()
  {
    if (packageInfo != null) {
      return packageInfo.packageName;
    }
    return null;
  }
  
  public String[] signatures()
  {
    if (packageInfo != null)
    {
      Signature[] arrayOfSignature = packageInfo.signatures;
      String[] arrayOfString = new String[arrayOfSignature.length];
      int i = 0;
      while (i < arrayOfSignature.length)
      {
        arrayOfString[i] = arrayOfSignature[i].toCharsString();
        i += 1;
      }
      return arrayOfString;
    }
    return null;
  }
  
  public String versionCode()
  {
    if (packageInfo != null) {
      return String.valueOf(packageInfo.versionCode);
    }
    return null;
  }
  
  public String versionName()
  {
    if (packageInfo != null) {
      return packageInfo.versionName;
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.amazon.insights.core.system.AndroidAppDetails
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */