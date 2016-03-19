package com.facebook.login;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.facebook.AccessToken;
import com.facebook.internal.al;
import com.facebook.internal.ap;
import java.util.Map;

public class LoginClient$Result
  implements Parcelable
{
  public static final Parcelable.Creator<Result> CREATOR = new Parcelable.Creator()
  {
    public LoginClient.Result a(Parcel paramAnonymousParcel)
    {
      return new LoginClient.Result(paramAnonymousParcel, null);
    }
    
    public LoginClient.Result[] a(int paramAnonymousInt)
    {
      return new LoginClient.Result[paramAnonymousInt];
    }
  };
  final f a;
  final AccessToken b;
  final String c;
  final String d;
  final LoginClient.Request e;
  public Map<String, String> f;
  
  private LoginClient$Result(Parcel paramParcel)
  {
    a = f.valueOf(paramParcel.readString());
    b = ((AccessToken)paramParcel.readParcelable(AccessToken.class.getClassLoader()));
    c = paramParcel.readString();
    d = paramParcel.readString();
    e = ((LoginClient.Request)paramParcel.readParcelable(LoginClient.Request.class.getClassLoader()));
    f = al.a(paramParcel);
  }
  
  LoginClient$Result(LoginClient.Request paramRequest, f paramf, AccessToken paramAccessToken, String paramString1, String paramString2)
  {
    ap.a(paramf, "code");
    e = paramRequest;
    b = paramAccessToken;
    c = paramString1;
    a = paramf;
    d = paramString2;
  }
  
  static Result a(LoginClient.Request paramRequest, AccessToken paramAccessToken)
  {
    return new Result(paramRequest, f.SUCCESS, paramAccessToken, null, null);
  }
  
  static Result a(LoginClient.Request paramRequest, String paramString)
  {
    return new Result(paramRequest, f.CANCEL, null, paramString, null);
  }
  
  static Result a(LoginClient.Request paramRequest, String paramString1, String paramString2)
  {
    return a(paramRequest, paramString1, paramString2, null);
  }
  
  static Result a(LoginClient.Request paramRequest, String paramString1, String paramString2, String paramString3)
  {
    paramString1 = TextUtils.join(": ", al.b(new String[] { paramString1, paramString2 }));
    return new Result(paramRequest, f.ERROR, null, paramString1, paramString3);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(a.name());
    paramParcel.writeParcelable(b, paramInt);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeParcelable(e, paramInt);
    al.a(paramParcel, f);
  }
}

/* Location:
 * Qualified Name:     com.facebook.login.LoginClient.Result
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */