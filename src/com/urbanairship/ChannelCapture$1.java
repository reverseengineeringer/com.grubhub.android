package com.urbanairship;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import java.util.concurrent.Executor;

class ChannelCapture$1
  extends BroadcastReceiver
{
  ChannelCapture$1(ChannelCapture paramChannelCapture) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    this$0.executor.execute(new Runnable()
    {
      public void run()
      {
        ChannelCapture.access$000(this$0);
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.ChannelCapture.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */