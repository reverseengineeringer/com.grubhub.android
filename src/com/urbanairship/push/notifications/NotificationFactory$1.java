package com.urbanairship.push.notifications;

import android.support.v4.app.ba;
import android.support.v4.app.bf;
import android.support.v4.app.bh;
import java.util.Iterator;
import java.util.List;

class NotificationFactory$1
  implements bh
{
  NotificationFactory$1(NotificationFactory paramNotificationFactory, List paramList) {}
  
  public bf extend(bf parambf)
  {
    Iterator localIterator = val$androidActions.iterator();
    while (localIterator.hasNext()) {
      parambf.a((ba)localIterator.next());
    }
    return parambf;
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.NotificationFactory.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */