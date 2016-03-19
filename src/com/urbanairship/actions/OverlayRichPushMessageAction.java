package com.urbanairship.actions;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.push.PushMessage;
import com.urbanairship.richpush.RichPushInbox;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushMessage;

public class OverlayRichPushMessageAction
  extends Action
{
  public static final String DEFAULT_REGISTRY_NAME = "open_mc_overlay_action";
  public static final String DEFAULT_REGISTRY_SHORT_NAME = "^mco";
  public static final String MESSAGE_ID_PLACEHOLDER = "auto";
  
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    switch (2.$SwitchMap$com$urbanairship$actions$Situation[paramActionArguments.getSituation().ordinal()])
    {
    }
    do
    {
      do
      {
        return false;
      } while (paramActionArguments.getValue().getString() == null);
      if (!"auto".equalsIgnoreCase(paramActionArguments.getValue().getString())) {
        break;
      }
    } while ((!paramActionArguments.getMetadata().containsKey("com.urbanairship.RICH_PUSH_ID_METADATA")) && (!paramActionArguments.getMetadata().containsKey("com.urbanairship.PUSH_MESSAGE")));
    return true;
    return true;
  }
  
  public ActionResult perform(ActionArguments paramActionArguments)
  {
    final Object localObject = paramActionArguments.getValue().getString();
    if (((String)localObject).equalsIgnoreCase("auto"))
    {
      PushMessage localPushMessage = (PushMessage)paramActionArguments.getMetadata().getParcelable("com.urbanairship.PUSH_MESSAGE");
      if ((localPushMessage != null) && (localPushMessage.getRichPushMessageId() != null)) {
        paramActionArguments = localPushMessage.getRichPushMessageId();
      }
    }
    for (;;)
    {
      localObject = UAirship.shared().getRichPushManager().getRichPushInbox().getMessage(paramActionArguments);
      if (localObject == null)
      {
        return ActionResult.newErrorResult(new Exception("Unable to find message with ID " + paramActionArguments));
        if (paramActionArguments.getMetadata().containsKey("com.urbanairship.RICH_PUSH_ID_METADATA")) {
          paramActionArguments = paramActionArguments.getMetadata().getString("com.urbanairship.RICH_PUSH_ID_METADATA");
        }
      }
      else
      {
        new Handler(Looper.getMainLooper()).post(new Runnable()
        {
          public void run()
          {
            Intent localIntent = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION").setPackage(UAirship.getPackageName()).addFlags(805306368).setData(Uri.fromParts("message", localObject.getMessageId(), null));
            try
            {
              UAirship.getApplicationContext().startActivity(localIntent);
              return;
            }
            catch (ActivityNotFoundException localActivityNotFoundException)
            {
              Logger.error("Unable to view the inbox message in a landing page. The landing page activity is either missing in the manifest or does not include the message scheme in its intent filter.");
            }
          }
        });
        return ActionResult.newEmptyResult();
      }
      paramActionArguments = (ActionArguments)localObject;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.OverlayRichPushMessageAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */