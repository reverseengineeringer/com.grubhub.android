package com.urbanairship.push;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageInfo;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.BaseIntentService.Delegate;
import com.urbanairship.Logger;
import com.urbanairship.PreferenceDataStore;
import com.urbanairship.UAirship;
import com.urbanairship.amazon.ADMUtils;
import com.urbanairship.google.PlayServicesUtils;
import com.urbanairship.json.JsonException;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.util.UAHttpStatusUtil;
import com.urbanairship.util.UAStringUtil;
import java.io.IOException;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.Set;

class ChannelServiceDelegate
  extends BaseIntentService.Delegate
{
  private static final long CHANNEL_REREGISTRATION_INTERVAL_MS = 86400000L;
  private static final String LAST_REGISTRATION_PAYLOAD_KEY = "com.urbanairship.push.LAST_REGISTRATION_PAYLOAD";
  private static final String LAST_REGISTRATION_TIME_KEY = "com.urbanairship.push.LAST_REGISTRATION_TIME";
  private static boolean isPushRegistering = false;
  private static boolean isRegistrationStarted = false;
  private final UAirship airship;
  private final ChannelAPIClient channelClient;
  private final PushManager pushManager;
  private final PushPreferences pushPreferences;
  
  public ChannelServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore)
  {
    this(paramContext, paramPreferenceDataStore, new ChannelAPIClient(), UAirship.shared());
  }
  
  public ChannelServiceDelegate(Context paramContext, PreferenceDataStore paramPreferenceDataStore, ChannelAPIClient paramChannelAPIClient, UAirship paramUAirship)
  {
    super(paramContext, paramPreferenceDataStore);
    channelClient = paramChannelAPIClient;
    airship = paramUAirship;
    pushManager = paramUAirship.getPushManager();
    pushPreferences = paramUAirship.getPushManager().getPreferences();
  }
  
  private void createChannel(Intent paramIntent, ChannelRegistrationPayload paramChannelRegistrationPayload)
  {
    ChannelResponse localChannelResponse = channelClient.createChannelWithPayload(paramChannelRegistrationPayload);
    if ((localChannelResponse == null) || (UAHttpStatusUtil.inServerErrorRange(localChannelResponse.getStatus())))
    {
      Logger.error("Channel registration failed, will retry.");
      retryIntent(paramIntent);
      return;
    }
    if ((localChannelResponse.getStatus() == 200) || (localChannelResponse.getStatus() == 201))
    {
      if ((!UAStringUtil.isEmpty(localChannelResponse.getChannelLocation())) && (!UAStringUtil.isEmpty(localChannelResponse.getChannelId())))
      {
        Logger.info("Channel creation succeeded with status: " + localChannelResponse.getStatus() + " channel ID: " + localChannelResponse.getChannelId());
        pushManager.setChannel(localChannelResponse.getChannelId(), localChannelResponse.getChannelLocation());
        setLastRegistrationPayload(paramChannelRegistrationPayload);
        sendRegistrationFinishedBroadcast(true);
        if ((localChannelResponse.getStatus() == 200) && (airship.getAirshipConfigOptions().clearNamedUser)) {
          pushManager.getNamedUser().disassociateNamedUserIfNull();
        }
        pushManager.getNamedUser().startUpdateService();
        pushManager.updateRegistration();
        pushManager.startUpdateTagsService();
        airship.getRichPushManager().updateUser(true);
        return;
      }
      Logger.error("Failed to register with channel ID: " + localChannelResponse.getChannelId() + " channel location: " + localChannelResponse.getChannelLocation());
      sendRegistrationFinishedBroadcast(false);
      return;
    }
    Logger.error("Channel registration failed with status: " + localChannelResponse.getStatus());
    sendRegistrationFinishedBroadcast(false);
  }
  
  private URL getChannelLocationURL()
  {
    String str = pushManager.getChannelLocation();
    if (!UAStringUtil.isEmpty(str)) {
      try
      {
        URL localURL = new URL(str);
        return localURL;
      }
      catch (MalformedURLException localMalformedURLException)
      {
        Logger.error("Channel location from preferences was invalid: " + str, localMalformedURLException);
      }
    }
    return null;
  }
  
  private ChannelRegistrationPayload getLastRegistrationPayload()
  {
    Object localObject = getDataStore().getString("com.urbanairship.push.LAST_REGISTRATION_PAYLOAD", null);
    try
    {
      localObject = ChannelRegistrationPayload.parseJson((String)localObject);
      return (ChannelRegistrationPayload)localObject;
    }
    catch (JsonException localJsonException)
    {
      Logger.error("ChannelServiceDelegate - Failed to parse payload from JSON.", localJsonException);
    }
    return null;
  }
  
  private long getLastRegistrationTime()
  {
    long l = getDataStore().getLong("com.urbanairship.push.LAST_REGISTRATION_TIME", 0L);
    if (l > System.currentTimeMillis())
    {
      getDataStore().put("com.urbanairship.push.LAST_REGISTRATION_TIME", 0);
      return 0L;
    }
    return l;
  }
  
  private boolean isPushRegistrationAllowed()
  {
    switch (airship.getPlatformType())
    {
    default: 
      return false;
    case 2: 
      if (!airship.getAirshipConfigOptions().isTransportAllowed("GCM"))
      {
        Logger.info("Unable to register for push. GCM transport type is not allowed.");
        return false;
      }
      return true;
    }
    if (!airship.getAirshipConfigOptions().isTransportAllowed("ADM"))
    {
      Logger.info("Unable to register for push. ADM transport type is not allowed.");
      return false;
    }
    return true;
  }
  
  private boolean needsPushRegistration()
  {
    if (getPackageInfoversionCode != pushPreferences.getAppVersionCode()) {
      Logger.verbose("ChannelServiceDelegate - Version code changed to " + getPackageInfoversionCode + ". Push re-registration required.");
    }
    do
    {
      do
      {
        return true;
        if (!PushManager.getSecureId(getContext()).equals(pushPreferences.getDeviceId()))
        {
          Logger.verbose("ChannelServiceDelegate - Device ID changed. Push re-registration required.");
          return true;
        }
        switch (airship.getPlatformType())
        {
        default: 
          return false;
        }
      } while ((UAStringUtil.isEmpty(pushManager.getGcmId())) || (UAStringUtil.isEmpty(pushManager.getGcmToken())));
      Set localSet1 = airship.getAirshipConfigOptions().getGCMSenderIds();
      Set localSet2 = pushPreferences.getRegisteredGcmSenderIds();
      if ((localSet2 != null) && (!localSet2.equals(localSet1)))
      {
        Logger.verbose("ChannelServiceDelegate - GCM sender IDs changed. Push re-registration required.");
        return true;
      }
      Logger.verbose("ChannelServiceDelegate - GCM already registered with ID: " + pushManager.getGcmId());
      return false;
    } while (UAStringUtil.isEmpty(pushManager.getAdmId()));
    Logger.verbose("ChannelServiceDelegate - ADM already registered with ID: " + pushManager.getAdmId());
    return false;
  }
  
  private void onAdmRegistrationFinished(Intent paramIntent)
  {
    if ((airship.getPlatformType() != 1) || (!ADMUtils.isADMAvailable()))
    {
      Logger.error("Received intent from invalid transport acting as ADM.");
      return;
    }
    paramIntent = (Intent)paramIntent.getParcelableExtra("com.urbanairship.push.EXTRA_INTENT");
    if (paramIntent == null)
    {
      Logger.error("ChannelServiceDelegate - Received ADM message missing original intent.");
      return;
    }
    if (paramIntent.hasExtra("error")) {
      Logger.error("ADM error occurred: " + paramIntent.getStringExtra("error"));
    }
    for (;;)
    {
      isPushRegistering = false;
      paramIntent = new Intent(getContext(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
      getContext().startService(paramIntent);
      return;
      paramIntent = paramIntent.getStringExtra("registration_id");
      if (paramIntent != null)
      {
        Logger.info("ADM registration successful. Registration ID: " + paramIntent);
        pushManager.setAdmId(paramIntent);
      }
    }
  }
  
  private void onStartRegistration()
  {
    if (isRegistrationStarted) {
      return;
    }
    isRegistrationStarted = true;
    if ((isPushRegistrationAllowed()) && (needsPushRegistration()))
    {
      isPushRegistering = true;
      localIntent = new Intent(getContext(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION");
      getContext().startService(localIntent);
      return;
    }
    Intent localIntent = new Intent(getContext(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
    getContext().startService(localIntent);
  }
  
  private void onUpdateChannelRegistration(Intent paramIntent)
  {
    if (isPushRegistering)
    {
      Logger.verbose("ChannelServiceDelegate - Push registration in progress, skipping registration update.");
      return;
    }
    Logger.verbose("ChannelServiceDelegate - Performing channel registration.");
    ChannelRegistrationPayload localChannelRegistrationPayload = pushManager.getNextChannelRegistrationPayload();
    String str = pushManager.getChannelId();
    URL localURL = getChannelLocationURL();
    if ((localURL != null) && (!UAStringUtil.isEmpty(str)))
    {
      updateChannel(paramIntent, localURL, localChannelRegistrationPayload);
      return;
    }
    createChannel(paramIntent, localChannelRegistrationPayload);
  }
  
  private void onUpdatePushRegistration(Intent paramIntent)
  {
    isPushRegistering = false;
    switch (airship.getPlatformType())
    {
    default: 
      Logger.error("Unknown platform type. Unable to register for push.");
    }
    for (;;)
    {
      if (!isPushRegistering)
      {
        paramIntent = new Intent(getContext(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
        getContext().startService(paramIntent);
      }
      return;
      if (paramIntent.getBooleanExtra("com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH", false))
      {
        pushManager.setGcmToken(null);
        paramIntent.removeExtra("com.urbanairship.push.EXTRA_GCM_TOKEN_REFRESH");
      }
      if (!PlayServicesUtils.isGoogleCloudMessagingDependencyAvailable())
      {
        Logger.error("GCM is unavailable. Unable to register for push notifications. If using the modular Google Play Services dependencies, make sure the application includes the com.google.android.gms:play-services-gcm dependency.");
      }
      else
      {
        try
        {
          if (GCMRegistrar.register()) {
            continue;
          }
          Logger.error("GCM registration failed.");
        }
        catch (IOException localIOException)
        {
          Logger.error("GCM registration failed, will retry. GCM error: " + localIOException.getMessage());
          isPushRegistering = true;
          retryIntent(paramIntent);
        }
        continue;
        if (ADMUtils.isADMSupported())
        {
          ADMUtils.startRegistration(getContext());
          isPushRegistering = true;
        }
        else
        {
          Logger.error("ADM is not supported on this device.");
        }
      }
    }
  }
  
  private void sendRegistrationFinishedBroadcast(boolean paramBoolean)
  {
    Intent localIntent = new Intent("com.urbanairship.push.CHANNEL_UPDATED").putExtra("com.urbanairship.push.EXTRA_CHANNEL_ID", pushManager.getChannelId()).addCategory(UAirship.getPackageName()).setPackage(UAirship.getPackageName());
    if (!paramBoolean) {
      localIntent.putExtra("com.urbanairship.push.EXTRA_ERROR", true);
    }
    getContext().sendBroadcast(localIntent, UAirship.getUrbanAirshipPermission());
  }
  
  private void setLastRegistrationPayload(ChannelRegistrationPayload paramChannelRegistrationPayload)
  {
    getDataStore().put("com.urbanairship.push.LAST_REGISTRATION_PAYLOAD", paramChannelRegistrationPayload);
    getDataStore().put("com.urbanairship.push.LAST_REGISTRATION_TIME", System.currentTimeMillis());
  }
  
  private boolean shouldUpdateRegistration(ChannelRegistrationPayload paramChannelRegistrationPayload)
  {
    ChannelRegistrationPayload localChannelRegistrationPayload = getLastRegistrationPayload();
    long l1 = System.currentTimeMillis();
    long l2 = getLastRegistrationTime();
    return (!paramChannelRegistrationPayload.equals(localChannelRegistrationPayload)) || (l1 - l2 >= 86400000L);
  }
  
  private void updateChannel(Intent paramIntent, URL paramURL, ChannelRegistrationPayload paramChannelRegistrationPayload)
  {
    if (!shouldUpdateRegistration(paramChannelRegistrationPayload))
    {
      Logger.verbose("ChannelServiceDelegate - Channel already up to date.");
      return;
    }
    paramURL = channelClient.updateChannelWithPayload(paramURL, paramChannelRegistrationPayload);
    if ((paramURL == null) || (UAHttpStatusUtil.inServerErrorRange(paramURL.getStatus())))
    {
      Logger.error("Channel registration failed, will retry.");
      retryIntent(paramIntent);
      return;
    }
    if (UAHttpStatusUtil.inSuccessRange(paramURL.getStatus()))
    {
      Logger.info("Channel registration succeeded with status: " + paramURL.getStatus());
      setLastRegistrationPayload(paramChannelRegistrationPayload);
      sendRegistrationFinishedBroadcast(true);
      return;
    }
    if (paramURL.getStatus() == 409)
    {
      pushManager.setChannel(null, null);
      paramIntent = new Intent(getContext(), PushService.class).setAction("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION");
      getContext().startService(paramIntent);
      return;
    }
    Logger.error("Channel registration failed with status: " + paramURL.getStatus());
    sendRegistrationFinishedBroadcast(false);
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
        if (str.equals("com.urbanairship.push.ACTION_START_REGISTRATION"))
        {
          i = 0;
          continue;
          if (str.equals("com.urbanairship.push.ACTION_UPDATE_PUSH_REGISTRATION"))
          {
            i = 1;
            continue;
            if (str.equals("com.urbanairship.push.ACTION_ADM_REGISTRATION_FINISHED"))
            {
              i = 2;
              continue;
              if (str.equals("com.urbanairship.push.ACTION_UPDATE_CHANNEL_REGISTRATION")) {
                i = 3;
              }
            }
          }
        }
        break;
      }
    }
    onStartRegistration();
    return;
    onUpdatePushRegistration(paramIntent);
    return;
    onAdmRegistrationFinished(paramIntent);
    return;
    onUpdateChannelRegistration(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.ChannelServiceDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */