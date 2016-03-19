package com.urbanairship.richpush;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;

class RichPushManager$1
  extends BroadcastReceiver
{
  RichPushManager$1(RichPushManager paramRichPushManager) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this$0.refreshMessages();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushManager.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */