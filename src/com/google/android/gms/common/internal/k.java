package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.util.Log;
import com.google.android.gms.b;
import com.google.android.gms.d.be;

public final class k
{
  public static final String a(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      Log.e("GooglePlayServicesUtil", "Unexpected error code " + paramInt);
    case 4: 
    case 6: 
      return null;
    case 1: 
      return paramContext.getString(b.common_google_play_services_install_title);
    case 3: 
      return paramContext.getString(b.common_google_play_services_enable_title);
    case 18: 
      return paramContext.getString(b.common_google_play_services_updating_title);
    case 2: 
      return paramContext.getString(b.common_google_play_services_update_title);
    case 42: 
      return paramContext.getString(b.common_android_wear_update_title);
    case 9: 
      Log.e("GooglePlayServicesUtil", "Google Play services is invalid. Cannot recover.");
      return paramContext.getString(b.common_google_play_services_unsupported_title);
    case 7: 
      Log.e("GooglePlayServicesUtil", "Network error occurred. Please retry request later.");
      return paramContext.getString(b.common_google_play_services_network_error_title);
    case 8: 
      Log.e("GooglePlayServicesUtil", "Internal error occurred. Please see logs for detailed information");
      return null;
    case 10: 
      Log.e("GooglePlayServicesUtil", "Developer error occurred. Please see logs for detailed information");
      return null;
    case 5: 
      Log.e("GooglePlayServicesUtil", "An invalid account was specified when connecting. Please provide a valid account.");
      return paramContext.getString(b.common_google_play_services_invalid_account_title);
    case 11: 
      Log.e("GooglePlayServicesUtil", "The application is not licensed to the user.");
      return null;
    case 16: 
      Log.e("GooglePlayServicesUtil", "One of the API components you attempted to connect to is not available.");
      return null;
    }
    Log.e("GooglePlayServicesUtil", "The specified account could not be signed in.");
    return paramContext.getString(b.common_google_play_services_sign_in_failed_title);
  }
  
  public static String a(Context paramContext, int paramInt, String paramString)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return paramContext.getString(b.common_google_play_services_unknown_issue);
    case 1: 
      if (be.a(paramContext)) {
        return paramContext.getString(b.common_google_play_services_install_text_tablet, new Object[] { paramString });
      }
      return paramContext.getString(b.common_google_play_services_install_text_phone, new Object[] { paramString });
    case 3: 
      return paramContext.getString(b.common_google_play_services_enable_text, new Object[] { paramString });
    case 18: 
      return paramContext.getString(b.common_google_play_services_updating_text, new Object[] { paramString });
    case 2: 
      return paramContext.getString(b.common_google_play_services_update_text, new Object[] { paramString });
    case 42: 
      return paramContext.getString(b.common_android_wear_update_text, new Object[] { paramString });
    case 9: 
      return paramContext.getString(b.common_google_play_services_unsupported_text, new Object[] { paramString });
    case 7: 
      return paramContext.getString(b.common_google_play_services_network_error_text);
    case 5: 
      return paramContext.getString(b.common_google_play_services_invalid_account_text);
    case 16: 
      return paramContext.getString(b.common_google_play_services_api_unavailable_text, new Object[] { paramString });
    }
    return paramContext.getString(b.common_google_play_services_sign_in_failed_text);
  }
  
  public static String b(Context paramContext, int paramInt)
  {
    paramContext = paramContext.getResources();
    switch (paramInt)
    {
    default: 
      return paramContext.getString(17039370);
    case 1: 
      return paramContext.getString(b.common_google_play_services_install_button);
    case 3: 
      return paramContext.getString(b.common_google_play_services_enable_button);
    }
    return paramContext.getString(b.common_google_play_services_update_button);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */