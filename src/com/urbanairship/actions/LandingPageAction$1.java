package com.urbanairship.actions;

import android.net.Uri;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.richpush.RichPushInbox;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushMessage;
import com.urbanairship.widget.UAWebView;

class LandingPageAction$1
  implements Runnable
{
  LandingPageAction$1(LandingPageAction paramLandingPageAction, Uri paramUri) {}
  
  public void run()
  {
    UAWebView localUAWebView = new UAWebView(UAirship.getApplicationContext());
    if (val$uri.getScheme().equalsIgnoreCase("message"))
    {
      String str = val$uri.getSchemeSpecificPart();
      RichPushMessage localRichPushMessage = UAirship.shared().getRichPushManager().getRichPushInbox().getMessage(str);
      if (localRichPushMessage != null)
      {
        localUAWebView.loadRichPushMessage(localRichPushMessage);
        return;
      }
      Logger.debug("LandingPageAction - Message " + str + " not found.");
      return;
    }
    localUAWebView.loadUrl(val$uri.toString());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.LandingPageAction.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */