package com.braintreepayments.api.a;

import android.app.Activity;
import android.content.Context;
import com.a.f;
import java.lang.reflect.Method;
import java.util.UUID;

public final class a
{
  private String a;
  private String b;
  private String c;
  private f d;
  
  public a(Activity paramActivity, b paramb)
  {
    this(paramActivity, paramb.getMerchantId(), paramb.getCollectorUrl());
  }
  
  public a(Activity paramActivity, String paramString1, String paramString2)
  {
    a = paramString1;
    c = a(paramActivity);
    d = new f(paramActivity);
    d.b(a);
    d.a(paramString2);
  }
  
  private String a(Activity paramActivity)
  {
    try
    {
      paramActivity = (String)getClass().getClassLoader().loadClass("com.paypal.android.sdk.payments.PayPalConfiguration").getMethod("getClientMetadataId", new Class[] { Context.class }).invoke(null, new Object[] { paramActivity });
      return paramActivity;
    }
    catch (Exception paramActivity) {}
    return null;
  }
  
  public String a()
  {
    if (b == null)
    {
      b = UUID.randomUUID().toString().replace("-", "");
      d.c(b);
    }
    String str = "{\"device_session_id\":\"" + b + "\"," + "\"fraud_merchant_id\":\"" + a + "\"";
    if (c != null) {
      return str + ",\"correlation_id\":\"" + c + "\"}";
    }
    return str + "}";
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */