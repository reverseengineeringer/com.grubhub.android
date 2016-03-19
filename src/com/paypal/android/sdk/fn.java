package com.paypal.android.sdk;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class fn
  extends fo
{
  private String a;
  
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
              paramJSONArray = paramJSONArray.getJSONObject("authorization");
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
  
  abstract void a(JSONObject paramJSONObject);
  
  public final String b()
  {
    JSONObject localJSONObject1 = new JSONObject();
    localJSONObject1.accumulate("intent", null);
    JSONObject localJSONObject2 = new JSONObject();
    JSONArray localJSONArray = u();
    if (localJSONArray != null) {
      localJSONObject2.accumulate("funding_instruments", localJSONArray);
    }
    localJSONObject2.accumulate("payment_method", v());
    localJSONObject1.accumulate("payer", localJSONObject2);
    new JSONObject();
    throw new NullPointerException();
  }
  
  public final void c()
  {
    JSONObject localJSONObject = n();
    try
    {
      localJSONObject.getString("state");
      a = localJSONObject.optString("id");
      localJSONObject.optString("create_time");
      a(localJSONObject.getJSONArray("transactions"));
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
  
  protected JSONArray u()
  {
    return null;
  }
  
  protected abstract String v();
  
  public final String w()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */