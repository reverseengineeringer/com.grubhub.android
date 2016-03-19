package com.facebook.login;

import android.os.Bundle;
import com.facebook.h;
import com.facebook.internal.ao;
import org.json.JSONException;
import org.json.JSONObject;

class GetTokenLoginMethodHandler$2
  implements ao
{
  GetTokenLoginMethodHandler$2(GetTokenLoginMethodHandler paramGetTokenLoginMethodHandler, Bundle paramBundle, LoginClient.Request paramRequest) {}
  
  public void a(h paramh)
  {
    c.b.b(LoginClient.Result.a(c.b.c(), "Caught exception", paramh.getMessage()));
  }
  
  public void a(JSONObject paramJSONObject)
  {
    try
    {
      paramJSONObject = paramJSONObject.getString("id");
      a.putString("com.facebook.platform.extra.USER_ID", paramJSONObject);
      c.b(b, a);
      return;
    }
    catch (JSONException paramJSONObject)
    {
      c.b.b(LoginClient.Result.a(c.b.c(), "Caught exception", paramJSONObject.getMessage()));
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.GetTokenLoginMethodHandler.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */