package com.facebook.login;

import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.util.Base64;
import com.facebook.AccessToken;
import com.facebook.a.a;
import com.facebook.e;
import com.facebook.h;
import com.facebook.internal.al;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

abstract class LoginMethodHandler
  implements Parcelable
{
  Map<String, String> a;
  protected LoginClient b;
  
  LoginMethodHandler(Parcel paramParcel)
  {
    a = al.a(paramParcel);
  }
  
  LoginMethodHandler(LoginClient paramLoginClient)
  {
    b = paramLoginClient;
  }
  
  static AccessToken a(Bundle paramBundle, e parame, String paramString)
  {
    Date localDate = al.a(paramBundle, "com.facebook.platform.extra.EXPIRES_SECONDS_SINCE_EPOCH", new Date(0L));
    ArrayList localArrayList = paramBundle.getStringArrayList("com.facebook.platform.extra.PERMISSIONS");
    String str = paramBundle.getString("com.facebook.platform.extra.ACCESS_TOKEN");
    if (al.a(str)) {
      return null;
    }
    return new AccessToken(str, paramString, paramBundle.getString("com.facebook.platform.extra.USER_ID"), localArrayList, null, parame, localDate, new Date());
  }
  
  public static AccessToken a(Collection<String> paramCollection, Bundle paramBundle, e parame, String paramString)
    throws h
  {
    Date localDate = al.a(paramBundle, "expires_in", new Date());
    String str = paramBundle.getString("access_token");
    Object localObject = paramBundle.getString("granted_scopes");
    if (!al.a((String)localObject)) {
      paramCollection = new ArrayList(Arrays.asList(((String)localObject).split(",")));
    }
    for (;;)
    {
      localObject = paramBundle.getString("denied_scopes");
      if (!al.a((String)localObject)) {}
      for (localObject = new ArrayList(Arrays.asList(((String)localObject).split(",")));; localObject = null)
      {
        if (al.a(str)) {
          return null;
        }
        return new AccessToken(str, paramString, b(paramBundle.getString("signed_request")), paramCollection, (Collection)localObject, parame, localDate, new Date());
      }
    }
  }
  
  private static String b(String paramString)
    throws h
  {
    if ((paramString == null) || (paramString.isEmpty())) {
      throw new h("Authorization response does not contain the signed_request");
    }
    try
    {
      paramString = paramString.split("\\.");
      if (paramString.length == 2)
      {
        paramString = new JSONObject(new String(Base64.decode(paramString[1], 0), "UTF-8")).getString("user_id");
        return paramString;
      }
    }
    catch (JSONException paramString)
    {
      throw new h("Failed to retrieve user_id from signed_request");
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;) {}
    }
  }
  
  abstract String a();
  
  void a(LoginClient paramLoginClient)
  {
    if (b != null) {
      throw new h("Can't set LoginClient if it is already set.");
    }
    b = paramLoginClient;
  }
  
  protected void a(String paramString)
  {
    String str = b.c().d();
    a locala = a.a(b.b(), str);
    Bundle localBundle = new Bundle();
    localBundle.putString("fb_web_login_e2e", paramString);
    localBundle.putLong("fb_web_login_switchback_time", System.currentTimeMillis());
    localBundle.putString("app_id", str);
    locala.a("fb_dialogs_web_login_dialog_complete", null, localBundle);
  }
  
  protected void a(String paramString, Object paramObject)
  {
    if (a == null) {
      a = new HashMap();
    }
    Map localMap = a;
    if (paramObject == null) {}
    for (paramObject = null;; paramObject = paramObject.toString())
    {
      localMap.put(paramString, paramObject);
      return;
    }
  }
  
  boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    return false;
  }
  
  abstract boolean a(LoginClient.Request paramRequest);
  
  void b() {}
  
  boolean c()
  {
    return false;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    al.a(paramParcel, a);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.LoginMethodHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */