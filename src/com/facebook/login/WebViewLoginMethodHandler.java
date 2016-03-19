package com.facebook.login;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.app.q;
import android.text.TextUtils;
import android.webkit.CookieSyncManager;
import com.facebook.AccessToken;
import com.facebook.e;
import com.facebook.h;
import com.facebook.internal.FacebookDialogFragment;
import com.facebook.internal.al;
import com.facebook.internal.aq;
import com.facebook.internal.ar;
import com.facebook.internal.at;
import com.facebook.j;
import com.facebook.m;
import com.facebook.p;
import java.util.Locale;

class WebViewLoginMethodHandler
  extends LoginMethodHandler
{
  public static final Parcelable.Creator<WebViewLoginMethodHandler> CREATOR = new Parcelable.Creator()
  {
    public WebViewLoginMethodHandler a(Parcel paramAnonymousParcel)
    {
      return new WebViewLoginMethodHandler(paramAnonymousParcel);
    }
    
    public WebViewLoginMethodHandler[] a(int paramAnonymousInt)
    {
      return new WebViewLoginMethodHandler[paramAnonymousInt];
    }
  };
  private aq c;
  private String d;
  
  WebViewLoginMethodHandler(Parcel paramParcel)
  {
    super(paramParcel);
    d = paramParcel.readString();
  }
  
  WebViewLoginMethodHandler(LoginClient paramLoginClient)
  {
    super(paramLoginClient);
  }
  
  private void b(String paramString)
  {
    b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).edit().putString("TOKEN", paramString).apply();
  }
  
  private String d()
  {
    return b.b().getSharedPreferences("com.facebook.login.AuthorizationClient.WebViewAuthHandler.TOKEN_STORE_KEY", 0).getString("TOKEN", "");
  }
  
  String a()
  {
    return "web_view";
  }
  
  void a(LoginClient.Request paramRequest, Bundle paramBundle, h paramh)
  {
    if (paramBundle != null) {
      if (paramBundle.containsKey("e2e")) {
        d = paramBundle.getString("e2e");
      }
    }
    for (;;)
    {
      try
      {
        paramBundle = a(paramRequest.a(), paramBundle, e.WEB_VIEW, paramRequest.d());
        paramRequest = LoginClient.Result.a(b.c(), paramBundle);
        CookieSyncManager.createInstance(b.b()).sync();
        b(paramBundle.b());
        if (!al.a(d)) {
          a(d);
        }
        b.a(paramRequest);
        return;
      }
      catch (h paramRequest)
      {
        paramRequest = LoginClient.Result.a(b.c(), null, paramRequest.getMessage());
        continue;
      }
      if (!(paramh instanceof com.facebook.i)) {
        break;
      }
      paramRequest = LoginClient.Result.a(b.c(), "User canceled log in.");
    }
    d = null;
    paramRequest = paramh.getMessage();
    if ((paramh instanceof p))
    {
      paramRequest = ((p)paramh).a();
      paramBundle = String.format(Locale.ROOT, "%d", new Object[] { Integer.valueOf(paramRequest.b()) });
      paramRequest = paramRequest.toString();
    }
    for (;;)
    {
      paramRequest = LoginClient.Result.a(b.c(), null, paramRequest, paramBundle);
      break;
      paramBundle = null;
    }
  }
  
  boolean a(final LoginClient.Request paramRequest)
  {
    Bundle localBundle = new Bundle();
    if (!al.a(paramRequest.a()))
    {
      localObject = TextUtils.join(",", paramRequest.a());
      localBundle.putString("scope", (String)localObject);
      a("scope", localObject);
    }
    localBundle.putString("default_audience", paramRequest.c().getNativeProtocolAudience());
    Object localObject = AccessToken.a();
    if (localObject != null)
    {
      localObject = ((AccessToken)localObject).b();
      if ((localObject == null) || (!((String)localObject).equals(d()))) {
        break label218;
      }
      localBundle.putString("access_token", (String)localObject);
      a("access_token", "1");
    }
    for (;;)
    {
      at local1 = new at()
      {
        public void a(Bundle paramAnonymousBundle, h paramAnonymoush)
        {
          a(paramRequest, paramAnonymousBundle, paramAnonymoush);
        }
      };
      d = LoginClient.l();
      a("e2e", d);
      localObject = b.b();
      c = new i((Context)localObject, paramRequest.d(), localBundle).a(d).a(paramRequest.f()).a(local1).a(m.l()).a();
      paramRequest = new FacebookDialogFragment();
      paramRequest.setRetainInstance(true);
      paramRequest.a(c);
      paramRequest.show(((q)localObject).getSupportFragmentManager(), "FacebookDialogFragment");
      return true;
      localObject = null;
      break;
      label218:
      al.b(b.b());
      a("access_token", "0");
    }
  }
  
  void b()
  {
    if (c != null)
    {
      c.cancel();
      c = null;
    }
  }
  
  boolean c()
  {
    return true;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
    paramParcel.writeString(d);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.WebViewLoginMethodHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */