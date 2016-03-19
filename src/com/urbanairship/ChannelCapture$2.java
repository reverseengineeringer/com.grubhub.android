package com.urbanairship;

import android.content.IntentFilter;
import android.os.Build.VERSION;
import android.support.v4.content.o;

class ChannelCapture$2
  implements Runnable
{
  ChannelCapture$2(ChannelCapture paramChannelCapture) {}
  
  public void run()
  {
    ChannelCapture localChannelCapture = this$0;
    if (Build.VERSION.SDK_INT >= 11) {}
    for (Object localObject = new ChannelCapture.ClipboardHoneyComb(this$0);; localObject = new ChannelCapture.ClipboardFroyo(this$0))
    {
      ChannelCapture.access$102(localChannelCapture, (ChannelCapture.Clipboard)localObject);
      localObject = new IntentFilter();
      ((IntentFilter)localObject).addAction("com.urbanairship.analytics.APP_FOREGROUND");
      o.a(ChannelCapture.access$200(this$0)).a(ChannelCapture.access$300(this$0), (IntentFilter)localObject);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.ChannelCapture.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */