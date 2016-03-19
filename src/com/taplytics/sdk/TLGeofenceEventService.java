package com.taplytics.sdk;

import android.app.IntentService;
import android.content.Intent;
import com.taplytics.az;
import com.taplytics.fy;

public class TLGeofenceEventService
  extends IntentService
{
  public TLGeofenceEventService()
  {
    super("TLGeofenceEventService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    fy.e().a(new az(this, paramIntent));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TLGeofenceEventService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */