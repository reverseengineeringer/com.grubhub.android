package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.util.UAStringUtil;
import java.util.UUID;

public class NamedUser
{
  private static final String CHANGE_TOKEN_KEY = "com.urbanairship.nameduser.CHANGE_TOKEN_KEY";
  private static final int MAX_NAMED_USER_ID_LENGTH = 128;
  private static final String NAMED_USER_ID_KEY = "com.urbanairship.nameduser.NAMED_USER_ID_KEY";
  private final PreferenceDataStore preferenceDataStore;
  
  NamedUser(PreferenceDataStore paramPreferenceDataStore)
  {
    preferenceDataStore = paramPreferenceDataStore;
  }
  
  private void updateChangeToken()
  {
    preferenceDataStore.put("com.urbanairship.nameduser.CHANGE_TOKEN_KEY", UUID.randomUUID().toString());
  }
  
  void disassociateNamedUserIfNull()
  {
    try
    {
      if (UAStringUtil.equals(getId(), null)) {
        setId(null);
      }
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public TagGroupsEditor editTagGroups()
  {
    return new TagGroupsEditor("com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS");
  }
  
  public void forceUpdate()
  {
    Logger.debug("NamedUser - force named user update.");
    updateChangeToken();
    startUpdateService();
  }
  
  String getChangeToken()
  {
    return preferenceDataStore.getString("com.urbanairship.nameduser.CHANGE_TOKEN_KEY", null);
  }
  
  public String getId()
  {
    return preferenceDataStore.getString("com.urbanairship.nameduser.NAMED_USER_ID_KEY", null);
  }
  
  public void setId(String paramString)
  {
    if (paramString != null) {}
    for (;;)
    {
      try
      {
        paramString = paramString.trim();
        if ((UAStringUtil.isEmpty(paramString)) || (paramString.length() > 128))
        {
          Logger.error("Failed to set named user ID. The named user ID must be greater than 0 and less than 129 characters.");
          return;
        }
        if (getId() != null) {
          break label112;
        }
        if (paramString == null)
        {
          bool = true;
          if ((bool) && ((getId() != null) || (getChangeToken() != null))) {
            break label124;
          }
          preferenceDataStore.put("com.urbanairship.nameduser.NAMED_USER_ID_KEY", paramString);
          updateChangeToken();
          Logger.debug("NamedUser - Clear pending named user tags.");
          startClearPendingTagsService();
          Logger.debug("NamedUser - Start service to update named user.");
          startUpdateService();
          continue;
        }
        bool = false;
      }
      finally {}
      continue;
      label112:
      boolean bool = getId().equals(paramString);
      continue;
      label124:
      Logger.debug("NamedUser - Skipping update. Named user ID trimmed already matches existing named user: " + getId());
      continue;
      paramString = null;
    }
  }
  
  void startClearPendingTagsService()
  {
    Context localContext = UAirship.getApplicationContext();
    Intent localIntent = new Intent(localContext, PushService.class);
    localIntent.setAction("com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS");
    localContext.startService(localIntent);
  }
  
  void startUpdateService()
  {
    Context localContext = UAirship.getApplicationContext();
    Intent localIntent = new Intent(localContext, PushService.class);
    localIntent.setAction("com.urbanairship.push.ACTION_UPDATE_NAMED_USER");
    localContext.startService(localIntent);
  }
  
  void startUpdateTagsService()
  {
    Context localContext = UAirship.getApplicationContext();
    Intent localIntent = new Intent(localContext, PushService.class);
    localIntent.setAction("com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS");
    localContext.startService(localIntent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.NamedUser
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */