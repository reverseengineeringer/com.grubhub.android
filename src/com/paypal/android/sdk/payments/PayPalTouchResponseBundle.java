package com.paypal.android.sdk.payments;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.util.Log;
import org.json.JSONException;
import org.json.JSONObject;

public final class PayPalTouchResponseBundle
  implements Parcelable
{
  public static final Parcelable.Creator CREATOR = new ax();
  private static final String a = PayPalTouchResponseBundle.class.getSimpleName();
  private String b;
  private String c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private String j;
  private String k;
  private String l;
  
  private PayPalTouchResponseBundle(Parcel paramParcel)
  {
    this(paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString(), paramParcel.readString());
  }
  
  public PayPalTouchResponseBundle(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, String paramString8, String paramString9, String paramString10, String paramString11)
  {
    b = paramString1;
    c = paramString2;
    d = paramString3;
    e = paramString4;
    f = paramString5;
    g = paramString6;
    h = paramString7;
    i = paramString8;
    j = paramString9;
    k = paramString10;
    l = paramString11;
  }
  
  public final JSONObject a()
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("version", b);
      localJSONObject.put("display_name", c);
      localJSONObject.put("access_token", d);
      localJSONObject.put("response_type", e);
      localJSONObject.put("authorization_code", f);
      localJSONObject.put("expires_in", g);
      localJSONObject.put("scope", h);
      localJSONObject.put("email", i);
      localJSONObject.put("photo_url", j);
      localJSONObject.put("error", k);
      localJSONObject.put("webURL", l);
      return localJSONObject;
    }
    catch (JSONException localJSONException)
    {
      Log.e(a, "error encoding JSON", localJSONException);
    }
    return null;
  }
  
  public final int describeContents()
  {
    return 0;
  }
  
  public final void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(b);
    paramParcel.writeString(c);
    paramParcel.writeString(d);
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeString(g);
    paramParcel.writeString(h);
    paramParcel.writeString(i);
    paramParcel.writeString(j);
    paramParcel.writeString(k);
    paramParcel.writeString(l);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.PayPalTouchResponseBundle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */