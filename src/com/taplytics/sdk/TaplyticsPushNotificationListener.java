package com.taplytics.sdk;

import org.json.JSONException;
import org.json.JSONObject;

public abstract interface TaplyticsPushNotificationListener
{
  public abstract void pushReceived(JSONObject paramJSONObject)
    throws JSONException;
}

/* Location:
 * Qualified Name:     com.taplytics.sdk.TaplyticsPushNotificationListener
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */