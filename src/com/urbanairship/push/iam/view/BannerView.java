package com.urbanairship.push.iam.view;

import android.content.Context;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.widget.FrameLayout;
import com.urbanairship.R.attr;
import com.urbanairship.push.notifications.NotificationActionButtonGroup;

public class BannerView
  extends FrameLayout
  implements Banner
{
  private final BannerContent content;
  
  public BannerView(Context paramContext)
  {
    this(paramContext, null, R.attr.inAppMessageBannerStyle);
  }
  
  public BannerView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.inAppMessageBannerStyle);
  }
  
  public BannerView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    content = new BannerContent(paramContext, this, paramAttributeSet, paramInt);
    if (getBackground() != null)
    {
      getBackground().setColorFilter(content.getPrimaryColor(), PorterDuff.Mode.MULTIPLY);
      return;
    }
    setBackgroundColor(content.getPrimaryColor());
  }
  
  public void setNotificationActionButtonGroup(NotificationActionButtonGroup paramNotificationActionButtonGroup)
  {
    content.setNotificationActionButtonGroup(paramNotificationActionButtonGroup);
  }
  
  public void setOnActionClickListener(Banner.OnActionClickListener paramOnActionClickListener)
  {
    content.setOnActionClickListener(paramOnActionClickListener);
  }
  
  public void setOnDismissClickListener(Banner.OnDismissClickListener paramOnDismissClickListener)
  {
    content.setOnDismissClickListener(paramOnDismissClickListener);
  }
  
  public void setPrimaryColor(int paramInt)
  {
    if (getBackground() != null) {
      getBackground().setColorFilter(paramInt, PorterDuff.Mode.MULTIPLY);
    }
    for (;;)
    {
      content.setPrimaryColor(paramInt);
      return;
      setBackgroundColor(paramInt);
    }
  }
  
  public void setSecondaryColor(int paramInt)
  {
    content.setSecondaryColor(paramInt);
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    content.setText(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.view.BannerView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */