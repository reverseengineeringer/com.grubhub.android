package com.taplytics;

import android.app.IntentService;
import android.content.Intent;
import android.os.Bundle;
import com.taplytics.sdk.TLGcmBroadcastReceiver;
import com.taplytics.sdk.TLGcmIntentService;
import org.json.JSONObject;

public class aw
  implements Runnable
{
  public aw(TLGcmIntentService paramTLGcmIntentService, Intent paramIntent, IntentService paramIntentService) {}
  
  public void run()
  {
    Object localObject = a.getExtras();
    if ((localObject != null) && (!((Bundle)localObject).isEmpty())) {}
    try
    {
      if ((((Bundle)localObject).containsKey("custom_keys")) && (new JSONObject(((Bundle)localObject).getString("custom_keys")).has("tl_geo")))
      {
        if (ck.c()) {
          ck.a("Geofence push received");
        }
        localObject = new c();
        ((c)localObject).a(new ay(this));
        fy.e().a(null, (c)localObject);
        return;
      }
      if (((Bundle)localObject).containsKey("tl_id")) {
        fy.e().o().a((Bundle)localObject, b);
      }
    }
    catch (Exception localException)
    {
      for (;;)
      {
        ck.b("Sending push notification", localException);
      }
    }
    TLGcmBroadcastReceiver.completeWakefulIntent(a);
  }
}

/* Location:
 * Qualified Name:     com.taplytics.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */