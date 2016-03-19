package com.braintreepayments.api.models;

import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import org.json.JSONException;
import org.json.JSONObject;

public class PayPalAccount
  extends PaymentMethod
  implements Parcelable, Serializable
{
  public static final Parcelable.Creator<PayPalAccount> CREATOR = new Parcelable.Creator()
  {
    public PayPalAccount a(Parcel paramAnonymousParcel)
    {
      return new PayPalAccount(paramAnonymousParcel, null);
    }
    
    public PayPalAccount[] a(int paramAnonymousInt)
    {
      return new PayPalAccount[paramAnonymousInt];
    }
  };
  @SerializedName("consentCode")
  private String e;
  @SerializedName("correlationId")
  private String f;
  @SerializedName("details")
  private PayPalAccount.PayPalDetails g;
  private PostalAddress h;
  
  public PayPalAccount() {}
  
  private PayPalAccount(Parcel paramParcel)
  {
    e = paramParcel.readString();
    f = paramParcel.readString();
    g = ((PayPalAccount.PayPalDetails)paramParcel.readParcelable(PayPalAccount.PayPalDetails.class.getClassLoader()));
    a = paramParcel.readString();
    b = paramParcel.readString();
    c = ((m)paramParcel.readSerializable());
    d = paramParcel.readString();
    h = ((PostalAddress)paramParcel.readParcelable(PostalAddress.class.getClassLoader()));
  }
  
  public static PayPalAccount d(String paramString)
  {
    PayPalAccount localPayPalAccount = (PayPalAccount)new Gson().fromJson(paramString, PayPalAccount.class);
    try
    {
      paramString = new JSONObject(paramString).getJSONObject("details").getJSONObject("payerInfo").getJSONObject("accountAddress").toString();
      h = ((PostalAddress)new Gson().fromJson(paramString, PostalAddress.class));
      return localPayPalAccount;
    }
    catch (JSONException paramString) {}
    return localPayPalAccount;
  }
  
  public String a()
  {
    return "PayPal";
  }
  
  protected void a(String paramString)
  {
    g = new PayPalAccount.PayPalDetails();
    PayPalAccount.PayPalDetails.a(g, paramString);
  }
  
  public String b()
  {
    if (g != null) {
      return PayPalAccount.PayPalDetails.a(g);
    }
    return "";
  }
  
  protected void b(String paramString)
  {
    e = paramString;
  }
  
  public String c()
  {
    if ((TextUtils.equals(super.c(), "PayPal")) && (!TextUtils.isEmpty(b()))) {
      return b();
    }
    return super.c();
  }
  
  protected void c(String paramString)
  {
    f = paramString;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeString(e);
    paramParcel.writeString(f);
    paramParcel.writeParcelable(g, 0);
    paramParcel.writeString(a);
    paramParcel.writeString(b);
    paramParcel.writeSerializable(c);
    paramParcel.writeString(d);
    paramParcel.writeParcelable(h, 0);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.PayPalAccount
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */