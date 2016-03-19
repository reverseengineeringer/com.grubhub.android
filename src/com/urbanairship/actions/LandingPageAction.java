package com.urbanairship.actions;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.AirshipConfigOptions;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonValue;
import com.urbanairship.richpush.RichPushInbox;
import com.urbanairship.richpush.RichPushManager;
import com.urbanairship.richpush.RichPushMessage;
import com.urbanairship.util.UAStringUtil;
import com.urbanairship.util.UriUtils;
import com.urbanairship.widget.UAWebView;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;

public class LandingPageAction
  extends Action
{
  public static final String CACHE_ON_RECEIVE_KEY = "cache_on_receive";
  public static final String DEFAULT_REGISTRY_NAME = "landing_page_action";
  public static final String DEFAULT_REGISTRY_SHORT_NAME = "^p";
  public static final String SHOW_LANDING_PAGE_INTENT_ACTION = "com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION";
  public static final String URL_KEY = "url";
  
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    switch (3.$SwitchMap$com$urbanairship$actions$Situation[paramActionArguments.getSituation().ordinal()])
    {
    }
    do
    {
      return false;
    } while (parseUri(paramActionArguments) == null);
    return true;
  }
  
  protected Uri parseUri(ActionArguments paramActionArguments)
  {
    Object localObject;
    if (paramActionArguments.getValue().getMap() != null)
    {
      paramActionArguments = paramActionArguments.getValue().getMap().opt("url").getString();
      if (paramActionArguments != null) {
        break label45;
      }
      localObject = null;
    }
    for (;;)
    {
      return (Uri)localObject;
      paramActionArguments = paramActionArguments.getValue().getString();
      break;
      label45:
      localObject = UriUtils.parse(paramActionArguments);
      if (UAStringUtil.isEmpty(((Uri)localObject).toString())) {
        return null;
      }
      paramActionArguments = (ActionArguments)localObject;
      if ("u".equals(((Uri)localObject).getScheme())) {}
      try
      {
        paramActionArguments = URLEncoder.encode(((Uri)localObject).getSchemeSpecificPart(), "UTF-8");
        localObject = UAirship.shared().getAirshipConfigOptions();
        paramActionArguments = Uri.parse(landingPageContentURL + ((AirshipConfigOptions)localObject).getAppKey() + "/" + paramActionArguments);
        localObject = paramActionArguments;
        if (UAStringUtil.isEmpty(paramActionArguments.getScheme())) {
          return Uri.parse("https://" + paramActionArguments);
        }
      }
      catch (UnsupportedEncodingException paramActionArguments)
      {
        Logger.warn("LandingPageAction - Unable to decode " + ((Uri)localObject).getSchemeSpecificPart());
      }
    }
    return null;
  }
  
  public ActionResult perform(final ActionArguments paramActionArguments)
  {
    final Uri localUri = parseUri(paramActionArguments);
    switch (3.$SwitchMap$com$urbanairship$actions$Situation[paramActionArguments.getSituation().ordinal()])
    {
    default: 
      paramActionArguments = new Intent("com.urbanairship.actions.SHOW_LANDING_PAGE_INTENT_ACTION", localUri).addFlags(805306368).setPackage(UAirship.getPackageName());
      new Handler(Looper.getMainLooper()).post(new Runnable()
      {
        public void run()
        {
          try
          {
            UAirship.getApplicationContext().startActivity(paramActionArguments);
            return;
          }
          catch (ActivityNotFoundException localActivityNotFoundException)
          {
            Logger.error("Unable to view a landing page for uri " + localUri + ". The landing page's" + "intent filter is missing the scheme: " + localUri.getScheme());
          }
        }
      });
    }
    for (;;)
    {
      return ActionResult.newEmptyResult();
      if (shouldCacheOnReceive(paramActionArguments)) {
        new Handler(Looper.getMainLooper()).postAtFrontOfQueue(new Runnable()
        {
          public void run()
          {
            UAWebView localUAWebView = new UAWebView(UAirship.getApplicationContext());
            if (localUri.getScheme().equalsIgnoreCase("message"))
            {
              String str = localUri.getSchemeSpecificPart();
              RichPushMessage localRichPushMessage = UAirship.shared().getRichPushManager().getRichPushInbox().getMessage(str);
              if (localRichPushMessage != null)
              {
                localUAWebView.loadRichPushMessage(localRichPushMessage);
                return;
              }
              Logger.debug("LandingPageAction - Message " + str + " not found.");
              return;
            }
            localUAWebView.loadUrl(localUri.toString());
          }
        });
      }
    }
  }
  
  protected boolean shouldCacheOnReceive(ActionArguments paramActionArguments)
  {
    boolean bool = false;
    if (paramActionArguments.getValue().getMap() != null) {
      bool = paramActionArguments.getValue().getMap().opt("cache_on_receive").getBoolean(false);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.LandingPageAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */