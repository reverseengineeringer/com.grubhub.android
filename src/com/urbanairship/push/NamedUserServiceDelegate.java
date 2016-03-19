package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import com.urbanairship.BaseIntentService.Delegate;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.http.Response;
import com.urbanairship.util.UAHttpStatusUtil;
import com.urbanairship.util.UAStringUtil;

class NamedUserServiceDelegate
  extends BaseIntentService.Delegate
{
  static final String LAST_UPDATED_TOKEN_KEY = "com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY";
  private final NamedUserAPIClient client;
  private final NamedUser namedUser;
  private final PushManager pushManager;
  
  public NamedUserServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    this(paramContext, paramPreferenceDataStore, new NamedUserAPIClient(), UAirship.shared().getPushManager(), UAirship.shared().getPushManager().getNamedUser());
  }
  
  public NamedUserServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore, NamedUserAPIClient paramNamedUserAPIClient, PushManager paramPushManager, NamedUser paramNamedUser)
  {
    super(paramContext, paramPreferenceDataStore);
    client = paramNamedUserAPIClient;
    namedUser = paramNamedUser;
    pushManager = paramPushManager;
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    if (!paramIntent.getAction().equals("com.urbanairship.push.ACTION_UPDATE_NAMED_USER")) {
      return;
    }
    Object localObject = namedUser.getId();
    String str1 = namedUser.getChangeToken();
    String str2 = getDataStore().getString("com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY", null);
    String str3 = pushManager.getChannelId();
    if ((str1 == null) && (str2 == null))
    {
      Logger.debug("NamedUserServiceDelegate - New or re-install. Skipping.");
      return;
    }
    if ((str1 != null) && (str1.equals(str2)))
    {
      Logger.debug("NamedUserServiceDelegate - named user already updated. Skipping.");
      return;
    }
    if (UAStringUtil.isEmpty(str3))
    {
      Logger.info("The channel ID does not exist. Will retry when channel ID is available.");
      return;
    }
    if (localObject == null) {}
    for (localObject = client.disassociate(str3); (localObject == null) || (UAHttpStatusUtil.inServerErrorRange(((Response)localObject).getStatus())); localObject = client.associate((String)localObject, str3))
    {
      Logger.info("Update named user failed, will retry.");
      retryIntent(paramIntent);
      return;
    }
    if (UAHttpStatusUtil.inSuccessRange(((Response)localObject).getStatus()))
    {
      Logger.info("Update named user succeeded with status: " + ((Response)localObject).getStatus());
      getDataStore().put("com.urbanairship.nameduser.LAST_UPDATED_TOKEN_KEY", str1);
      namedUser.startUpdateTagsService();
      return;
    }
    if (((Response)localObject).getStatus() == 403)
    {
      Logger.info("Update named user failed with status: " + ((Response)localObject).getStatus() + " This action is not allowed when the app is in server-only mode.");
      return;
    }
    Logger.info("Update named user failed with status: " + ((Response)localObject).getStatus());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.NamedUserServiceDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */