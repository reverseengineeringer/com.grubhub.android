package com.urbanairship.push;

import com.urbanairship.richpush.RichPushManager.RefreshMessagesCallback;
import java.util.concurrent.Semaphore;

class IncomingPushServiceDelegate$1
  implements RichPushManager.RefreshMessagesCallback
{
  IncomingPushServiceDelegate$1(IncomingPushServiceDelegate paramIncomingPushServiceDelegate, Semaphore paramSemaphore) {}
  
  public void onRefreshMessages(boolean paramBoolean)
  {
    val$semaphore.release();
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.IncomingPushServiceDelegate.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */