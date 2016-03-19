package com.urbanairship.richpush;

import java.util.ArrayList;
import java.util.Iterator;

class RichPushInbox$4
  implements Runnable
{
  RichPushInbox$4(RichPushInbox paramRichPushInbox) {}
  
  public void run()
  {
    synchronized (RichPushInbox.access$100(this$0))
    {
      Iterator localIterator = new ArrayList(RichPushInbox.access$100(this$0)).iterator();
      if (localIterator.hasNext()) {
        ((RichPushInbox.Listener)localIterator.next()).onUpdateInbox();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushInbox.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */