package com.braintreepayments.api;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.braintreepayments.api.exceptions.f;
import com.braintreepayments.api.models.j;
import com.braintreepayments.api.models.k;
import com.paypal.android.sdk.payments.PayPalAuthorization;
import com.paypal.android.sdk.payments.PayPalConfiguration;
import com.paypal.android.sdk.payments.PayPalOAuthScopes;
import com.paypal.android.sdk.payments.PayPalProfileSharingActivity;
import com.paypal.android.sdk.payments.PayPalService;
import com.paypal.android.sdk.payments.PayPalTouchActivity;
import com.paypal.android.sdk.payments.PayPalTouchConfirmation;
import com.paypal.android.sdk.payments.t;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;

public class l
{
  protected static boolean a = true;
  
  public static j a(Activity paramActivity, int paramInt, Intent paramIntent)
    throws f
  {
    if (paramInt == -1)
    {
      j localj = new j();
      if (paramActivity != null) {
        localj.c(PayPalConfiguration.a(paramActivity));
      }
      paramActivity = (PayPalTouchConfirmation)paramIntent.getParcelableExtra("com.paypal.android.sdk.loginConfirmation");
      if (paramActivity != null) {}
      for (;;)
      {
        try
        {
          paramActivity = paramActivity.a().getJSONObject("response");
          localj.b(paramActivity.optString("authorization_code")).d("paypal-app");
          localj.a(paramActivity.optString("email"));
          return localj;
        }
        catch (JSONException paramActivity)
        {
          return null;
        }
        paramActivity = (PayPalAuthorization)paramIntent.getParcelableExtra("com.paypal.android.sdk.authorization");
        localj.b(paramActivity.a()).d("paypal-sdk");
        try
        {
          localj.a(paramActivity.b().getJSONObject("user").getString("display_string"));
        }
        catch (JSONException paramActivity) {}
      }
    }
    if (paramInt == 2) {
      throw new f("Result extras were invalid");
    }
    return null;
  }
  
  protected static PayPalConfiguration a(k paramk)
  {
    PayPalConfiguration localPayPalConfiguration = new PayPalConfiguration();
    if (paramk.f().equals("live")) {
      localPayPalConfiguration.a("live");
    }
    for (;;)
    {
      return localPayPalConfiguration.b(paramk.b()).c(paramk.a()).b(Uri.parse(paramk.d())).a(Uri.parse(paramk.c()));
      if (paramk.f().equals("offline")) {
        localPayPalConfiguration.a("mock");
      } else {
        localPayPalConfiguration.a(paramk.f());
      }
    }
  }
  
  protected static void a(Activity paramActivity, int paramInt, k paramk, List<String> paramList)
  {
    if ((t.a(paramActivity.getBaseContext(), a)) && (!paramk.f().equals("offline")) && (!paramk.g())) {}
    for (Class localClass = PayPalTouchActivity.class;; localClass = PayPalProfileSharingActivity.class)
    {
      HashSet localHashSet = new HashSet(Arrays.asList(new String[] { PayPalOAuthScopes.d, PayPalOAuthScopes.a }));
      if (paramList != null) {
        localHashSet.addAll(paramList);
      }
      paramActivity.startActivityForResult(new Intent(paramActivity, localClass).putExtra("com.paypal.android.sdk.requested_scopes", new PayPalOAuthScopes(localHashSet)).putExtra("com.paypal.android.sdk.paypalConfiguration", a(paramk)), paramInt);
      return;
    }
  }
  
  protected static void a(Context paramContext)
  {
    paramContext.stopService(new Intent(paramContext, PayPalService.class));
  }
  
  protected static void a(Context paramContext, k paramk)
  {
    a(paramContext);
    paramContext.startService(b(paramContext, paramk));
  }
  
  public static boolean a(Intent paramIntent)
  {
    return (paramIntent.hasExtra("com.paypal.android.sdk.loginConfirmation")) || (paramIntent.hasExtra("com.paypal.android.sdk.authorization"));
  }
  
  protected static Intent b(Context paramContext, k paramk)
  {
    paramContext = new Intent(paramContext, PayPalService.class);
    paramContext.putExtra("com.paypal.android.sdk.paypalConfiguration", a(paramk));
    paramContext.putExtra("com.paypal.android.sdk.enableAuthenticatorSecurity", a);
    if (paramk.f().equals("custom"))
    {
      paramContext.putExtra("com.paypal.android.sdk.baseEnvironmentUrl", paramk.e());
      paramContext.putExtra("com.paypal.android.sdk.enableStageSsl", false);
    }
    return paramContext;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */