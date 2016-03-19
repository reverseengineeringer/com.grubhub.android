package com.paypal.android.sdk;

import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public abstract class fo
  extends fd
{
  public fo(cl paramcl, ea paramea, ef paramef, String paramString)
  {
    super(paramcl, paramea, paramef, paramString);
  }
  
  protected final void b(JSONObject paramJSONObject)
  {
    Object localObject2 = paramJSONObject.getString("name");
    String str3 = paramJSONObject.getString("message");
    String str2 = "";
    localObject3 = "";
    localObject1 = localObject3;
    String str1 = str2;
    try
    {
      paramJSONObject = paramJSONObject.getJSONArray("details").getJSONObject(0);
      localObject1 = localObject3;
      str1 = str2;
      str2 = paramJSONObject.getString("field");
      localObject1 = localObject3;
      str1 = str2;
      localObject3 = paramJSONObject.getString("issue");
      paramJSONObject = (JSONObject)localObject2;
      localObject1 = localObject3;
      str1 = str2;
      if (((String)localObject2).equals("VALIDATION_ERROR"))
      {
        paramJSONObject = (JSONObject)localObject2;
        localObject1 = localObject3;
        str1 = str2;
        if (str2.contains("amount.currency")) {
          paramJSONObject = "pp_service_error_bad_currency";
        }
      }
      localObject2 = paramJSONObject;
      str1 = str2;
    }
    catch (JSONException paramJSONObject)
    {
      for (;;)
      {
        localObject3 = localObject1;
      }
    }
    a((String)localObject2, str3, "field:" + str1 + ", issue:" + (String)localObject3);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */