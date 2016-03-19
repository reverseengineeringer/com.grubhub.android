package com.braintreepayments.api;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.net.Uri.Builder;
import com.braintreepayments.api.b.c;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.braintreepayments.api.exceptions.d;
import com.braintreepayments.api.exceptions.f;
import com.braintreepayments.api.exceptions.i;
import com.braintreepayments.api.models.AndroidPayCard;
import com.braintreepayments.api.models.PaymentMethod;
import com.braintreepayments.api.models.e;
import com.braintreepayments.api.models.g;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.FullWallet;
import com.google.android.gms.wallet.PaymentMethodToken;
import com.google.android.gms.wallet.PaymentMethodTokenizationParameters;
import com.google.gson.Gson;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class k
{
  private Context a;
  private g b;
  private com.braintreepayments.api.models.h c;
  private com.braintreepayments.api.b.b d;
  private m e;
  private a f;
  private Object g;
  
  protected k(Context paramContext, g paramg)
  {
    a = paramContext.getApplicationContext();
    b = paramg;
    d = new com.braintreepayments.api.b.b(b.b());
  }
  
  protected k(Context paramContext, g paramg, com.braintreepayments.api.models.h paramh, com.braintreepayments.api.b.b paramb)
  {
    a = paramContext.getApplicationContext();
    b = paramg;
    c = paramh;
    d = paramb;
    g = null;
    e = new m(a, c);
  }
  
  protected k(Context paramContext, String paramString1, String paramString2)
  {
    this(paramContext, g.a(paramString1), com.braintreepayments.api.models.h.a(paramString2), new com.braintreepayments.api.b.b(g.a(paramString1).b()));
  }
  
  private String b(String paramString)
  {
    return "/v1/" + paramString;
  }
  
  private String b(String paramString1, String paramString2)
    throws i
  {
    try
    {
      paramString1 = new JSONObject(paramString1).getJSONArray(paramString2).get(0).toString();
      return paramString1;
    }
    catch (JSONException paramString1)
    {
      throw new i("Parsing server response failed");
    }
  }
  
  private com.braintreepayments.api.models.h l()
    throws ErrorWithResponse, d
  {
    String str = Uri.parse(b.a()).buildUpon().appendQueryParameter("configVersion", "3").build().toString();
    return com.braintreepayments.api.models.h.a(d.b(str).a());
  }
  
  protected AndroidPayCard a(Intent paramIntent)
    throws JSONException
  {
    if (a.b(paramIntent))
    {
      paramIntent = new JSONObject(((FullWallet)paramIntent.getParcelableExtra("com.google.android.gms.wallet.EXTRA_FULL_WALLET")).c().b()).getJSONArray("androidPayCards");
      if (paramIntent.length() > 0) {
        return (AndroidPayCard)new Gson().fromJson(paramIntent.getString(0), AndroidPayCard.class);
      }
    }
    return null;
  }
  
  public <T extends PaymentMethod> T a(com.braintreepayments.api.models.l<T> paraml)
    throws ErrorWithResponse, d
  {
    return paraml.h(b(d.a(b("payment_methods/" + paraml.d()), paraml.c()).a(), paraml.e()));
  }
  
  protected PaymentMethod a(String paramString)
    throws ErrorWithResponse, d, JSONException
  {
    paramString = PaymentMethod.g(d.b(b("payment_methods/" + paramString)).a());
    if (paramString.size() == 1) {
      return (PaymentMethod)paramString.get(0);
    }
    if (paramString.size() > 1) {
      throw new i("Expected one payment method, got multiple payment methods");
    }
    throw new i("No payment methods were found for nonce");
  }
  
  public com.braintreepayments.api.models.j a(Activity paramActivity, int paramInt, Intent paramIntent)
    throws f
  {
    l.a(a);
    return l.a(paramActivity, paramInt, paramIntent);
  }
  
  public String a(int paramInt, Intent paramIntent)
  {
    return e.a(paramInt, paramIntent);
  }
  
  public void a(Activity paramActivity, int paramInt)
    throws com.braintreepayments.api.exceptions.a
  {
    e.a(paramActivity, paramInt);
  }
  
  protected void a(Activity paramActivity, int paramInt, Cart paramCart, String paramString)
    throws com.braintreepayments.api.exceptions.j
  {
    if (f == null) {
      f = new a(c);
    }
    if (paramCart != null) {
      f.a(paramCart);
    }
    f.a(paramActivity, paramInt, paramString);
  }
  
  protected void a(Activity paramActivity, int paramInt, Cart paramCart, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
    throws com.braintreepayments.api.exceptions.h, com.braintreepayments.api.exceptions.j
  {
    if ((paramBoolean1) && (paramCart != null)) {
      throw new com.braintreepayments.api.exceptions.h("The cart must be null when isBillingAgreement is true");
    }
    if ((!paramBoolean1) && (paramCart == null)) {
      throw new com.braintreepayments.api.exceptions.h("Cart cannot be null unless isBillingAgreement is true");
    }
    if (f == null) {
      f = new a(c);
    }
    f.a(paramCart);
    f.a(paramActivity, paramInt, paramBoolean1, paramBoolean2, paramBoolean3);
  }
  
  public void a(Activity paramActivity, int paramInt, List<String> paramList)
  {
    l.a(paramActivity.getApplicationContext(), c.e());
    l.a(paramActivity, paramInt, c.e(), paramList);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (c.i()) {
      paramString1 = new com.braintreepayments.api.models.b(a, paramString1, paramString2);
    }
    try
    {
      d.a(c.j().a(), paramString1.a());
      return;
    }
    catch (ErrorWithResponse paramString1) {}catch (d paramString1) {}
  }
  
  protected boolean a()
  {
    return c != null;
  }
  
  protected void b()
    throws ErrorWithResponse, d
  {
    c = l();
    d.a(c.a());
    g = null;
    e = new m(a, c);
  }
  
  protected String c()
  {
    if (c != null) {
      return new Gson().toJson(c);
    }
    return null;
  }
  
  @Deprecated
  public boolean d()
  {
    return c.d();
  }
  
  @Deprecated
  public boolean e()
  {
    return e.a();
  }
  
  protected boolean f()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    try
    {
      if (c.f().a())
      {
        int i = com.google.android.gms.common.b.a().a(a);
        bool1 = bool2;
        if (i == 0) {
          bool1 = true;
        }
      }
      return bool1;
    }
    catch (NoClassDefFoundError localNoClassDefFoundError) {}
    return false;
  }
  
  @Deprecated
  public boolean g()
  {
    return c.b();
  }
  
  @Deprecated
  public boolean h()
  {
    return c.c();
  }
  
  protected PaymentMethodTokenizationParameters i()
  {
    if (f == null) {
      f = new a(c);
    }
    return f.a();
  }
  
  protected void j()
  {
    if (f != null) {
      f.b();
    }
  }
  
  public List<PaymentMethod> k()
    throws ErrorWithResponse, d
  {
    return PaymentMethod.g(d.b(b("payment_methods")).a());
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */