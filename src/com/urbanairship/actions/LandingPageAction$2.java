package com.urbanairship.actions;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;

class LandingPageAction$2
  implements Runnable
{
  LandingPageAction$2(LandingPageAction paramLandingPageAction, Intent paramIntent, Uri paramUri) {}
  
  public void run()
  {
    try
    {
      UAirship.getApplicationContext().startActivity(val$actionIntent);
      return;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
      Logger.error("Unable to view a landing page for uri " + val$uri + ". The landing page's" + "intent filter is missing the scheme: " + val$uri.getScheme());
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.LandingPageAction.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */