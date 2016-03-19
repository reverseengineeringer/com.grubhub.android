package com.facebook.login;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.os.Bundle;
import com.facebook.a.a;
import java.util.Map;
import org.json.JSONObject;

class g
{
  private final a a;
  private String b;
  private String c;
  
  g(Context paramContext, String paramString)
  {
    b = paramString;
    a = a.a(paramContext, paramString);
    try
    {
      paramContext = paramContext.getPackageManager();
      if (paramContext != null)
      {
        paramContext = paramContext.getPackageInfo("com.facebook.katana", 0);
        if (paramContext != null) {
          c = versionName;
        }
      }
      return;
    }
    catch (PackageManager.NameNotFoundException paramContext) {}
  }
  
  static Bundle a(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putLong("1_timestamp_ms", System.currentTimeMillis());
    localBundle.putString("0_auth_logger_id", paramString);
    localBundle.putString("3_method", "");
    localBundle.putString("2_result", "");
    localBundle.putString("5_error_message", "");
    localBundle.putString("4_error_code", "");
    localBundle.putString("6_extras", "");
    return localBundle;
  }
  
  public String a()
  {
    return b;
  }
  
  public void a(String paramString1, String paramString2)
  {
    paramString1 = a(paramString1);
    paramString1.putString("3_method", paramString2);
    a.a("fb_mobile_login_method_start", null, paramString1);
  }
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    Bundle localBundle = a("");
    localBundle.putString("2_result", f.ERROR.getLoggingValue());
    localBundle.putString("5_error_message", paramString2);
    localBundle.putString("3_method", paramString3);
    a.a(paramString1, null, localBundle);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, Map<String, String> paramMap)
  {
    paramString1 = a(paramString1);
    if (paramString3 != null) {
      paramString1.putString("2_result", paramString3);
    }
    if (paramString4 != null) {
      paramString1.putString("5_error_message", paramString4);
    }
    if (paramString5 != null) {
      paramString1.putString("4_error_code", paramString5);
    }
    if ((paramMap != null) && (!paramMap.isEmpty())) {
      paramString1.putString("6_extras", new JSONObject(paramMap).toString());
    }
    paramString1.putString("3_method", paramString2);
    a.a("fb_mobile_login_method_complete", null, paramString1);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */