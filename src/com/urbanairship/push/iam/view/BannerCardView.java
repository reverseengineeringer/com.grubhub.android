package com.urbanairship.push.iam.view;

import android.content.Context;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.support.v7.widget.CardView;
import android.util.AttributeSet;
import com.urbanairship.R.attr;
import com.urbanairship.R.style;
import com.urbanairship.R.styleable;
import com.urbanairship.push.notifications.NotificationActionButtonGroup;

public class BannerCardView
  extends CardView
  implements Banner
{
  private final BannerContent content;
  
  public BannerCardView(Context paramContext)
  {
    this(paramContext, null, R.attr.inAppMessageBannerStyle);
  }
  
  public BannerCardView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, R.attr.inAppMessageBannerStyle);
  }
  
  public BannerCardView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    content = new BannerContent(paramContext, this, paramAttributeSet, paramInt);
    if (paramAttributeSet != null)
    {
      paramContext = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.CardView, paramInt, R.style.InAppMessage_Banner);
      if ((!paramContext.hasValue(R.styleable.CardView_cardBackgroundColor)) && (paramContext.hasValue(R.styleable.CardView_optCardBackgroundColor))) {
        setCardBackgroundColor(paramContext.getInteger(R.styleable.CardView_optCardBackgroundColor, 0));
      }
      if ((!paramContext.hasValue(R.styleable.CardView_cardElevation)) && (paramContext.hasValue(R.styleable.CardView_optCardElevation)))
      {
        float f = paramContext.getDimension(R.styleable.CardView_optCardElevation, 0.0F);
        if (f > getMaxCardElevation()) {
          setMaxCardElevation(f);
        }
        setCardElevation(f);
      }
      if ((!paramContext.hasValue(R.styleable.CardView_cardCornerRadius)) && (paramContext.hasValue(R.styleable.CardView_optCardCornerRadius))) {
        setRadius(paramContext.getDimension(R.styleable.CardView_optCardCornerRadius, 0.0F));
      }
      paramContext.recycle();
    }
    setCardBackgroundColor(content.getPrimaryColor());
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
    setCardBackgroundColor(paramInt);
    content.setPrimaryColor(paramInt);
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
 * Qualified Name:     com.urbanairship.push.iam.view.BannerCardView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */