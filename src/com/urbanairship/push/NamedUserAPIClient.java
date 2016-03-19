package com.urbanairship.push;

import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.http.Request;
import com.urbanairship.http.RequestFactory;
import com.urbanairship.http.Response;
import java.net.MalformedURLException;
import java.net.URL;
import org.json.JSONObject;

class NamedUserAPIClient
{
  static final String CHANNEL_KEY = "channel_id";
  static final String DEVICE_TYPE_KEY = "device_type";
  static final String NAMED_USER_ID_KEY = "named_user_id";
  static final String NAMED_USER_PATH = "api/named_users";
  private final RequestFactory requestFactory;
  protected final String urlString;
  
  NamedUserAPIClient()
  {
    this(new RequestFactory());
  }
  
  NamedUserAPIClient(RequestFactory paramRequestFactory)
  {
    requestFactory = paramRequestFactory;
    urlString = (sharedgetAirshipConfigOptionshostURL + "api/named_users");
  }
  
  private Response request(URL paramURL, String paramString)
  {
    String str1 = UAirship.shared().getAirshipConfigOptions().getAppKey();
    String str2 = UAirship.shared().getAirshipConfigOptions().getAppSecret();
    paramURL = requestFactory.createRequest("POST", paramURL).setCredentials(str1, str2).setRequestBody(paramString, "application/json").setHeader("Accept", "application/vnd.urbanairship+json; version=3;").execute();
    if (paramURL == null)
    {
      Logger.error("Failed to receive a response for named user.");
      return paramURL;
    }
    Logger.debug("Received a response for named user: " + paramURL);
    return paramURL;
  }
  
  Response associate(String paramString1, String paramString2)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("channel_id", paramString2);
      localJSONObject.put("device_type", getDeviceType());
      localJSONObject.put("named_user_id", paramString1);
      paramString1 = urlString + "/associate";
    }
    catch (Exception paramString1)
    {
      for (;;)
      {
        try
        {
          paramString1 = new URL(paramString1);
          return request(paramString1, localJSONObject.toString());
        }
        catch (MalformedURLException paramString1)
        {
          Logger.error("Invalid hostURL", paramString1);
        }
        paramString1 = paramString1;
        Logger.error("Failed to create associate named user payload as json.", paramString1);
      }
    }
    return null;
  }
  
  Response disassociate(String paramString)
  {
    JSONObject localJSONObject = new JSONObject();
    try
    {
      localJSONObject.put("channel_id", paramString);
      localJSONObject.put("device_type", getDeviceType());
      paramString = urlString + "/disassociate";
    }
    catch (Exception paramString)
    {
      for (;;)
      {
        try
        {
          paramString = new URL(paramString);
          return request(paramString, localJSONObject.toString());
        }
        catch (MalformedURLException paramString)
        {
          Logger.error("Invalid hostURL", paramString);
        }
        paramString = paramString;
        Logger.error("Failed to create disassociate named user payload as json.", paramString);
      }
    }
    return null;
  }
  
  String getDeviceType()
  {
    switch (UAirship.shared().getPlatformType())
    {
    default: 
      return null;
    case 2: 
      return "android";
    }
    return "amazon";
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.NamedUserAPIClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */