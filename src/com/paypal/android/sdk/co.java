package com.paypal.android.sdk;

public final class co
{
  private ck a;
  private String b;
  
  static
  {
    if (!co.class.desiredAssertionStatus()) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return;
    }
  }
  
  public co(ck paramck, String paramString)
  {
    if ((!c) && (paramck == null)) {
      throw new AssertionError();
    }
    a = paramck;
    b = ("com.paypal.android.sdk.encr." + paramString + ".");
  }
  
  public final bI a(String paramString)
  {
    Object localObject = a.a(b + "tokenizedRedactedCardNumber");
    String str1 = a.a(b + "token");
    String str2 = a.a(b + "tokenPayerID");
    String str3 = a.a(b + "tokenValidUntil");
    String str4 = a.a(b + "tokenizedCardType");
    String str5 = a.a(b + "tokenizedCardExpiryMonth");
    if (str5 != null) {}
    for (int i = Integer.parseInt(str5);; i = 0)
    {
      str5 = a.a(b + "tokenizedCardExpiryYear");
      if (str5 != null) {}
      for (int j = Integer.parseInt(str5);; j = 0)
      {
        str5 = a.c(a.a(b + "tokenClientId"));
        if ((ft.b(str5)) || (!str5.equals(paramString))) {
          paramString = null;
        }
        do
        {
          return paramString;
          localObject = new bI(str1, str2, str3, (String)localObject, str4, i, j);
          paramString = (String)localObject;
        } while (((bI)localObject).b());
        return null;
      }
    }
  }
  
  public final void a()
  {
    a(new bE());
  }
  
  public final void a(bE parambE)
  {
    Object localObject2 = null;
    if (parambE.a() != null) {}
    for (Object localObject1 = parambE.a().b();; localObject1 = null)
    {
      a.a(b + "loginPhoneNumber", (String)localObject1);
      a.a(b + "loginEmail", parambE.b());
      localObject1 = localObject2;
      if (parambE.c() != null) {
        localObject1 = parambE.c().toString();
      }
      a.a(b + "loginTypePrevious", (String)localObject1);
      return;
    }
  }
  
  public final void a(bI parambI, String paramString)
  {
    Object localObject2 = null;
    a.a(b + "token", parambI.e());
    a.a(b + "tokenPayerID", parambI.a());
    if (parambI.c() != null) {}
    for (Object localObject1 = new fb().format(parambI.c());; localObject1 = null)
    {
      a.a(b + "tokenValidUntil", (String)localObject1);
      a.a(b + "tokenizedRedactedCardNumber", parambI.d());
      localObject1 = localObject2;
      if (parambI.h() != null) {
        localObject1 = parambI.h().toString();
      }
      a.a(b + "tokenizedCardType", (String)localObject1);
      a.a(b + "tokenizedCardExpiryMonth", String.valueOf(parambI.f()));
      a.a(b + "tokenizedCardExpiryYear", String.valueOf(parambI.g()));
      a.a(b + "tokenClientId", a.b(paramString));
      return;
    }
  }
  
  public final void b()
  {
    a(new bI(), null);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.co
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */