package com.urbanairship.actions;

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

public class OpenRichPushInboxAction
  extends Action
{
  public static final String DEFAULT_REGISTRY_NAME = "open_mc_action";
  public static final String DEFAULT_REGISTRY_SHORT_NAME = "^mc";
  public static final String MESSAGE_ID_PLACEHOLDER = "auto";
  
  private void startInboxActivity(Context paramContext)
  {
    Intent localIntent = new Intent("com.urbanairship.VIEW_RICH_PUSH_INBOX").setPackage(UAirship.getPackageName()).addFlags(805306368);
    if (localIntent.resolveActivity(paramContext.getPackageManager()) == null)
    {
      Logger.error("Unable to view the inbox. Add the intent filter to an activity that can handle viewing the inbox: <intent-filter><action android:name=\"com.urbanairship.VIEW_RICH_PUSH_INBOX\" /><category android:name=\"android.intent.category.DEFAULT\" /></intent-filter>");
      return;
    }
    paramContext.startActivity(localIntent);
  }
  
  private void startInboxMessageActivity(Context paramContext, RichPushMessage paramRichPushMessage)
  {
    paramRichPushMessage = new Intent().setPackage(UAirship.getPackageName()).addFlags(805306368).setData(Uri.fromParts("message", paramRichPushMessage.getMessageId(), null));
    paramRichPushMessage.setAction("com.urbanairship.VIEW_RICH_PUSH_MESSAGE");
    if (paramRichPushMessage.resolveActivity(paramContext.getPackageManager()) == null)
    {
      paramRichPushMessage.setAction("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION");
      if (paramRichPushMessage.resolveActivity(paramContext.getPackageManager()) == null)
      {
        Logger.error("Unable to view the inbox message. Add the intent filter to an activity that can handle viewing an inbox message: <intent-filter><action android:name=\"com.urbanairship.VIEW_RICH_PUSH_MESSAGE\" /><data android:scheme=\"message\"/><category android:name=\"android.intent.category.DEFAULT\" /></intent-filter>");
        return;
      }
    }
    paramContext.startActivity(paramRichPushMessage);
  }
  
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    switch (2.$SwitchMap$com$urbanairship$actions$Situation[paramActionArguments.getSituation().ordinal()])
    {
    default: 
      return false;
    }
    return true;
  }
  
  public ActionResult perform(final ActionArguments paramActionArguments)
  {
    String str = paramActionArguments.getValue().getString();
    if ("auto".equalsIgnoreCase(str))
    {
      PushMessage localPushMessage = (PushMessage)paramActionArguments.getMetadata().getParcelable("com.urbanairship.PUSH_MESSAGE");
      if ((localPushMessage != null) && (localPushMessage.getRichPushMessageId() != null)) {
        paramActionArguments = localPushMessage.getRichPushMessageId();
      }
    }
    for (;;)
    {
      paramActionArguments = UAirship.shared().getRichPushManager().getRichPushInbox().getMessage(paramActionArguments);
      new Handler(Looper.getMainLooper()).post(new Runnable()
      {
        public void run()
        {
          if (paramActionArguments != null)
          {
            OpenRichPushInboxAction.this.startInboxMessageActivity(UAirship.getApplicationContext(), paramActionArguments);
            return;
          }
          OpenRichPushInboxAction.this.startInboxActivity(UAirship.getApplicationContext());
        }
      });
      return ActionResult.newEmptyResult();
      if (paramActionArguments.getMetadata().containsKey("com.urbanairship.RICH_PUSH_ID_METADATA")) {
        paramActionArguments = paramActionArguments.getMetadata().getString("com.urbanairship.RICH_PUSH_ID_METADATA");
      } else {
        paramActionArguments = str;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.OpenRichPushInboxAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */