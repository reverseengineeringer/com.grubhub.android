package com.braintreepayments.api.models;

import android.content.Context;
import com.google.gson.Gson;
import com.google.gson.annotations.SerializedName;

public class b
{
  @SerializedName("analytics")
  public c[] a;
  @SerializedName("_meta")
  public d b;
  
  public b(Context paramContext, String paramString1, String paramString2)
  {
    a = new c[] { new c(this, paramString1) };
    b = new d(this, paramContext, paramString2);
  }
  
  public String a()
  {
    return new Gson().toJson(this);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.models.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */