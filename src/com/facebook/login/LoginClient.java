package com.facebook.login;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import com.facebook.AccessToken;
import com.facebook.am;
import com.facebook.h;
import com.facebook.internal.al;
import com.facebook.internal.k;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

class LoginClient
  implements Parcelable
{
  public static final Parcelable.Creator<LoginClient> CREATOR = new Parcelable.Creator()
  {
    public LoginClient a(Parcel paramAnonymousParcel)
    {
      return new LoginClient(paramAnonymousParcel);
    }
    
    public LoginClient[] a(int paramAnonymousInt)
    {
      return new LoginClient[paramAnonymousInt];
    }
  };
  LoginMethodHandler[] a;
  int b = -1;
  Fragment c;
  e d;
  d e;
  boolean f;
  LoginClient.Request g;
  Map<String, String> h;
  private g i;
  
  public LoginClient(Parcel paramParcel)
  {
    Parcelable[] arrayOfParcelable = paramParcel.readParcelableArray(LoginMethodHandler.class.getClassLoader());
    a = new LoginMethodHandler[arrayOfParcelable.length];
    int j = 0;
    while (j < arrayOfParcelable.length)
    {
      a[j] = ((LoginMethodHandler)arrayOfParcelable[j]);
      a[j].a(this);
      j += 1;
    }
    b = paramParcel.readInt();
    g = ((LoginClient.Request)paramParcel.readParcelable(LoginClient.Request.class.getClassLoader()));
    h = al.a(paramParcel);
  }
  
  public LoginClient(Fragment paramFragment)
  {
    c = paramFragment;
  }
  
  private void a(String paramString, LoginClient.Result paramResult, Map<String, String> paramMap)
  {
    a(paramString, a.getLoggingValue(), c, d, paramMap);
  }
  
  private void a(String paramString1, String paramString2, String paramString3, String paramString4, Map<String, String> paramMap)
  {
    if (g == null)
    {
      o().a("fb_mobile_login_method_complete", "Unexpected call to logCompleteLogin with null pendingAuthorizationRequest.", paramString1);
      return;
    }
    o().a(g.e(), paramString1, paramString2, paramString3, paramString4, paramMap);
  }
  
  private void a(String paramString1, String paramString2, boolean paramBoolean)
  {
    if (h == null) {
      h = new HashMap();
    }
    String str = paramString2;
    if (h.containsKey(paramString1))
    {
      str = paramString2;
      if (paramBoolean) {
        str = (String)h.get(paramString1) + "," + paramString2;
      }
    }
    h.put(paramString1, str);
  }
  
  private LoginMethodHandler[] c(LoginClient.Request paramRequest)
  {
    ArrayList localArrayList = new ArrayList();
    paramRequest = paramRequest.b();
    if (paramRequest.allowsKatanaAuth())
    {
      localArrayList.add(new GetTokenLoginMethodHandler(this));
      localArrayList.add(new KatanaProxyLoginMethodHandler(this));
    }
    if (paramRequest.allowsWebViewAuth()) {
      localArrayList.add(new WebViewLoginMethodHandler(this));
    }
    paramRequest = new LoginMethodHandler[localArrayList.size()];
    localArrayList.toArray(paramRequest);
    return paramRequest;
  }
  
  public static int d()
  {
    return k.Login.toRequestCode();
  }
  
  private void d(LoginClient.Result paramResult)
  {
    if (d != null) {
      d.a(paramResult);
    }
  }
  
  static String l()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("init", System.currentTimeMillis());
      return localJSONObject.toString();
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  private LoginMethodHandler m()
  {
    if (b >= 0) {
      return a[b];
    }
    return null;
  }
  
  private void n()
  {
    b(LoginClient.Result.a(g, "Login attempt failed.", null));
  }
  
  private g o()
  {
    if ((i == null) || (!i.a().equals(g.d()))) {
      i = new g(b(), g.d());
    }
    return i;
  }
  
  int a(String paramString)
  {
    return b().checkCallingOrSelfPermission(paramString);
  }
  
  public Fragment a()
  {
    return c;
  }
  
  void a(Fragment paramFragment)
  {
    if (c != null) {
      throw new h("Can't set fragment once it is already set.");
    }
    c = paramFragment;
  }
  
  void a(LoginClient.Request paramRequest)
  {
    if (!e()) {
      b(paramRequest);
    }
  }
  
  void a(LoginClient.Result paramResult)
  {
    if ((b != null) && (AccessToken.a() != null))
    {
      c(paramResult);
      return;
    }
    b(paramResult);
  }
  
  void a(d paramd)
  {
    e = paramd;
  }
  
  void a(e parame)
  {
    d = parame;
  }
  
  public boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    if (g != null) {
      return m().a(paramInt1, paramInt2, paramIntent);
    }
    return false;
  }
  
  q b()
  {
    return c.getActivity();
  }
  
  void b(LoginClient.Request paramRequest)
  {
    if (paramRequest == null) {}
    do
    {
      return;
      if (g != null) {
        throw new h("Attempted to authorize while a request is pending.");
      }
    } while ((AccessToken.a() != null) && (!g()));
    g = paramRequest;
    a = c(paramRequest);
    h();
  }
  
  void b(LoginClient.Result paramResult)
  {
    LoginMethodHandler localLoginMethodHandler = m();
    if (localLoginMethodHandler != null) {
      a(localLoginMethodHandler.a(), paramResult, a);
    }
    if (h != null) {
      f = h;
    }
    a = null;
    b = -1;
    g = null;
    h = null;
    d(paramResult);
  }
  
  public LoginClient.Request c()
  {
    return g;
  }
  
  void c(LoginClient.Result paramResult)
  {
    if (b == null) {
      throw new h("Can't validate without a token");
    }
    AccessToken localAccessToken1 = AccessToken.a();
    AccessToken localAccessToken2 = b;
    if ((localAccessToken1 != null) && (localAccessToken2 != null)) {}
    try
    {
      if (localAccessToken1.i().equals(localAccessToken2.i())) {}
      for (paramResult = LoginClient.Result.a(g, b);; paramResult = LoginClient.Result.a(g, "User logged in as different Facebook user.", null))
      {
        b(paramResult);
        return;
      }
      return;
    }
    catch (Exception paramResult)
    {
      b(LoginClient.Result.a(g, "Caught exception", paramResult.getMessage()));
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  boolean e()
  {
    return (g != null) && (b >= 0);
  }
  
  void f()
  {
    if (b >= 0) {
      m().b();
    }
  }
  
  boolean g()
  {
    if (f) {
      return true;
    }
    if (a("android.permission.INTERNET") != 0)
    {
      Object localObject = b();
      String str = ((Activity)localObject).getString(am.com_facebook_internet_permission_error_title);
      localObject = ((Activity)localObject).getString(am.com_facebook_internet_permission_error_message);
      b(LoginClient.Result.a(g, str, (String)localObject));
      return false;
    }
    f = true;
    return true;
  }
  
  void h()
  {
    if (b >= 0) {
      a(m().a(), "skipped", null, null, ma);
    }
    do
    {
      if ((a == null) || (b >= a.length - 1)) {
        break;
      }
      b += 1;
    } while (!i());
    while (g == null) {
      return;
    }
    n();
  }
  
  boolean i()
  {
    LoginMethodHandler localLoginMethodHandler = m();
    if ((localLoginMethodHandler.c()) && (!g()))
    {
      a("no_internet_permission", "1", false);
      return false;
    }
    boolean bool = localLoginMethodHandler.a(g);
    if (bool)
    {
      o().a(g.e(), localLoginMethodHandler.a());
      return bool;
    }
    a("not_tried", localLoginMethodHandler.a(), true);
    return bool;
  }
  
  void j()
  {
    if (e != null) {
      e.a();
    }
  }
  
  void k()
  {
    if (e != null) {
      e.b();
    }
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelableArray(a, paramInt);
    paramParcel.writeInt(b);
    paramParcel.writeParcelable(g, paramInt);
    al.a(paramParcel, h);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.LoginClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */