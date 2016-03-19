package com.paypal.android.sdk;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;

public class r
  extends x
{
  private static final String a = r.class.getSimpleName();
  
  public final Intent a(String paramString1, s params, t paramt, String paramString2)
  {
    Intent localIntent = a("com.paypal.android.p2pmobile.Sdk", "com.paypal.android.lib.authenticator.activity.SdkActivity");
    Bundle localBundle = new Bundle();
    localBundle.putString("target_client_id", paramString1);
    if (params != null) {
      localBundle.putString("token_request_type", params.toString());
    }
    if (paramt != null) {
      localBundle.putString("response_type", paramt.toString());
    }
    localBundle.putString("app_guid", paramString2);
    new StringBuilder("launching authenticator with bundle:").append(localBundle);
    localIntent.putExtras(localBundle);
    return localIntent;
  }
  
  public final boolean a(Context paramContext, boolean paramBoolean)
  {
    boolean bool = a(paramContext, "com.paypal.android.p2pmobile.Sdk", "com.paypal.android.lib.authenticator.activity.SdkActivity");
    return (b(paramContext, paramBoolean)) && (bool);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */