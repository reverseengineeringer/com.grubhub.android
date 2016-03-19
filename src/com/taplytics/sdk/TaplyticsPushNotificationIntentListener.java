package com.taplytics.sdk;

import android.content.Intent;
import org.json.JSONException;
import org.json.JSONObject;

public abstract interface TaplyticsPushNotificationIntentListener
{
  public abstract Intent setPushNotificationIntent(JSONObject paramJSONObject)
    throws JSONException;
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TaplyticsPushNotificationIntentListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */