package com.urbanairship.richpush;

import java.util.Set;

class RichPushInbox$1
  implements Runnable
{
  RichPushInbox$1(RichPushInbox paramRichPushInbox, Set paramSet) {}
  
  public void run()
  {
    RichPushInbox.access$000(this$0).markMessagesRead(val$messageIds);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushInbox.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */