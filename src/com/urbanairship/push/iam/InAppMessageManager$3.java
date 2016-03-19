package com.urbanairship.push.iam;

import java.util.Iterator;
import java.util.List;

class InAppMessageManager$3
  implements Runnable
{
  InAppMessageManager$3(InAppMessageManager paramInAppMessageManager, InAppMessage paramInAppMessage) {}
  
  public void run()
  {
    synchronized (InAppMessageManager.access$200(this$0))
    {
      Iterator localIterator = InAppMessageManager.access$200(this$0).iterator();
      if (localIterator.hasNext()) {
        ((InAppMessageManager.Listener)localIterator.next()).onPendingMessageAvailable(val$message);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.InAppMessageManager.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */