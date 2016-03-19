package com.urbanairship.actions;

import android.os.Bundle;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.analytics.CustomEvent.Builder;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonValue;
import com.urbanairship.push.PushMessage;
import com.urbanairship.richpush.RichPushInbox;
import com.urbanairship.richpush.RichPushManager;

public class AddCustomEventAction
  extends Action
{
  public static final String DEFAULT_REGISTRY_NAME = "add_custom_event_action";
  
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    if (paramActionArguments.getValue().getMap() != null)
    {
      if (paramActionArguments.getValue().getMap().get("event_name") == null)
      {
        Logger.debug("CustomEventAction requires an event name in the event data.");
        return false;
      }
      return true;
    }
    Logger.debug("CustomEventAction requires a map of event data.");
    return false;
  }
  
  public ActionResult perform(ActionArguments paramActionArguments)
  {
    Object localObject2 = paramActionArguments.getValue().getMap();
    Object localObject1 = ((JsonMap)localObject2).opt("event_name").getString();
    String str1 = ((JsonMap)localObject2).opt("event_value").getString();
    double d = ((JsonMap)localObject2).opt("event_value").getDouble(0.0D);
    String str3 = ((JsonMap)localObject2).opt("transaction_id").getString();
    String str2 = ((JsonMap)localObject2).opt("interaction_type").getString();
    localObject2 = ((JsonMap)localObject2).opt("interaction_id").getString();
    localObject1 = new CustomEvent.Builder((String)localObject1).setTransactionId(str3).setInteraction(str2, (String)localObject2).setAttribution((PushMessage)paramActionArguments.getMetadata().getParcelable("com.urbanairship.PUSH_MESSAGE"));
    if (str1 != null) {
      ((CustomEvent.Builder)localObject1).setEventValue(str1);
    }
    for (;;)
    {
      if ((localObject2 == null) && (str2 == null))
      {
        paramActionArguments = paramActionArguments.getMetadata().getString("com.urbanairship.RICH_PUSH_ID_METADATA");
        paramActionArguments = UAirship.shared().getRichPushManager().getRichPushInbox().getMessage(paramActionArguments);
        if (paramActionArguments != null) {
          ((CustomEvent.Builder)localObject1).setInteraction(paramActionArguments);
        }
      }
      ((CustomEvent.Builder)localObject1).addEvent();
      return ActionResult.newEmptyResult();
      ((CustomEvent.Builder)localObject1).setEventValue(d);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.AddCustomEventAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */