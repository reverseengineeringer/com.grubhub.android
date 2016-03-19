package com.braintreepayments.api.models;

import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import java.util.HashMap;
import java.util.Map;

public class f
  implements l<Card>
{
  @SerializedName("creditCard")
  private Card a = new Card();
  private Card.BillingAddress b = null;
  private String c = "custom";
  private String d = "form";
  
  public f()
  {
    a.f(d);
  }
  
  private Card.BillingAddress f()
  {
    if (b == null)
    {
      b = new Card.BillingAddress();
      a.a(b);
    }
    return b;
  }
  
  public Card a()
  {
    return a;
  }
  
  public f a(String paramString)
  {
    a.c(paramString);
    return this;
  }
  
  public f b(String paramString)
  {
    a.d(paramString);
    return this;
  }
  
  public Map<String, Object> b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("creditCard", a());
    localHashMap.put("_meta", new i(c, d));
    return localHashMap;
  }
  
  public f c(String paramString)
  {
    a.a(paramString);
    return this;
  }
  
  public String c()
  {
    return new Gson().toJson(b());
  }
  
  public f d(String paramString)
  {
    a.b(paramString);
    return this;
  }
  
  public String d()
  {
    return "credit_cards";
  }
  
  public f e(String paramString)
  {
    f().a(paramString);
    return this;
  }
  
  public String e()
  {
    return "creditCards";
  }
  
  public f f(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public Card g(String paramString)
  {
    return Card.e(paramString);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */