package com.braintreepayments.api.models;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.braintreepayments.api.exceptions.ErrorWithResponse.BraintreeError;
import com.braintreepayments.api.exceptions.ErrorWithResponse.BraintreeErrors;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import org.json.JSONException;
import org.json.JSONObject;

public class ThreeDSecureAuthenticationResponse
  implements Parcelable
{
  public static final Parcelable.Creator<ThreeDSecureAuthenticationResponse> CREATOR = new Parcelable.Creator()
  {
    public ThreeDSecureAuthenticationResponse a(Parcel paramAnonymousParcel)
    {
      return new ThreeDSecureAuthenticationResponse(paramAnonymousParcel, null);
    }
    
    public ThreeDSecureAuthenticationResponse[] a(int paramAnonymousInt)
    {
      return new ThreeDSecureAuthenticationResponse[paramAnonymousInt];
    }
  };
  @SerializedName("card")
  private Card a;
  @SerializedName("success")
  private boolean b;
  @SerializedName("errors")
  private ErrorWithResponse.BraintreeErrors c;
  @SerializedName("exception")
  private String d;
  
  public ThreeDSecureAuthenticationResponse() {}
  
  private ThreeDSecureAuthenticationResponse(Parcel paramParcel)
  {
    if (paramParcel.readByte() != 0) {}
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      a = ((Card)paramParcel.readParcelable(Card.class.getClassLoader()));
      c = ((ErrorWithResponse.BraintreeErrors)paramParcel.readParcelable(ErrorWithResponse.BraintreeError.class.getClassLoader()));
      d = paramParcel.readString();
      return;
    }
  }
  
  public static ThreeDSecureAuthenticationResponse a(String paramString)
  {
    ThreeDSecureAuthenticationResponse localThreeDSecureAuthenticationResponse = new ThreeDSecureAuthenticationResponse();
    Gson localGson = new Gson();
    try
    {
      JSONObject localJSONObject = new JSONObject(paramString);
      Card localCard = (Card)localGson.fromJson(localJSONObject.getJSONObject("paymentMethod").toString(), Card.class);
      localCard.a((ThreeDSecureInfo)localGson.fromJson(localJSONObject.getJSONObject("threeDSecureInfo").toString(), ThreeDSecureInfo.class));
      a = localCard;
      b = localJSONObject.getBoolean("success");
      c = ((ErrorWithResponse.BraintreeErrors)localGson.fromJson(paramString, ErrorWithResponse.BraintreeErrors.class));
      return localThreeDSecureAuthenticationResponse;
    }
    catch (JSONException localJSONException)
    {
      for (;;)
      {
        b = false;
      }
    }
  }
  
  public static boolean a(Intent paramIntent)
  {
    return paramIntent.hasExtra("com.braintreepayments.api.EXTRA_THREE_D_SECURE_RESULT");
  }
  
  public static ThreeDSecureAuthenticationResponse b(String paramString)
  {
    ThreeDSecureAuthenticationResponse localThreeDSecureAuthenticationResponse = new ThreeDSecureAuthenticationResponse();
    b = false;
    d = paramString;
    return localThreeDSecureAuthenticationResponse;
  }
  
  public boolean a()
  {
    return b;
  }
  
  public Card b()
  {
    return a;
  }
  
  public ErrorWithResponse.BraintreeErrors c()
  {
    return c;
  }
  
  public String d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (b) {}
    for (byte b1 = 1;; b1 = 0)
    {
      paramParcel.writeByte(b1);
      paramParcel.writeParcelable(a, paramInt);
      paramParcel.writeParcelable(c, paramInt);
      paramParcel.writeString(d);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.ThreeDSecureAuthenticationResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */