package com.braintreepayments.api.models;

import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

public class h
{
  @SerializedName("clientApiUrl")
  private String a;
  @SerializedName("challenges")
  private String[] b;
  @SerializedName("paypalEnabled")
  private boolean c;
  @SerializedName("paypal")
  private k d;
  @SerializedName("androidPay")
  private e e;
  @SerializedName("venmo")
  private String f;
  @SerializedName("merchantId")
  private String g;
  @SerializedName("analytics")
  private a h;
  
  public static h a(String paramString)
  {
    return (h)new Gson().fromJson(paramString, h.class);
  }
  
  private boolean b(String paramString)
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    String[] arrayOfString;
    int j;
    int i;
    if (b != null)
    {
      bool1 = bool2;
      if (b.length > 0)
      {
        arrayOfString = b;
        j = arrayOfString.length;
        i = 0;
      }
    }
    for (;;)
    {
      bool1 = bool2;
      if (i < j)
      {
        if (arrayOfString[i].equals(paramString)) {
          bool1 = true;
        }
      }
      else {
        return bool1;
      }
      i += 1;
    }
  }
  
  public String a()
  {
    return a;
  }
  
  public boolean b()
  {
    return b("cvv");
  }
  
  public boolean c()
  {
    return b("postal_code");
  }
  
  public boolean d()
  {
    return (c) && (d != null);
  }
  
  public k e()
  {
    return d;
  }
  
  public e f()
  {
    if (e == null) {
      return new e();
    }
    return e;
  }
  
  public String g()
  {
    if (f == null) {
      return "off";
    }
    return f;
  }
  
  public String h()
  {
    return g;
  }
  
  public boolean i()
  {
    return (h != null) && (!TextUtils.isEmpty(h.a()));
  }
  
  public a j()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */