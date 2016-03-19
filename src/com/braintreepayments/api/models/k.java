package com.braintreepayments.api.models;

import com.google.gson.annotations.SerializedName;

public class k
{
  @SerializedName("displayName")
  private String a;
  @SerializedName("clientId")
  private String b;
  @SerializedName("privacyUrl")
  private String c;
  @SerializedName("userAgreementUrl")
  private String d;
  @SerializedName("directBaseUrl")
  private String e;
  @SerializedName("environment")
  private String f;
  @SerializedName("touchDisabled")
  private boolean g;
  
  public String a()
  {
    return a;
  }
  
  public String b()
  {
    return b;
  }
  
  public String c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public String e()
  {
    return e + "/v1/";
  }
  
  public String f()
  {
    return f;
  }
  
  public boolean g()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */