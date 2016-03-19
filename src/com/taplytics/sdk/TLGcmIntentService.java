package com.taplytics.sdk;

import android.app.IntentService;
import android.content.Intent;
import com.taplytics.aw;
import com.taplytics.fy;

public class TLGcmIntentService
  extends IntentService
{
  public TLGcmIntentService()
  {
    super("TLGcmIntentService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    fy.e().a(new aw(this, paramIntent, this));
  }
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TLGcmIntentService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */