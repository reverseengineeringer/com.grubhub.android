package com.facebook.internal;

import android.content.Context;
import android.os.Bundle;
import com.facebook.AccessToken;
import com.facebook.h;

public class ar
{
  private Context a;
  private String b;
  private String c;
  private int d = 16973840;
  private at e;
  private Bundle f;
  private AccessToken g;
  
  public ar(Context paramContext, String paramString, Bundle paramBundle)
  {
    g = AccessToken.a();
    if (g == null)
    {
      String str = al.a(paramContext);
      if (str != null) {
        b = str;
      }
    }
    else
    {
      a(paramContext, paramString, paramBundle);
      return;
    }
    throw new h("Attempted to create a builder without a valid access token or a valid default Application ID.");
  }
  
  public ar(Context paramContext, String paramString1, String paramString2, Bundle paramBundle)
  {
    String str = paramString1;
    if (paramString1 == null) {
      str = al.a(paramContext);
    }
    ap.a(str, "applicationId");
    b = str;
    a(paramContext, paramString2, paramBundle);
  }
  
  private void a(Context paramContext, String paramString, Bundle paramBundle)
  {
    a = paramContext;
    c = paramString;
    if (paramBundle != null)
    {
      f = paramBundle;
      return;
    }
    f = new Bundle();
  }
  
  public aq a()
  {
    if (g != null)
    {
      f.putString("app_id", g.h());
      f.putString("access_token", g.b());
    }
    for (;;)
    {
      return new aq(a, c, f, d, e);
      f.putString("app_id", b);
    }
  }
  
  public ar a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public ar a(at paramat)
  {
    e = paramat;
    return this;
  }
  
  public String b()
  {
    return b;
  }
  
  public Context c()
  {
    return a;
  }
  
  public int d()
  {
    return d;
  }
  
  public Bundle e()
  {
    return f;
  }
  
  public at f()
  {
    return e;
  }
}

/* Location:
 * Qualified Name:     com.facebook.internal.ar
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */