package com.paypal.android.sdk;

import org.json.JSONArray;
import org.json.JSONObject;

public final class fg
  extends fn
{
  final void a(JSONObject paramJSONObject)
  {
    if (ft.c(null)) {
      paramJSONObject.accumulate("invoice_number", null);
    }
    if (ft.c(null)) {
      paramJSONObject.accumulate("custom", null);
    }
    if (ft.c(null)) {
      paramJSONObject.accumulate("soft_descriptor", null);
    }
  }
  
  public final String e()
  {
    throw new NullPointerException();
  }
  
  protected final JSONArray u()
  {
    JSONArray localJSONArray = new JSONArray();
    JSONObject localJSONObject1 = new JSONObject();
    localJSONObject1.accumulate("payer_id", null);
    localJSONObject1.accumulate("credit_card_id", null);
    JSONObject localJSONObject2 = new JSONObject();
    localJSONObject2.accumulate("credit_card_token", localJSONObject1);
    localJSONArray.put(localJSONObject2);
    return localJSONArray;
  }
  
  protected final String v()
  {
    return "credit_card";
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */