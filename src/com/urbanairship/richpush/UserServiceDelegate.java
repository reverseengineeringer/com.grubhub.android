package com.urbanairship.richpush;

import android.content.Context;
import android.content.Intent;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.BaseIntentService.Delegate;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.http.Request;
import com.urbanairship.http.RequestFactory;
import com.urbanairship.http.Response;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonValue;
import com.urbanairship.push.PushManager;
import com.urbanairship.util.UAStringUtil;
import java.net.URL;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;

class UserServiceDelegate
  extends BaseIntentService.Delegate
{
  private static final String LAST_UPDATE_TIME = "com.urbanairship.user.LAST_UPDATE_TIME";
  private static final String PAYLOAD_ADD_KEY = "add";
  private static final String PAYLOAD_AMAZON_CHANNELS_KEY = "amazon_channels";
  private static final String PAYLOAD_ANDROID_CHANNELS_KEY = "android_channels";
  private static final String USER_CREATION_PATH = "api/user/";
  static final long USER_UPDATE_INTERVAL_MS = 86400000L;
  private static final String USER_UPDATE_PATH = "api/user/%s/";
  private final UAirship airship;
  private final RequestFactory requestFactory;
  private final RichPushUser user;
  
  UserServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    this(paramContext, paramPreferenceDataStore, new RequestFactory(), UAirship.shared());
  }
  
  UserServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore, RequestFactory paramRequestFactory, UAirship paramUAirship)
  {
    super(paramContext, paramPreferenceDataStore);
    requestFactory = paramRequestFactory;
    airship = paramUAirship;
    user = paramUAirship.getRichPushManager().getRichPushUser();
  }
  
  private String createNewUserPayload(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put(getPayloadChannelsKey(), Arrays.asList(new String[] { paramString }));
    return JsonValue.wrap(localHashMap, JsonValue.NULL).toString();
  }
  
  private String createUpdateUserPayload(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("add", Arrays.asList(new String[] { paramString }));
    paramString = new HashMap();
    paramString.put(getPayloadChannelsKey(), localHashMap);
    return JsonValue.wrap(paramString, JsonValue.NULL).toString();
  }
  
  private boolean createUser()
  {
    String str = null;
    Object localObject2 = airship.getPushManager().getChannelId();
    if (UAStringUtil.isEmpty((String)localObject2))
    {
      Logger.debug("UserServiceDelegate - No Channel. User will be created after channel registrations finishes.");
      return false;
    }
    Object localObject1 = RichPushUpdateService.getUserURL("api/user/", new Object[0]);
    if (localObject1 == null) {
      return false;
    }
    localObject2 = createNewUserPayload((String)localObject2);
    Logger.verbose("UserServiceDelegate - Creating Rich Push user with payload: " + (String)localObject2);
    localObject2 = requestFactory.createRequest("POST", (URL)localObject1).setCredentials(airship.getAirshipConfigOptions().getAppKey(), airship.getAirshipConfigOptions().getAppSecret()).setRequestBody((String)localObject2, "application/json").setHeader("Accept", "application/vnd.urbanairship+json; version=3;").execute();
    if ((localObject2 == null) || (((Response)localObject2).getStatus() != 201))
    {
      Logger.verbose("UserServiceDelegate - Rich Push user creation failed: " + localObject2);
      return false;
    }
    for (;;)
    {
      try
      {
        JsonMap localJsonMap = JsonValue.parseString(((Response)localObject2).getResponseBody()).getMap();
        if (localJsonMap == null) {
          break label316;
        }
        localObject1 = localJsonMap.get("user_id").getString();
        str = localJsonMap.get("password").getString();
        if ((UAStringUtil.isEmpty((String)localObject1)) || (UAStringUtil.isEmpty(str)))
        {
          Logger.error("UserServiceDelegate - Rich Push user creation failed: " + localObject2);
          return false;
        }
      }
      catch (JsonException localJsonException)
      {
        Logger.error("UserServiceDelegate - Unable to parse Rich Push user response: " + localObject2);
        return false;
      }
      Logger.info("Created Rich Push user: " + (String)localObject1);
      getDataStore().put("com.urbanairship.user.LAST_UPDATE_TIME", System.currentTimeMillis());
      getDataStore().remove("com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME");
      user.setUser((String)localObject1, localJsonException);
      return true;
      label316:
      localObject1 = null;
    }
  }
  
  private String getPayloadChannelsKey()
  {
    switch (airship.getPlatformType())
    {
    default: 
      return "android_channels";
    }
    return "amazon_channels";
  }
  
  private boolean updateUser()
  {
    String str = airship.getPushManager().getChannelId();
    if (UAStringUtil.isEmpty(str)) {
      Logger.debug("UserServiceDelegate - No Channel. Skipping Rich Push user update.");
    }
    do
    {
      return false;
      localObject = RichPushUpdateService.getUserURL("api/user/%s/", new Object[] { user.getId() });
    } while (localObject == null);
    str = createUpdateUserPayload(str);
    Logger.verbose("UserServiceDelegate - Updating user with payload: " + str);
    Object localObject = requestFactory.createRequest("POST", (URL)localObject).setCredentials(user.getId(), user.getPassword()).setRequestBody(str, "application/json").setHeader("Accept", "application/vnd.urbanairship+json; version=3;").execute();
    Logger.verbose("UserServiceDelegate - Update Rich Push user response: " + localObject);
    if ((localObject != null) && (((Response)localObject).getStatus() == 200))
    {
      Logger.info("Rich Push user updated.");
      getDataStore().put("com.urbanairship.user.LAST_UPDATE_TIME", System.currentTimeMillis());
      return true;
    }
    getDataStore().put("com.urbanairship.user.LAST_UPDATE_TIME", 0);
    return false;
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (!"com.urbanairship.richpush.USER_UPDATE".equals(paramIntent.getAction())) {}
    long l1;
    long l2;
    do
    {
      return;
      if (!paramIntent.getBooleanExtra("com.urbanairship.richpush.EXTRA_FORCEFULLY", false)) {
        break;
      }
      l1 = getDataStore().getLong("com.urbanairship.user.LAST_UPDATE_TIME", 0L);
      l2 = System.currentTimeMillis();
    } while ((l1 <= l2) && (l1 + 86400000L >= l2));
    if (!RichPushUser.isCreated()) {}
    for (boolean bool = createUser();; bool = updateUser())
    {
      RichPushUpdateService.respond(paramIntent, bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.UserServiceDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */