package com.braintreepayments.api;

import android.content.Context;
import android.content.Intent;
import com.braintreepayments.api.exceptions.j;
import com.braintreepayments.api.models.h;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.PaymentMethodTokenizationParameters;
import com.google.android.gms.wallet.b;
import com.google.android.gms.wallet.d;
import com.google.android.gms.wallet.f;
import com.google.android.gms.wallet.g;
import com.google.android.gms.wallet.i;

public class a
{
  private h a;
  private GoogleApiClient b;
  private Cart c;
  
  protected a(h paramh)
  {
    a = paramh;
  }
  
  private GoogleApiClient a(Context paramContext)
    throws j
  {
    if (b == null) {
      b = new GoogleApiClient.Builder(paramContext).addApi(g.a, new i().a(c()).b(1).a()).build();
    }
    if (!b.isConnected())
    {
      paramContext = b.blockingConnect();
      if (!paramContext.b()) {
        throw new j("GoogleApiClient failed to connect with error code" + paramContext.c());
      }
    }
    return b;
  }
  
  public static boolean a(Intent paramIntent)
  {
    return paramIntent.hasExtra("com.google.android.gms.wallet.EXTRA_MASKED_WALLET");
  }
  
  public static boolean b(Intent paramIntent)
  {
    return paramIntent.hasExtra("com.google.android.gms.wallet.EXTRA_FULL_WALLET");
  }
  
  private int c()
  {
    if ((a.f().c() != null) && (a.f().c().equals("production"))) {
      return 1;
    }
    return 0;
  }
  
  private String d()
  {
    if (a.f().d() != null) {
      return a.f().d();
    }
    return "";
  }
  
  protected FullWalletRequest a(String paramString)
  {
    return FullWalletRequest.a().a(c).a(paramString).a();
  }
  
  protected MaskedWalletRequest a(boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    d locald = MaskedWalletRequest.a().c(d()).b("USD").a(c).e(paramBoolean1).b(paramBoolean2).a(paramBoolean3).a(a());
    if (c != null) {
      locald.a(c.c());
    }
    return locald.a();
  }
  
  protected PaymentMethodTokenizationParameters a()
  {
    return PaymentMethodTokenizationParameters.a().a(1).a("gateway", "braintree").a("braintree:merchantId", a.h()).a("braintree:authorizationFingerprint", a.f().b()).a("braintree:apiVersion", "v1").a("braintree:sdkVersion", "1.6.5").a();
  }
  
  protected void a(Context paramContext, int paramInt, String paramString)
    throws j
  {
    g.b.a(a(paramContext), a(paramString), paramInt);
  }
  
  protected void a(Context paramContext, int paramInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    throws j
  {
    MaskedWalletRequest localMaskedWalletRequest = a(paramBoolean1, paramBoolean2, paramBoolean3);
    g.b.a(a(paramContext), localMaskedWalletRequest, paramInt);
  }
  
  protected void a(Cart paramCart)
  {
    c = paramCart;
  }
  
  protected void b()
  {
    if (b != null) {
      b.disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */