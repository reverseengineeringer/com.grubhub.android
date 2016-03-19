package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import com.urbanairship.BaseIntentService.Delegate;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.http.Response;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonList;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonValue;
import com.urbanairship.util.UAHttpStatusUtil;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

class TagGroupServiceDelegate
  extends BaseIntentService.Delegate
{
  static final String PENDING_CHANNEL_ADD_TAG_GROUPS_KEY = "com.urbanairship.push.PENDING_ADD_TAG_GROUPS";
  static final String PENDING_CHANNEL_REMOVE_TAG_GROUPS_KEY = "com.urbanairship.push.PENDING_REMOVE_TAG_GROUPS";
  static final String PENDING_NAMED_USER_ADD_TAG_GROUPS_KEY = "com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY";
  static final String PENDING_NAMED_USER_REMOVE_TAG_GROUPS_KEY = "com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY";
  private final TagGroupsAPIClient client;
  private final NamedUser namedUser;
  private final PushManager pushManager;
  
  public TagGroupServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    this(paramContext, paramPreferenceDataStore, new TagGroupsAPIClient(UAirship.shared().getAirshipConfigOptions()), UAirship.shared().getPushManager(), UAirship.shared().getPushManager().getNamedUser());
  }
  
  public TagGroupServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore, TagGroupsAPIClient paramTagGroupsAPIClient, PushManager paramPushManager, NamedUser paramNamedUser)
  {
    super(paramContext, paramPreferenceDataStore);
    client = paramTagGroupsAPIClient;
    pushManager = paramPushManager;
    namedUser = paramNamedUser;
  }
  
  private void combineTags(Bundle paramBundle, Map<String, Set<String>> paramMap1, Map<String, Set<String>> paramMap2)
  {
    Iterator localIterator = paramBundle.keySet().iterator();
    label128:
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ArrayList localArrayList = paramBundle.getStringArrayList(str);
      if (localArrayList != null)
      {
        if (paramMap1.containsKey(str)) {
          ((Set)paramMap1.get(str)).addAll(localArrayList);
        }
        for (;;)
        {
          if (!paramMap2.containsKey(str)) {
            break label128;
          }
          ((Set)paramMap2.get(str)).removeAll(localArrayList);
          break;
          paramMap1.put(str, new HashSet(localArrayList));
        }
      }
    }
  }
  
  private Map<String, Set<String>> getPendingTagChanges(String paramString)
  {
    localObject = null;
    try
    {
      JsonValue localJsonValue = JsonValue.parseString(getDataStore().getString(paramString, null));
      paramString = localJsonValue;
    }
    catch (JsonException localJsonException)
    {
      for (;;)
      {
        Logger.error("Unable to parse pending tag groups.", localJsonException);
        getDataStore().remove(paramString);
        paramString = (String)localObject;
      }
    }
    return TagUtils.convertToTagsMap(paramString);
  }
  
  private void logTagGroupResponseIssues(String paramString)
  {
    if (paramString == null) {}
    for (;;)
    {
      return;
      try
      {
        paramString = JsonValue.parseString(paramString);
        if (paramString.isJsonMap())
        {
          if (paramString.getMap().containsKey("warnings"))
          {
            Iterator localIterator = paramString.getMap().get("warnings").getList().iterator();
            while (localIterator.hasNext())
            {
              JsonValue localJsonValue = (JsonValue)localIterator.next();
              Logger.info("Tag Groups warnings: " + localJsonValue);
            }
          }
          if (!paramString.getMap().containsKey("error")) {}
        }
      }
      catch (JsonException paramString)
      {
        Logger.error("Unable to parse tag group response", paramString);
        return;
      }
    }
    Logger.info("Tag Groups error: " + paramString.getMap().get("error"));
  }
  
  private void onClearPendingNamedUserTags()
  {
    getDataStore().remove("com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY");
    getDataStore().remove("com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY");
  }
  
  private void onUpdateTagGroups(Intent paramIntent)
  {
    boolean bool = paramIntent.getAction().equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS");
    String str2;
    if (bool) {
      str2 = "com.urbanairship.push.PENDING_ADD_TAG_GROUPS";
    }
    Map localMap1;
    Map localMap2;
    for (String str1 = "com.urbanairship.push.PENDING_REMOVE_TAG_GROUPS";; str1 = "com.urbanairship.nameduser.PENDING_REMOVE_TAG_GROUPS_KEY")
    {
      localMap1 = getPendingTagChanges(str2);
      localMap2 = getPendingTagChanges(str1);
      localObject = paramIntent.getBundleExtra("com.urbanairship.push.EXTRA_ADD_TAG_GROUPS");
      if (localObject != null)
      {
        combineTags((Bundle)localObject, localMap1, localMap2);
        paramIntent.removeExtra("com.urbanairship.push.EXTRA_ADD_TAG_GROUPS");
      }
      localObject = paramIntent.getBundleExtra("com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS");
      if (localObject != null)
      {
        combineTags((Bundle)localObject, localMap2, localMap1);
        paramIntent.removeExtra("com.urbanairship.push.EXTRA_REMOVE_TAG_GROUPS");
      }
      if ((!localMap1.isEmpty()) || (!localMap2.isEmpty())) {
        break;
      }
      getDataStore().remove(str2);
      getDataStore().remove(str1);
      return;
      str2 = "com.urbanairship.nameduser.PENDING_ADD_TAG_GROUPS_KEY";
    }
    if (bool)
    {
      localObject = pushManager.getChannelId();
      if (localObject == null)
      {
        Logger.debug("Unable to update tag groups until a channel is created. Saved pending tag groups.");
        storePendingTagChanges(str2, localMap1);
        storePendingTagChanges(str1, localMap2);
        return;
      }
    }
    for (Object localObject = client.updateChannelTags((String)localObject, localMap1, localMap2); (localObject == null) || (UAHttpStatusUtil.inServerErrorRange(((Response)localObject).getStatus())); localObject = client.updateNamedUserTags(namedUser.getId(), localMap1, localMap2))
    {
      Logger.info("Failed to update tag groups, will retry. Saved pending tag groups.");
      storePendingTagChanges(str2, localMap1);
      storePendingTagChanges(str1, localMap2);
      retryIntent(paramIntent);
      return;
      if (namedUser.getId() == null)
      {
        Logger.verbose("Failed to update named user tags due to null named user ID. Saved pending tag groups.");
        storePendingTagChanges(str2, localMap1);
        storePendingTagChanges(str1, localMap2);
        return;
      }
    }
    if (UAHttpStatusUtil.inSuccessRange(((Response)localObject).getStatus()))
    {
      Logger.info("Update tag groups succeeded with status: " + ((Response)localObject).getStatus());
      logTagGroupResponseIssues(((Response)localObject).getResponseBody());
      getDataStore().remove(str2);
      getDataStore().remove(str1);
      return;
    }
    Logger.info("Update tag groups failed with status: " + ((Response)localObject).getStatus());
    logTagGroupResponseIssues(((Response)localObject).getResponseBody());
    if ((((Response)localObject).getStatus() == 403) || (((Response)localObject).getStatus() == 400))
    {
      getDataStore().remove(str2);
      getDataStore().remove(str1);
      return;
    }
    storePendingTagChanges(str2, localMap1);
    storePendingTagChanges(str1, localMap2);
  }
  
  private void storePendingTagChanges(String paramString, Map<String, Set<String>> paramMap)
  {
    getDataStore().put(paramString, JsonValue.wrap(paramMap, null));
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    String str = paramIntent.getAction();
    int i = -1;
    switch (str.hashCode())
    {
    }
    for (;;)
    {
      switch (i)
      {
      default: 
        return;
        if (str.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_TAG_GROUPS"))
        {
          i = 0;
          continue;
          if (str.equals("com.urbanairship.push.ACTION_UPDATE_NAMED_USER_TAGS"))
          {
            i = 1;
            continue;
            if (str.equals("com.urbanairship.push.ACTION_CLEAR_PENDING_NAMED_USER_TAGS")) {
              i = 2;
            }
          }
        }
        break;
      }
    }
    onUpdateTagGroups(paramIntent);
    return;
    onClearPendingNamedUserTags();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.TagGroupServiceDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */