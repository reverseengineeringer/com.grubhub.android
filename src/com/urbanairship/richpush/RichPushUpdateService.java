package com.urbanairship.richpush;

import android.content.Intent;
import android.os.Bundle;
import android.os.ResultReceiver;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.BaseIntentService;
import com.urbanairship.BaseIntentService.Delegate;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import java.net.MalformedURLException;
import java.net.URL;

public class RichPushUpdateService
  extends BaseIntentService
{
  public static final String ACTION_RICH_PUSH_MESSAGES_UPDATE = "com.urbanairship.richpush.MESSAGES_UPDATE";
  public static final String ACTION_RICH_PUSH_USER_UPDATE = "com.urbanairship.richpush.USER_UPDATE";
  public static final String EXTRA_FORCEFULLY = "com.urbanairship.richpush.EXTRA_FORCEFULLY";
  public static final String EXTRA_RICH_PUSH_RESULT_RECEIVER = "com.urbanairship.richpush.RESULT_RECEIVER";
  static final String LAST_MESSAGE_REFRESH_TIME = "com.urbanairship.user.LAST_MESSAGE_REFRESH_TIME";
  public static final int STATUS_RICH_PUSH_UPDATE_ERROR = 1;
  public static final int STATUS_RICH_PUSH_UPDATE_SUCCESS = 0;
  
  public RichPushUpdateService()
  {
    super("RichPushUpdateService");
  }
  
  static URL getUserURL(String paramString, Object... paramVarArgs)
  {
    String str = sharedgetAirshipConfigOptionshostURL;
    paramString = String.format(str + paramString, paramVarArgs);
    try
    {
      paramString = new URL(paramString);
      return paramString;
    }
    catch (MalformedURLException paramString)
    {
      Logger.error("Invalid userURL", paramString);
    }
    return null;
  }
  
  static void respond(Intent paramIntent, boolean paramBoolean)
  {
    paramIntent = (ResultReceiver)paramIntent.getParcelableExtra("com.urbanairship.richpush.RESULT_RECEIVER");
    if (paramIntent != null)
    {
      if (paramBoolean) {
        paramIntent.send(0, new Bundle());
      }
    }
    else {
      return;
    }
    paramIntent.send(1, new Bundle());
  }
  
  protected BaseIntentService.Delegate getServiceDelegate(String paramString, PreferenceDataStore paramPreferenceDataStore)
  {
    Logger.verbose("RichPushUpdateService - Service delegate for intent: " + paramString);
    int i = -1;
    switch (paramString.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return null;
        if (paramString.equals("com.urbanairship.richpush.USER_UPDATE"))
        {
          i = 0;
          continue;
          if (paramString.equals("com.urbanairship.richpush.MESSAGES_UPDATE")) {
            i = 1;
          }
        }
        break;
      }
    }
    return new UserServiceDelegate(getApplicationContext(), paramPreferenceDataStore);
    return new InboxServiceDelegate(getApplicationContext(), paramPreferenceDataStore);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushUpdateService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */