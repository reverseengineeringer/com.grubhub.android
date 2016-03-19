package com.urbanairship.push;

import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.http.Request;
import com.urbanairship.http.RequestFactory;
import com.urbanairship.http.Response;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonValue;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;

class TagGroupsAPIClient
{
  private static final String ADD_KEY = "add";
  private static final String AMAZON_CHANNEL_KEY = "amazon_channel";
  private static final String ANDROID_CHANNEL_KEY = "android_channel";
  private static final String AUDIENCE_KEY = "audience";
  private static final String CHANNEL_TAGS_PATH = "api/channels/tags/";
  private static final String NAMED_USER_ID_KEY = "named_user_id";
  private static final String NAMED_USER_TAGS_PATH = "api/named_users/tags/";
  private static final String REMOVE_KEY = "remove";
  private final String appKey;
  private final String appSecret;
  private final RequestFactory requestFactory;
  private final String urlString;
  
  TagGroupsAPIClient(AirshipConfigOptions paramAirshipConfigOptions)
  {
    this(paramAirshipConfigOptions, new RequestFactory());
  }
  
  public TagGroupsAPIClient(AirshipConfigOptions paramAirshipConfigOptions, RequestFactory paramRequestFactory)
  {
    requestFactory = paramRequestFactory;
    urlString = hostURL;
    appKey = paramAirshipConfigOptions.getAppKey();
    appSecret = paramAirshipConfigOptions.getAppSecret();
  }
  
  private Response request(URL paramURL, String paramString1, String paramString2, Map<String, Set<String>> paramMap1, Map<String, Set<String>> paramMap2)
  {
    HashMap localHashMap1 = new HashMap();
    HashMap localHashMap2 = new HashMap();
    localHashMap2.put(paramString1, paramString2);
    localHashMap1.put("audience", localHashMap2);
    if (!paramMap1.isEmpty()) {
      localHashMap1.put("add", paramMap1);
    }
    if (!paramMap2.isEmpty()) {
      localHashMap1.put("remove", paramMap2);
    }
    try
    {
      paramString1 = JsonValue.wrap(localHashMap1).toString();
      Logger.info("Updating tag groups with payload: " + paramString1);
      paramURL = requestFactory.createRequest("POST", paramURL).setCredentials(appKey, appSecret).setRequestBody(paramString1, "application/json").setHeader("Accept", "application/vnd.urbanairship+json; version=3;").execute();
      if (paramURL == null)
      {
        Logger.error("Failed to receive a response for tag groups.");
        return paramURL;
      }
    }
    catch (JsonException paramURL)
    {
      Logger.error("Failed to create channel tag groups payload as json.", paramURL);
      return null;
    }
    Logger.debug("Received a response for tag groups: " + paramURL);
    return paramURL;
  }
  
  String getChannelType()
  {
    switch (UAirship.shared().getPlatformType())
    {
    default: 
      return null;
    case 2: 
      return "android_channel";
    }
    return "amazon_channel";
  }
  
  URL getTagURL(String paramString)
  {
    try
    {
      paramString = new URL(urlString + paramString);
      return paramString;
    }
    catch (MalformedURLException paramString)
    {
      Logger.error("Invalid tag URL.", paramString);
    }
    return null;
  }
  
  Response updateChannelTags(String paramString, Map<String, Set<String>> paramMap1, Map<String, Set<String>> paramMap2)
  {
    URL localURL = getTagURL("api/channels/tags/");
    if (localURL == null)
    {
      Logger.error("The channel tags URL cannot be null.");
      return null;
    }
    if ((paramMap1.isEmpty()) && (paramMap2.isEmpty()))
    {
      Logger.error("Both addTags and removeTags cannot be empty.");
      return null;
    }
    return request(localURL, getChannelType(), paramString, paramMap1, paramMap2);
  }
  
  Response updateNamedUserTags(String paramString, Map<String, Set<String>> paramMap1, Map<String, Set<String>> paramMap2)
  {
    URL localURL = getTagURL("api/named_users/tags/");
    if (localURL == null)
    {
      Logger.error("The named user tags URL cannot be null.");
      return null;
    }
    if ((paramMap1.isEmpty()) && (paramMap2.isEmpty()))
    {
      Logger.error("Both addTags and removeTags cannot be empty.");
      return null;
    }
    return request(localURL, "named_user_id", paramString, paramMap1, paramMap2);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.TagGroupsAPIClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */