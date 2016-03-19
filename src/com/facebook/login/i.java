package com.facebook.login;

import android.content.Context;
import android.os.Bundle;
import com.facebook.internal.aq;
import com.facebook.internal.ar;

class i
  extends ar
{
  private String a;
  private boolean b;
  
  public i(Context paramContext, String paramString, Bundle paramBundle)
  {
    super(paramContext, paramString, "oauth", paramBundle);
  }
  
  public aq a()
  {
    Bundle localBundle = e();
    localBundle.putString("redirect_uri", "fbconnect://success");
    localBundle.putString("client_id", b());
    localBundle.putString("e2e", a);
    localBundle.putString("response_type", "token,signed_request");
    localBundle.putString("return_scopes", "true");
    if (b) {
      localBundle.putString("auth_type", "rerequest");
    }
    return new aq(c(), "oauth", localBundle, d(), f());
  }
  
  public i a(String paramString)
  {
    a = paramString;
    return this;
  }
  
  public i a(boolean paramBoolean)
  {
    b = paramBoolean;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */