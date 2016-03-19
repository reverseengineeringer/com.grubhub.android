package com.urbanairship.util;

import android.content.pm.ComponentInfo;
import com.urbanairship.CoreActivity;
import com.urbanairship.CoreReceiver;
import com.urbanairship.UrbanAirshipProvider;
import com.urbanairship.actions.ActionActivity;
import com.urbanairship.actions.ActionService;
import com.urbanairship.analytics.EventService;
import com.urbanairship.location.LocationService;
import com.urbanairship.push.PushService;
import com.urbanairship.richpush.RichPushUpdateService;
import java.util.HashMap;

final class ManifestUtils$1
  extends HashMap<Class, ComponentInfo>
{
  ManifestUtils$1()
  {
    put(EventService.class, ManifestUtils.getServiceInfo(EventService.class));
    put(PushService.class, ManifestUtils.getServiceInfo(PushService.class));
    put(RichPushUpdateService.class, ManifestUtils.getServiceInfo(RichPushUpdateService.class));
    put(ActionService.class, ManifestUtils.getServiceInfo(ActionService.class));
    put(LocationService.class, ManifestUtils.getServiceInfo(LocationService.class));
    put(CoreReceiver.class, ManifestUtils.getReceiverInfo(CoreReceiver.class));
    put(UrbanAirshipProvider.class, ManifestUtils.getProviderInfo(UrbanAirshipProvider.getAuthorityString()));
    put(ActionActivity.class, ManifestUtils.getActivityInfo(ActionActivity.class));
    put(CoreActivity.class, ManifestUtils.getActivityInfo(CoreActivity.class));
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.util.ManifestUtils.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */