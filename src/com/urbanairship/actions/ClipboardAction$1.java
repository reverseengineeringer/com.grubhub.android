package com.urbanairship.actions;

import android.content.ClipData;
import android.content.Context;
import android.os.Build.VERSION;
import com.urbanairship.UAirship;

class ClipboardAction$1
  implements Runnable
{
  ClipboardAction$1(ClipboardAction paramClipboardAction, String paramString1, String paramString2) {}
  
  public void run()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      ((android.content.ClipboardManager)UAirship.getApplicationContext().getSystemService("clipboard")).setPrimaryClip(ClipData.newPlainText(val$label, val$text));
      return;
    }
    ((android.text.ClipboardManager)UAirship.getApplicationContext().getSystemService("clipboard")).setText(val$text);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.ClipboardAction.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */