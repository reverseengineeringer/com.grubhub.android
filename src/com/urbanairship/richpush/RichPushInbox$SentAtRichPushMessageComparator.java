package com.urbanairship.richpush;

import java.util.Comparator;
import java.util.Date;

class RichPushInbox$SentAtRichPushMessageComparator
  implements Comparator<RichPushMessage>
{
  public int compare(RichPushMessage paramRichPushMessage1, RichPushMessage paramRichPushMessage2)
  {
    return paramRichPushMessage2.getSentDate().compareTo(paramRichPushMessage1.getSentDate());
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.richpush.RichPushInbox.SentAtRichPushMessageComparator
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */