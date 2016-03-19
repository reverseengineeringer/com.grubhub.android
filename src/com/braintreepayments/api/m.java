package com.braintreepayments.api;

import android.content.Context;
import android.content.Intent;
import com.braintreepayments.api.models.h;

public class m
  extends b
{
  public m(Context paramContext, h paramh)
  {
    super(paramContext, paramh);
  }
  
  public static boolean a(Intent paramIntent)
  {
    return paramIntent.hasExtra("com.braintreepayments.api.EXTRA_PAYMENT_METHOD_NONCE");
  }
  
  protected String a(int paramInt, Intent paramIntent)
  {
    if (paramInt == -1) {
      return paramIntent.getStringExtra("com.braintreepayments.api.EXTRA_PAYMENT_METHOD_NONCE");
    }
    return null;
  }
  
  protected boolean a()
  {
    return (super.a()) && (!c.g().equals("off"));
  }
  
  protected Intent b()
  {
    Intent localIntent = super.b().putExtra("com.braintreepayments.api.MERCHANT_ID", c.h());
    if (c.g().equals("offline")) {
      localIntent.putExtra("com.braintreepayments.api.OFFLINE", true);
    }
    while (!c.g().equals("live")) {
      return localIntent;
    }
    localIntent.putExtra("com.braintreepayments.api.OFFLINE", false);
    return localIntent;
  }
  
  protected String c()
  {
    return "com.venmo";
  }
  
  protected String d()
  {
    return "CardChooserActivity";
  }
  
  protected String e()
  {
    return "CN=Andrew Kortina,OU=Engineering,O=Venmo,L=Philadelphia,ST=PA,C=US";
  }
  
  protected String f()
  {
    return "CN=Andrew Kortina,OU=Engineering,O=Venmo,L=Philadelphia,ST=PA,C=US";
  }
  
  protected int g()
  {
    return -129711843;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */