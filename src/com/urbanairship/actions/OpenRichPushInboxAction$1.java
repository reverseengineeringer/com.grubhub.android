package com.urbanairship.actions;

import com.urbanairship.UAirship;
import com.urbanairship.richpush.RichPushMessage;

class OpenRichPushInboxAction$1
  implements Runnable
{
  OpenRichPushInboxAction$1(OpenRichPushInboxAction paramOpenRichPushInboxAction, RichPushMessage paramRichPushMessage) {}
  
  public void run()
  {
    if (val$message != null)
    {
      OpenRichPushInboxAction.access$000(this$0, UAirship.getApplicationContext(), val$message);
      return;
    }
    OpenRichPushInboxAction.access$100(this$0, UAirship.getApplicationContext());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.actions.OpenRichPushInboxAction.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */