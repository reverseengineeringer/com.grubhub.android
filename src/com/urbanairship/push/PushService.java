package com.urbanairship.push;

import com.urbanairship.BaseIntentService;
import com.urbanairship.BaseIntentService.Delegate;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;

public class PushService
  extends BaseIntentService
{
  static final String ACTION_ADM_REGISTRATION_FINISHED = "com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED";
  static final String ACTION_CLEAR_PENDING_NAMED_USER_TAGS = "com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS";
  static final String ACTION_RECEIVE_ADM_MESSAGE = "com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE";
  static final String ACTION_RECEIVE_GCM_MESSAGE = "com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE";
  static final String ACTION_START_REGISTRATION = "com.urbanairship.push.ACTION_START_REGISTRATION";
  static final String ACTION_UPDATE_CHANNEL_REGISTRATION = "com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION";
  static final String ACTION_UPDATE_CHANNEL_TAG_GROUPS = "com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS";
  static final String ACTION_UPDATE_NAMED_USER = "com.urbanairship.push.ACTION_UPDATE_NAMED_USER";
  static final String ACTION_UPDATE_NAMED_USER_TAGS = "com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS";
  static final String ACTION_UPDATE_PUSH_REGISTRATION = "com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION";
  static final String EXTRA_ADD_TAG_GROUPS = "com.urbanairship.push.EXTRA_ADD_TAG_GROUPS";
  static final String EXTRA_GCM_TOKEN_REFRESH = "com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH";
  static final String EXTRA_INTENT = "com.urbanairship.push.EXTRA_INTENT";
  static final String EXTRA_REMOVE_TAG_GROUPS = "com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS";
  
  public PushService()
  {
    super("PushService");
  }
  
  protected BaseIntentService.Delegate getServiceDelegate(String paramString, PreferenceDataStore paramPreferenceDataStore)
  {
    Logger.verbose("PushService - Service delegate for intent: " + paramString);
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
        if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"))
        {
          i = 0;
          continue;
          if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"))
          {
            i = 1;
            continue;
            if (paramString.equals("com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS"))
            {
              i = 2;
              continue;
              if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_NAMED_USER"))
              {
                i = 3;
                continue;
                if (paramString.equals("com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED"))
                {
                  i = 4;
                  continue;
                  if (paramString.equals("com.urbanairship.push.ACTION_START_REGISTRATION"))
                  {
                    i = 5;
                    continue;
                    if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION"))
                    {
                      i = 6;
                      continue;
                      if (paramString.equals("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"))
                      {
                        i = 7;
                        continue;
                        if (paramString.equals("com.urbanairship.push.ACTION_RECEIVE_ADM_MESSAGE"))
                        {
                          i = 8;
                          continue;
                          if (paramString.equals("com.urbanairship.push.ACTION_RECEIVE_GCM_MESSAGE")) {
                            i = 9;
                          }
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
        break;
      }
    }
    return new TagGroupServiceDelegate(getApplicationContext(), paramPreferenceDataStore);
    return new NamedUserServiceDelegate(getApplicationContext(), paramPreferenceDataStore);
    return new ChannelServiceDelegate(getApplicationContext(), paramPreferenceDataStore);
    return new IncomingPushServiceDelegate(getApplicationContext(), paramPreferenceDataStore);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.PushService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */