package com.facebook.login;

import android.content.ActivityNotFoundException;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import android.support.v4.app.Fragment;
import com.facebook.e;
import com.facebook.h;
import com.facebook.internal.ac;
import com.facebook.internal.ak;
import com.facebook.internal.al;
import java.util.Collection;

class KatanaProxyLoginMethodHandler
  extends LoginMethodHandler
{
  public static final Parcelable.Creator<KatanaProxyLoginMethodHandler> CREATOR = new Parcelable.Creator()
  {
    public KatanaProxyLoginMethodHandler a(Parcel paramAnonymousParcel)
    {
      return new KatanaProxyLoginMethodHandler(paramAnonymousParcel);
    }
    
    public KatanaProxyLoginMethodHandler[] a(int paramAnonymousInt)
    {
      return new KatanaProxyLoginMethodHandler[paramAnonymousInt];
    }
  };
  
  KatanaProxyLoginMethodHandler(Parcel paramParcel)
  {
    super(paramParcel);
  }
  
  KatanaProxyLoginMethodHandler(LoginClient paramLoginClient)
  {
    super(paramLoginClient);
  }
  
  private LoginClient.Result a(LoginClient.Request paramRequest, Intent paramIntent)
  {
    Object localObject = null;
    paramIntent = paramIntent.getExtras();
    String str1 = a(paramIntent);
    String str2 = paramIntent.getString("error_code");
    String str3 = b(paramIntent);
    String str4 = paramIntent.getString("e2e");
    if (!al.a(str4)) {
      a(str4);
    }
    if ((str1 == null) && (str2 == null) && (str3 == null)) {}
    do
    {
      try
      {
        paramIntent = LoginClient.Result.a(paramRequest, a(paramRequest.a(), paramIntent, e.FACEBOOK_APPLICATION_WEB, paramRequest.d()));
        return paramIntent;
      }
      catch (h paramIntent)
      {
        return LoginClient.Result.a(paramRequest, null, paramIntent.getMessage());
      }
      paramIntent = (Intent)localObject;
    } while (ak.a.contains(str1));
    if (ak.b.contains(str1)) {
      return LoginClient.Result.a(paramRequest, null);
    }
    return LoginClient.Result.a(paramRequest, str1, str3, str2);
  }
  
  private String a(Bundle paramBundle)
  {
    String str2 = paramBundle.getString("error");
    String str1 = str2;
    if (str2 == null) {
      str1 = paramBundle.getString("error_type");
    }
    return str1;
  }
  
  private LoginClient.Result b(LoginClient.Request paramRequest, Intent paramIntent)
  {
    paramIntent = paramIntent.getExtras();
    String str1 = a(paramIntent);
    String str2 = paramIntent.getString("error_code");
    if ("CONNECTION_FAILURE".equals(str2)) {
      return LoginClient.Result.a(paramRequest, str1, b(paramIntent), str2);
    }
    return LoginClient.Result.a(paramRequest, str1);
  }
  
  private String b(Bundle paramBundle)
  {
    String str2 = paramBundle.getString("error_message");
    String str1 = str2;
    if (str2 == null) {
      str1 = paramBundle.getString("error_description");
    }
    return str1;
  }
  
  String a()
  {
    return "katana_proxy_auth";
  }
  
  boolean a(int paramInt1, int paramInt2, Intent paramIntent)
  {
    LoginClient.Request localRequest = b.c();
    if (paramIntent == null)
    {
      paramIntent = LoginClient.Result.a(localRequest, "Operation canceled");
      if (paramIntent == null) {
        break label78;
      }
      b.a(paramIntent);
    }
    for (;;)
    {
      return true;
      if (paramInt2 == 0)
      {
        paramIntent = b(localRequest, paramIntent);
        break;
      }
      if (paramInt2 != -1)
      {
        paramIntent = LoginClient.Result.a(localRequest, "Unexpected resultCode from authorization.", null);
        break;
      }
      paramIntent = a(localRequest, paramIntent);
      break;
      label78:
      b.h();
    }
  }
  
  protected boolean a(Intent paramIntent, int paramInt)
  {
    if (paramIntent == null) {
      return false;
    }
    try
    {
      b.a().startActivityForResult(paramIntent, paramInt);
      return true;
    }
    catch (ActivityNotFoundException paramIntent) {}
    return false;
  }
  
  boolean a(LoginClient.Request paramRequest)
  {
    String str = LoginClient.l();
    paramRequest = ac.a(b.b(), paramRequest.d(), paramRequest.a(), str, paramRequest.f(), paramRequest.g(), paramRequest.c());
    a("e2e", str);
    return a(paramRequest, LoginClient.d());
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    super.writeToParcel(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.KatanaProxyLoginMethodHandler
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */