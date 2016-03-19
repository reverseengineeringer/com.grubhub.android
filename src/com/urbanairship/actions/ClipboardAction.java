package com.urbanairship.actions;

import android.content.ClipData;
import android.content.Context;
import android.os.Build.VERSION;
import android.os.Handler;
import android.os.Looper;
import com.urbanairship.UAirship;
import com.urbanairship.json.JsonMap;
import com.urbanairship.json.JsonValue;

public class ClipboardAction
  extends Action
{
  public static final String DEFAULT_REGISTRY_NAME = "clipboard_action";
  public static final String DEFAULT_REGISTRY_SHORT_NAME = "^c";
  public static final String LABEL_KEY = "label";
  public static final String TEXT_KEY = "text";
  
  public boolean acceptsArguments(ActionArguments paramActionArguments)
  {
    if (paramActionArguments.getSituation() == Situation.PUSH_RECEIVED) {}
    do
    {
      return false;
      if (paramActionArguments.getValue().getMap() != null) {
        return paramActionArguments.getValue().getMap().get("text").isString();
      }
    } while (paramActionArguments.getValue().getString() == null);
    return true;
  }
  
  public ActionResult perform(ActionArguments paramActionArguments)
  {
    final String str2;
    if (paramActionArguments.getValue().getMap() != null) {
      str2 = paramActionArguments.getValue().getMap().get("text").getString();
    }
    for (final String str1 = paramActionArguments.getValue().getMap().get("label").getString();; str1 = null)
    {
      new Handler(Looper.getMainLooper()).post(new Runnable()
      {
        public void run()
        {
          if (Build.VERSION.SDK_INT >= 11)
          {
            ((android.content.ClipboardManager)UAirship.getApplicationContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(str1, str2));
            return;
          }
          ((android.text.ClipboardManager)UAirship.getApplicationContext().getSystemService("clipboard")).setText(str2);
        }
      });
      return ActionResult.newResult(paramActionArguments.getValue());
      str2 = paramActionArguments.getValue().getString();
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ClipboardAction
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */