package com.braintreepayments.api.models;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import java.util.HashMap;
import java.util.Map;

public class j
  implements l<PayPalAccount>
{
  @SerializedName("email")
  private String a;
  @SerializedName("authorizationCode")
  private String b;
  @SerializedName("correlationId")
  private String c;
  @SerializedName("options")
  private m d;
  private String e = "custom";
  private String f;
  
  public PayPalAccount a()
  {
    PayPalAccount localPayPalAccount = new PayPalAccount();
    localPayPalAccount.b(b);
    localPayPalAccount.c(c);
    localPayPalAccount.a(d);
    localPayPalAccount.f(f);
    return localPayPalAccount;
  }
  
  public j a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public j b(String paramString)
  {
    b = paramString;
    return this;
  }
  
  public Map<String, Object> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("paypalAccount", a());
    localHashMap.put("_meta", new i(e, f));
    return localHashMap;
  }
  
  public j c(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public String c()
  {
    return new Gson().toJson(b());
  }
  
  public j d(String paramString)
  {
    f = paramString;
    return this;
  }
  
  public String d()
  {
    return "paypal_accounts";
  }
  
  public PayPalAccount e(String paramString)
  {
    paramString = PayPalAccount.d(paramString);
    paramString.a(a);
    return paramString;
  }
  
  public String e()
  {
    return "paypalAccounts";
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */