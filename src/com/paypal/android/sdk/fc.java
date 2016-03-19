package com.paypal.android.sdk;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public final class fc
  extends fo
{
  private String a;
  private JSONObject b;
  
  private static String a(JSONArray paramJSONArray)
  {
    if (paramJSONArray == null) {}
    for (;;)
    {
      return null;
      try
      {
        paramJSONArray = paramJSONArray.getJSONObject(0);
        if (paramJSONArray != null)
        {
          paramJSONArray = paramJSONArray.getJSONArray("related_resources");
          if (paramJSONArray != null)
          {
            paramJSONArray = paramJSONArray.getJSONObject(0);
            if (paramJSONArray != null)
            {
              JSONObject localJSONObject = paramJSONArray.optJSONObject("authorization");
              if (localJSONObject != null) {
                return localJSONObject.optString("id");
              }
              paramJSONArray = paramJSONArray.optJSONObject("order");
              if (paramJSONArray != null)
              {
                paramJSONArray = paramJSONArray.optString("id");
                return paramJSONArray;
              }
            }
          }
        }
      }
      catch (JSONException paramJSONArray) {}
    }
    return null;
  }
  
  public final String b()
  {
    JSONObject localJSONObject1 = new JSONObject();
    localJSONObject1.accumulate("payment_id", a);
    localJSONObject1.accumulate("session_id", null);
    JSONObject localJSONObject2 = new JSONObject();
    localJSONObject2.accumulate("device_info", ft.a(dd.a().toString()));
    localJSONObject2.accumulate("app_info", ft.a(db.a().toString()));
    localJSONObject2.accumulate("risk_data", ft.a(bf.a().c().toString()));
    localJSONObject1.accumulate("client_info", localJSONObject2);
    return localJSONObject1.toString();
  }
  
  public final void c()
  {
    JSONObject localJSONObject = n();
    try
    {
      b = localJSONObject.getJSONObject("payment");
      b.optString("state");
      a = b.optString("id");
      b.optString("create_time");
      b.optString("intent");
      a(b.getJSONArray("transactions"));
      return;
    }
    catch (JSONException localJSONException)
    {
      d();
    }
  }
  
  public final void d()
  {
    b(n());
  }
  
  public final String e()
  {
    return "{     \"payment\": {         \"id\": \"PAY-6PU626847B294842SKPEWXHY\",         \"transactions\": [             {                 \"amount\": {                     \"total\": \"2.85\",                     \"details\": {                         \"subtotal\": \"2.85\"                     },                     \"currency\": \"USD\"                 },                 \"description\": \"Awesome Sauce\",                 \"related_resources\": [                     {                         \"sale\": {                             \"amount\": {                                 \"total\": \"2.85\",                                 \"currency\": \"USD\"                             },                             \"id\": \"5LR21373K59921925\",                             \"parent_payment\": \"PAY-6PU626847B294842SKPEWXHY\",                             \"update_time\": \"2014-07-18T18:47:06Z\",                             \"state\": \"completed\",                             \"create_time\": \"2014-07-18T18:46:55Z\",                             \"links\": [                                 {                                     \"method\": \"GET\",                                     \"rel\": \"self\",                                     \"href\": \"https://www.stage2std019.stage.\"                                 },                                 {                                     \"method\": \"POST\",                                     \"rel\": \"refund\",                                     \"href\": \"https://www.stage2std019.stage. \"                                 },                                 {                                     \"method\": \"GET\",                                     \"rel\": \"parent_payment\",                                     \"href\": \"https://www.stage2std019.stage.PEWXHY \"                                 }                             ]                         }                     }                 ]             }         ],         \"update_time\": \"2014-07-18T18:47:06Z\",         \"payer\": {             \"payer_info\": {                 \"shipping_address\": {                                      }             },             \"payment_method\": \"paypal\"         },         \"state\": \"approved\",         \"create_time\": \"2014-07-18T18:46:55Z\",         \"links\": [             {                 \"method\": \"GET\",                 \"rel\": \"self\",                 \"href\": \"https://www.stage2std019.stage.paypal.\"             }         ],         \"intent\": \"sale\"     } } ";
  }
  
  public final void m()
  {
    bf.a().g();
  }
  
  public final String u()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */