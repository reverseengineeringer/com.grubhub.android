package com.urbanairship.actions;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import com.urbanairship.Logger;
import com.urbanairship.UAirship;
import com.urbanairship.util.UriUtils;

public class OpenExternalUrlAction
  extends Action
{
  public static final String DEFAULT_REGISTRY_NAME = "open_external_url_action";
  public static final String DEFAULT_REGISTRY_SHORT_NAME = "^u";
  
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    switch (1.$SwitchMap$com$urbanairship$actions$Situation[paramActionArguments.getSituation().ordinal()])
    {
    }
    do
    {
      return false;
    } while (UriUtils.parse(paramActionArguments.getValue().getString()) == null);
    return true;
  }
  
  public ActionResult perform(ActionArguments paramActionArguments)
  {
    Object localObject = UriUtils.parse(paramActionArguments.getValue().getString());
    Logger.info("Opening URI: " + localObject);
    localObject = new Intent("android.intent.action.VIEW", (Uri)localObject);
    ((Intent)localObject).addFlags(268435456);
    UAirship.getApplicationContext().startActivity((Intent)localObject);
    return ActionResult.newResult(paramActionArguments.getValue());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.OpenExternalUrlAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */