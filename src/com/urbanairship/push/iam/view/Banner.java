package com.urbanairship.push.iam.view;

import com.urbanairship.push.notifications.NotificationActionButtonGroup;

public abstract interface Banner
{
  public abstract void setNotificationActionButtonGroup(NotificationActionButtonGroup paramNotificationActionButtonGroup);
  
  public abstract void setOnActionClickListener(Banner.OnActionClickListener paramOnActionClickListener);
  
  public abstract void setOnDismissClickListener(Banner.OnDismissClickListener paramOnDismissClickListener);
  
  public abstract void setPrimaryColor(int paramInt);
  
  public abstract void setSecondaryColor(int paramInt);
  
  public abstract void setText(CharSequence paramCharSequence);
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.view.Banner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */