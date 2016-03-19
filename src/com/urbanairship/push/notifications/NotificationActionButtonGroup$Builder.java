package com.urbanairship.push.notifications;

import java.util.ArrayList;
import java.util.List;

public class NotificationActionButtonGroup$Builder
{
  private final List<NotificationActionButton> actionButtons = new ArrayList();
  
  public Builder addNotificationActionButton(NotificationActionButton paramNotificationActionButton)
  {
    actionButtons.add(paramNotificationActionButton);
    return this;
  }
  
  public NotificationActionButtonGroup build()
  {
    return new NotificationActionButtonGroup(actionButtons, null);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.notifications.NotificationActionButtonGroup.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */