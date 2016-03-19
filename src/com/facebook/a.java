package com.facebook;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import com.facebook.internal.ap;
import org.json.JSONException;
import org.json.JSONObject;

class a
{
  private final SharedPreferences a;
  private final b b;
  private ac c;
  
  public a()
  {
    this(m.f().getSharedPreferences("com.facebook.AccessTokenManager.SharedPreferences", 0), new b());
  }
  
  a(SharedPreferences paramSharedPreferences, b paramb)
  {
    a = paramSharedPreferences;
    b = paramb;
  }
  
  private boolean c()
  {
    return a.contains("com.facebook.AccessTokenManager.CachedAccessToken");
  }
  
  private AccessToken d()
  {
    AccessToken localAccessToken = null;
    String str = a.getString("com.facebook.AccessTokenManager.CachedAccessToken", null);
    if (str != null) {}
    try
    {
      localAccessToken = AccessToken.a(new JSONObject(str));
      return localAccessToken;
    }
    catch (JSONException localJSONException) {}
    return null;
  }
  
  private boolean e()
  {
    return m.c();
  }
  
  private AccessToken f()
  {
    Object localObject2 = null;
    Bundle localBundle = g().a();
    Object localObject1 = localObject2;
    if (localBundle != null)
    {
      localObject1 = localObject2;
      if (ac.a(localBundle)) {
        localObject1 = AccessToken.a(localBundle);
      }
    }
    return (AccessToken)localObject1;
  }
  
  private ac g()
  {
    if (c == null) {}
    try
    {
      if (c == null) {
        c = b.a();
      }
      return c;
    }
    finally {}
  }
  
  public AccessToken a()
  {
    Object localObject = null;
    if (c()) {
      localObject = d();
    }
    AccessToken localAccessToken;
    do
    {
      do
      {
        return (AccessToken)localObject;
      } while (!e());
      localAccessToken = f();
      localObject = localAccessToken;
    } while (localAccessToken == null);
    a(localAccessToken);
    g().b();
    return localAccessToken;
  }
  
  public void a(AccessToken paramAccessToken)
  {
    ap.a(paramAccessToken, "accessToken");
    try
    {
      paramAccessToken = paramAccessToken.j();
      a.edit().putString("com.facebook.AccessTokenManager.CachedAccessToken", paramAccessToken.toString()).apply();
      return;
    }
    catch (JSONException paramAccessToken) {}
  }
  
  public void b()
  {
    a.edit().remove("com.facebook.AccessTokenManager.CachedAccessToken").apply();
    if (e()) {
      g().b();
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */