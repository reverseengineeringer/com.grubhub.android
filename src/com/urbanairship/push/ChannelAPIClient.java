package com.urbanairship.push;

import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.http.Request;
import com.urbanairship.http.RequestFactory;
import com.urbanairship.json.JsonValue;
import java.net.MalformedURLException;
import java.net.URL;

class ChannelAPIClient
{
  static final String CHANNEL_CREATION_PATH = "api/channels/";
  protected URL creationURL;
  private final RequestFactory requestFactory;
  
  ChannelAPIClient()
  {
    this(new RequestFactory());
  }
  
  ChannelAPIClient(RequestFactory paramRequestFactory)
  {
    requestFactory = paramRequestFactory;
    paramRequestFactory = sharedgetAirshipConfigOptionshostURL + "api/channels/";
    try
    {
      creationURL = new URL(paramRequestFactory);
      return;
    }
    catch (MalformedURLException paramRequestFactory)
    {
      creationURL = null;
      Logger.error("ChannelAPIClient - Invalid hostURL    ", paramRequestFactory);
    }
  }
  
  private ChannelResponse requestWithPayload(URL paramURL, String paramString1, String paramString2)
  {
    String str1 = UAirship.shared().getAirshipConfigOptions().getAppKey();
    String str2 = UAirship.shared().getAirshipConfigOptions().getAppSecret();
    paramURL = requestFactory.createRequest(paramString1, paramURL).setCredentials(str1, str2).setRequestBody(paramString2, "application/json").setHeader("Accept", "application/vnd.urbanairship+json; version=3;").execute();
    if (paramURL == null)
    {
      Logger.debug("ChannelAPIClient - Failed to receive channel response.");
      return null;
    }
    Logger.verbose("ChannelAPIClient - Received channel response: " + paramURL);
    return new ChannelResponse(paramURL);
  }
  
  ChannelResponse createChannelWithPayload(ChannelRegistrationPayload paramChannelRegistrationPayload)
  {
    paramChannelRegistrationPayload = paramChannelRegistrationPayload.toJsonValue().toString();
    Logger.verbose("ChannelAPIClient - Creating channel with payload: " + paramChannelRegistrationPayload);
    return requestWithPayload(creationURL, "POST", paramChannelRegistrationPayload);
  }
  
  ChannelResponse updateChannelWithPayload(URL paramURL, ChannelRegistrationPayload paramChannelRegistrationPayload)
  {
    paramChannelRegistrationPayload = paramChannelRegistrationPayload.toJsonValue().toString();
    Logger.verbose("ChannelAPIClient - Updating channel with payload: " + paramChannelRegistrationPayload);
    return requestWithPayload(paramURL, "PUT", paramChannelRegistrationPayload);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.ChannelAPIClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */