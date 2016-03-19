package com.urbanairship.actions;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.richpush.RichPushMessage;

class OverlayRichPushMessageAction$1
  implements Runnable
{
  OverlayRichPushMessageAction$1(OverlayRichPushMessageAction paramOverlayRichPushMessageAction, RichPushMessage paramRichPushMessage) {}
  
  public void run()
  {
    Intent localIntent = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION").setPackage(UAirship.getPackageName()).addFlags(805306368).setData(Uri.fromParts("message", val$message.getMessageId(), null));
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
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.OverlayRichPushMessageAction.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */