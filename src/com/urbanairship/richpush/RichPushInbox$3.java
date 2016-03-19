package com.urbanairship.richpush;

import java.util.Set;

class RichPushInbox$3
  implements Runnable
{
  RichPushInbox$3(RichPushInbox paramRichPushInbox, Set paramSet) {}
  
  public void run()
  {
    RichPushInbox.access$000(this$0).markMessagesDeleted(val$messageIds);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushInbox.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */