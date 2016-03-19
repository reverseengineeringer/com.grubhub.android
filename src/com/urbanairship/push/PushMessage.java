package com.urbanairship.push;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.os.Parcelable.Creator;
import com.urbanairship.Logger;
import com.urbanairship.actions.ActionValue;
import com.urbanairship.json.JsonException;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonValue;
import com.urbanairship.push.iam.InAppMessage;
import com.urbanairship.push.iam.InAppMessage.Builder;
import com.urbanairship.util.UAMathUtil;
import com.urbanairship.util.UAStringUtil;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;

public class PushMessage
  implements Parcelable
{
  public static final Parcelable.Creator<PushMessage> CREATOR = new Parcelable.Creator()
  {
    public PushMessage createFromParcel(Parcel paramAnonymousParcel)
    {
      return new PushMessage(paramAnonymousParcel.readBundle());
    }
    
    public PushMessage[] newArray(int paramAnonymousInt)
    {
      return new PushMessage[paramAnonymousInt];
    }
  };
  public static final String EXTRA_ACTIONS = "com.urbanairship.actions";
  public static final String EXTRA_ALERT = "com.urbanairship.push.ALERT";
  public static final String EXTRA_CATEGORY = "com.urbanairship.category";
  public static final String EXTRA_EXPIRATION = "com.urbanairship.push.EXPIRATION";
  public static final String EXTRA_INTERACTIVE_ACTIONS = "com.urbanairship.interactive_actions";
  public static final String EXTRA_INTERACTIVE_TYPE = "com.urbanairship.interactive_type";
  public static final String EXTRA_IN_APP_MESSAGE = "com.urbanairship.in_app";
  public static final String EXTRA_LOCAL_ONLY = "com.urbanairship.local_only";
  static final String EXTRA_PING = "com.urbanairship.push.PING";
  public static final String EXTRA_PRIORITY = "com.urbanairship.priority";
  public static final String EXTRA_PUBLIC_NOTIFICATION = "com.urbanairship.public_notification";
  public static final String EXTRA_PUSH_ID = "com.urbanairship.push.CANONICAL_PUSH_ID";
  public static final String EXTRA_SEND_ID = "com.urbanairship.push.PUSH_ID";
  public static final String EXTRA_STYLE = "com.urbanairship.style";
  public static final String EXTRA_SUMMARY = "com.urbanairship.summary";
  public static final String EXTRA_TITLE = "com.urbanairship.title";
  public static final String EXTRA_VISIBILITY = "com.urbanairship.visibility";
  public static final String EXTRA_WEARABLE = "com.urbanairship.wearable";
  private static final List<String> INBOX_ACTION_NAMES = Arrays.asList(new String[] { "open_mc_action", "^mc", "open_mc_overlay_action", "^mco" });
  static final int MAX_PRIORITY = 2;
  static final int MAX_VISIBILITY = 1;
  static final int MIN_PRIORITY = -2;
  static final int MIN_VISIBILITY = -1;
  static final int VISIBILITY_PUBLIC = 1;
  private final Bundle pushBundle;
  
  public PushMessage(Bundle paramBundle)
  {
    pushBundle = paramBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Map<String, ActionValue> getActions()
  {
    String str = pushBundle.getString("com.urbanairship.actions");
    HashMap localHashMap = new HashMap();
    try
    {
      Object localObject = JsonValue.parseString(str).getMap();
      if (localObject != null)
      {
        localObject = ((JsonMap)localObject).iterator();
        while (((Iterator)localObject).hasNext())
        {
          Map.Entry localEntry = (Map.Entry)((Iterator)localObject).next();
          localHashMap.put(localEntry.getKey(), new ActionValue((JsonValue)localEntry.getValue()));
        }
      }
      if (UAStringUtil.isEmpty(getRichPushMessageId())) {
        return localHashMap;
      }
    }
    catch (JsonException localJsonException)
    {
      Logger.error("Unable to parse action payload: " + str);
      return localHashMap;
    }
    if (Collections.disjoint(localHashMap.keySet(), INBOX_ACTION_NAMES)) {
      localHashMap.put("^mc", ActionValue.wrap(getRichPushMessageId()));
    }
    return localHashMap;
  }
  
  @Deprecated
  public String getActionsPayload()
  {
    return pushBundle.getString("com.urbanairship.actions");
  }
  
  public String getAlert()
  {
    return pushBundle.getString("com.urbanairship.push.ALERT");
  }
  
  public String getCanonicalPushId()
  {
    return pushBundle.getString("com.urbanairship.push.CANONICAL_PUSH_ID");
  }
  
  public String getCategory()
  {
    return pushBundle.getString("com.urbanairship.category");
  }
  
  public InAppMessage getInAppMessage()
  {
    if (pushBundle.containsKey("com.urbanairship.in_app")) {
      try
      {
        Object localObject2 = InAppMessage.parseJson(pushBundle.getString("com.urbanairship.in_app"));
        if (localObject2 == null) {
          return null;
        }
        Object localObject1 = new InAppMessage.Builder((InAppMessage)localObject2).setId(getSendId());
        if ((!UAStringUtil.isEmpty(getRichPushMessageId())) && (Collections.disjoint(((InAppMessage)localObject2).getClickActionValues().keySet(), INBOX_ACTION_NAMES)))
        {
          localObject2 = new HashMap(((InAppMessage)localObject2).getClickActionValues());
          ((HashMap)localObject2).put("^mc", new ActionValue(JsonValue.wrap(getRichPushMessageId(), null)));
          ((InAppMessage.Builder)localObject1).setClickActionValues((Map)localObject2);
        }
        localObject1 = ((InAppMessage.Builder)localObject1).create();
        return (InAppMessage)localObject1;
      }
      catch (JsonException localJsonException)
      {
        Logger.error("PushMessage - unable to create in-app message from push payload", localJsonException);
      }
    }
    return null;
  }
  
  public String getInteractiveActionsPayload()
  {
    return pushBundle.getString("com.urbanairship.interactive_actions");
  }
  
  public String getInteractiveNotificationType()
  {
    return pushBundle.getString("com.urbanairship.interactive_type");
  }
  
  public int getPriority()
  {
    try
    {
      int i = UAMathUtil.constrain(Integer.parseInt(pushBundle.getString("com.urbanairship.priority")), -2, 2);
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 0;
  }
  
  public String getPublicNotificationPayload()
  {
    return pushBundle.getString("com.urbanairship.public_notification");
  }
  
  public Bundle getPushBundle()
  {
    return new Bundle(pushBundle);
  }
  
  public String getRichPushMessageId()
  {
    return pushBundle.getString("_uamid");
  }
  
  public String getSendId()
  {
    return pushBundle.getString("com.urbanairship.push.PUSH_ID");
  }
  
  public String getStylePayload()
  {
    return pushBundle.getString("com.urbanairship.style");
  }
  
  public String getSummary()
  {
    return pushBundle.getString("com.urbanairship.summary");
  }
  
  public String getTitle()
  {
    return pushBundle.getString("com.urbanairship.title");
  }
  
  public int getVisibility()
  {
    try
    {
      int i = UAMathUtil.constrain(Integer.parseInt(pushBundle.getString("com.urbanairship.visibility")), -1, 1);
      return i;
    }
    catch (NumberFormatException localNumberFormatException) {}
    return 1;
  }
  
  public String getWearablePayload()
  {
    return pushBundle.getString("com.urbanairship.wearable");
  }
  
  boolean isExpired()
  {
    String str = pushBundle.getString("com.urbanairship.push.EXPIRATION");
    if (!UAStringUtil.isEmpty(str))
    {
      Logger.debug("Notification expiration time is \"" + str + "\"");
      try
      {
        long l1 = Long.parseLong(str);
        long l2 = System.currentTimeMillis();
        if (l1 * 1000L < l2) {
          return true;
        }
      }
      catch (NumberFormatException localNumberFormatException)
      {
        Logger.debug("Ignoring malformed expiration time: " + localNumberFormatException.getMessage());
      }
    }
    return false;
  }
  
  public boolean isLocalOnly()
  {
    return Boolean.parseBoolean(pushBundle.getString("com.urbanairship.local_only"));
  }
  
  boolean isPing()
  {
    return pushBundle.get("com.urbanairship.push.PING") != null;
  }
  
  public String toString()
  {
    return pushBundle.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeBundle(pushBundle);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.PushMessage
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */