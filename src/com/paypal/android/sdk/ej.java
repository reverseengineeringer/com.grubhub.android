package com.paypal.android.sdk;

public enum ej
{
  private boolean A;
  private String x;
  private String y;
  private boolean z;
  
  static
  {
    c = new ej("ConfirmPayment", 7, "confirmpayment", "confirm", false, false);
    w = new ej("ConfirmPaymentCancel", 8, "confirmpayment", "cancel", false, true);
    d = new ej("PaymentSuccessful", 9, "paymentsuccessful", "", false, false);
    e = new ej("LoginWindow", 10, "login", "password", true, false);
    f = new ej("LoginPassword", 11, "login", "password", true, true);
    g = new ej("LoginPIN", 12, "login", "PIN", true, true);
    h = new ej("SignUp", 13, "login", "password", true, true);
    i = new ej("LoginForgotPassword", 14, "login", "password", true, true);
    j = new ej("LoginCancel", 15, "login", "cancel", true, true);
    k = new ej("ConsentWindow", 16, "authorizationconsent", "", false, false);
    l = new ej("ConsentAgree", 17, "authorizationconsent", "agree", false, true);
    m = new ej("ConsentCancel", 18, "authorizationconsent", "cancel", false, true);
    n = new ej("ConsentMerchantUrl", 19, "authorizationconsent", "merchanturl", false, true);
    o = new ej("ConsentPayPalPrivacyUrl", 20, "authorizationconsent", "privacy", false, true);
    p = new ej("AuthorizationSuccessful", 21, "authorizationsuccessful", "", false, false);
    q = new ej("LegalTextWindow", 22, "legaltext", "", false, false);
  }
  
  private ej(String paramString2, String paramString3, boolean paramBoolean1, boolean paramBoolean2)
  {
    x = paramString2;
    y = paramString3;
    z = paramBoolean1;
    A = paramBoolean2;
  }
  
  public final String a()
  {
    return x + "::" + y;
  }
  
  public final String a(String paramString, boolean paramBoolean)
  {
    String str;
    if (z) {
      if (paramBoolean) {
        str = "returnuser";
      }
    }
    for (;;)
    {
      return eh.a + ":" + paramString + ":" + str;
      str = "newuser";
      continue;
      str = "";
    }
  }
  
  public final boolean b()
  {
    return A;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */