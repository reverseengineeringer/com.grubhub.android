package com.urbanairship.richpush;

import java.util.concurrent.atomic.AtomicInteger;

class RichPushManager$2
  extends RichPushManager.UpdateResultReceiver
{
  RichPushManager$2(RichPushManager paramRichPushManager, int paramInt, RichPushManager.RefreshMessagesCallback paramRefreshMessagesCallback) {}
  
  public void onUpdate(boolean paramBoolean)
  {
    if (RichPushManager.access$000(this$0).compareAndSet(val$requestNumber, 0)) {
      RichPushManager.access$100(this$0, paramBoolean);
    }
    if (val$callback != null) {
      val$callback.onRefreshMessages(paramBoolean);
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushManager.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */