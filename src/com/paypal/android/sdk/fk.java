package com.paypal.android.sdk;

import java.util.HashMap;
import org.json.JSONException;
import org.json.JSONObject;

public final class fk
  extends fm
{
  private final String a;
  private final String b;
  
  public fk(ea paramea, ef paramef, String paramString1, String paramString2, String paramString3, String paramString4)
  {
    super(cl.e, paramea, paramef, b(paramString1, paramString2));
    a = paramString3;
    b = paramString4;
  }
  
  public final String b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("authn_schemes", "2fa_pre_login");
    localHashMap.put("nonce", a);
    JSONObject localJSONObject = new JSONObject();
    localJSONObject.accumulate("authn_scheme", "security_key_sms_token");
    localJSONObject.accumulate("token_identifier", b);
    localHashMap.put("2fa_token_identifiers", a(localJSONObject));
    return ft.a(localHashMap);
  }
  
  public final void c()
  {
    JSONObject localJSONObject = n();
    try
    {
      g = localJSONObject.getString("nonce");
      return;
    }
    catch (JSONException localJSONException)
    {
      b(localJSONObject);
    }
  }
  
  public final void d()
  {
    b(n());
  }
  
  public final String e()
  {
    return "{\"nonce\": \"mock-login-challenge-nonce\"}";
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.fk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */