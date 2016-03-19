package com.braintreepayments.api.models;

import android.os.Parcelable;
import com.braintreepayments.api.exceptions.i;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class PaymentMethod
  implements Parcelable, Serializable
{
  @SerializedName("nonce")
  protected String a;
  @SerializedName("description")
  protected String b;
  @SerializedName("options")
  protected m c;
  protected transient String d;
  
  public static List<PaymentMethod> g(String paramString)
    throws i
  {
    for (;;)
    {
      ArrayList localArrayList;
      int i;
      JSONObject localJSONObject;
      String str;
      try
      {
        paramString = new JSONObject(paramString).getJSONArray("paymentMethods");
        if (paramString == null) {
          return Collections.emptyList();
        }
        localArrayList = new ArrayList();
        i = 0;
        if (i >= paramString.length()) {
          break label173;
        }
        localJSONObject = paramString.getJSONObject(i);
        str = localJSONObject.getString("type");
        if (str.equals("CreditCard")) {
          localArrayList.add(new Gson().fromJson(localJSONObject.toString(), Card.class));
        } else if (str.equals("PayPalAccount")) {
          localArrayList.add(new Gson().fromJson(localJSONObject.toString(), PayPalAccount.class));
        }
      }
      catch (JSONException paramString)
      {
        throw new i("Parsing server response failed");
      }
      if (str.equals("AndroidPayCard"))
      {
        localArrayList.add(new Gson().fromJson(localJSONObject.toString(), AndroidPayCard.class));
        break label175;
        label173:
        return localArrayList;
      }
      label175:
      i += 1;
    }
  }
  
  public abstract String a();
  
  protected void a(m paramm)
  {
    c = paramm;
  }
  
  public String c()
  {
    return b;
  }
  
  public String d()
  {
    return a;
  }
  
  public String e()
  {
    return d;
  }
  
  public void f(String paramString)
  {
    d = paramString;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.PaymentMethod
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */