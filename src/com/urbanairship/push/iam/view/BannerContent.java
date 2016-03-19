package com.urbanairship.push.iam.view;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.Resources.Theme;
import android.content.res.TypedArray;
import android.graphics.PorterDuff.Mode;
import android.graphics.Typeface;
import android.graphics.drawable.Drawable;
import android.support.v4.content.a;
import android.util.AttributeSet;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageButton;
import android.widget.TextView;
import com.urbanairship.R.color;
import com.urbanairship.R.id;
import com.urbanairship.R.layout;
import com.urbanairship.R.style;
import com.urbanairship.R.styleable;
import com.urbanairship.push.notifications.NotificationActionButton;
import com.urbanairship.push.notifications.NotificationActionButtonGroup;
import com.urbanairship.util.UAStringUtil;
import java.util.Iterator;
import java.util.List;

class BannerContent
  implements Banner
{
  private static final int ACTION_BUTTON_ICON_SIZE_DP = 32;
  private int actionButtonTextAppearance;
  private final ViewGroup actionButtonViewGroup;
  private Banner.OnActionClickListener actionClickListener;
  private final View actionsDividerView;
  private final Context context;
  private final ImageButton dismissButton;
  private Banner.OnDismissClickListener dismissClickListener;
  private final TextView messageTextView;
  private int primaryColor;
  private int secondaryColor;
  private Typeface typeface;
  
  BannerContent(Context paramContext, ViewGroup paramViewGroup, AttributeSet paramAttributeSet, int paramInt)
  {
    context = paramContext;
    paramViewGroup = BannerView.inflate(paramContext, R.layout.ua_iam_content, paramViewGroup);
    messageTextView = ((TextView)paramViewGroup.findViewById(R.id.alert));
    actionsDividerView = paramViewGroup.findViewById(R.id.action_divider);
    actionButtonViewGroup = ((ViewGroup)paramViewGroup.findViewById(R.id.action_buttons));
    dismissButton = ((ImageButton)paramViewGroup.findViewById(R.id.close));
    actionButtonViewGroup.setVisibility(8);
    actionsDividerView.setVisibility(8);
    dismissButton.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (dismissClickListener != null) {
          dismissClickListener.onDismissClick();
        }
      }
    });
    if (paramAttributeSet != null)
    {
      paramViewGroup = paramContext.getTheme().obtainStyledAttributes(paramAttributeSet, R.styleable.BannerView, paramInt, R.style.InAppMessage_Banner);
      paramAttributeSet = paramViewGroup.getString(R.styleable.BannerView_bannerFontPath);
      if (!UAStringUtil.isEmpty(paramAttributeSet)) {
        typeface = Typeface.createFromAsset(paramContext.getAssets(), paramAttributeSet);
      }
      paramInt = paramContext.getResources().getColor(R.color.ua_iam_primary);
      int i = paramContext.getResources().getColor(R.color.ua_iam_secondary);
      setPrimaryColor(paramViewGroup.getColor(R.styleable.BannerView_bannerPrimaryColor, paramInt));
      setSecondaryColor(paramViewGroup.getColor(R.styleable.BannerView_bannerSecondaryColor, i));
      if (!paramViewGroup.getBoolean(R.styleable.BannerView_bannerNoDismissButton, false)) {
        break label260;
      }
      dismissButton.setVisibility(8);
    }
    for (;;)
    {
      actionButtonTextAppearance = paramViewGroup.getResourceId(R.styleable.BannerView_bannerActionButtonTextAppearance, -1);
      paramInt = paramViewGroup.getResourceId(R.styleable.BannerView_bannerTextAppearance, -1);
      applyTextStyle(paramContext, messageTextView, paramInt);
      paramViewGroup.recycle();
      return;
      label260:
      paramAttributeSet = paramViewGroup.getDrawable(R.styleable.BannerView_bannerDismissButtonDrawable);
      if (paramAttributeSet != null) {
        dismissButton.setImageDrawable(paramAttributeSet);
      }
    }
  }
  
  private void applyTextStyle(Context paramContext, TextView paramTextView, int paramInt)
  {
    int i = -1;
    if (paramInt != -1) {
      paramTextView.setTextAppearance(paramContext, paramInt);
    }
    if (typeface != null)
    {
      paramInt = i;
      if (paramTextView.getTypeface() != null) {
        paramInt = paramTextView.getTypeface().getStyle();
      }
      paramTextView.setPaintFlags(paramTextView.getPaintFlags() | 0x1 | 0x80);
      if (paramInt < 0) {
        break label75;
      }
      paramTextView.setTypeface(typeface, paramInt);
    }
    for (;;)
    {
      paramTextView.setTextColor(secondaryColor);
      return;
      label75:
      paramTextView.setTypeface(typeface);
    }
  }
  
  int getPrimaryColor()
  {
    return primaryColor;
  }
  
  public void setNotificationActionButtonGroup(NotificationActionButtonGroup paramNotificationActionButtonGroup)
  {
    actionButtonViewGroup.removeAllViewsInLayout();
    if (paramNotificationActionButtonGroup == null)
    {
      actionButtonViewGroup.setVisibility(8);
      actionsDividerView.setVisibility(8);
    }
    for (;;)
    {
      return;
      actionButtonViewGroup.setVisibility(0);
      actionsDividerView.setVisibility(0);
      LayoutInflater localLayoutInflater = LayoutInflater.from(context);
      int i = (int)TypedValue.applyDimension(1, 32.0F, context.getResources().getDisplayMetrics());
      paramNotificationActionButtonGroup = paramNotificationActionButtonGroup.getNotificationActionButtons().iterator();
      while (paramNotificationActionButtonGroup.hasNext())
      {
        final NotificationActionButton localNotificationActionButton = (NotificationActionButton)paramNotificationActionButtonGroup.next();
        Button localButton = (Button)localLayoutInflater.inflate(R.layout.ua_iam_button, actionButtonViewGroup, false);
        if (localNotificationActionButton.getLabel() > 0) {
          localButton.setText(localNotificationActionButton.getLabel());
        }
        Drawable localDrawable = a.a(context, localNotificationActionButton.getIcon());
        localDrawable.setBounds(0, 0, i, i);
        localDrawable.setColorFilter(secondaryColor, PorterDuff.Mode.MULTIPLY);
        localButton.setCompoundDrawables(localDrawable, null, null, null);
        applyTextStyle(context, localButton, actionButtonTextAppearance);
        localButton.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (actionClickListener != null) {
              actionClickListener.onActionClick(localNotificationActionButton);
            }
          }
        });
        actionButtonViewGroup.addView(localButton);
      }
    }
  }
  
  public void setOnActionClickListener(Banner.OnActionClickListener paramOnActionClickListener)
  {
    actionClickListener = paramOnActionClickListener;
  }
  
  public void setOnDismissClickListener(Banner.OnDismissClickListener paramOnDismissClickListener)
  {
    dismissClickListener = paramOnDismissClickListener;
  }
  
  public void setPrimaryColor(int paramInt)
  {
    primaryColor = paramInt;
  }
  
  public void setSecondaryColor(int paramInt)
  {
    secondaryColor = paramInt;
    actionsDividerView.setBackgroundColor(secondaryColor);
    dismissButton.setColorFilter(secondaryColor, PorterDuff.Mode.MULTIPLY);
    messageTextView.setTextColor(secondaryColor);
    paramInt = 0;
    while (paramInt < actionButtonViewGroup.getChildCount())
    {
      Object localObject = actionButtonViewGroup.getChildAt(paramInt);
      if ((localObject instanceof Button))
      {
        localObject = (Button)localObject;
        Drawable[] arrayOfDrawable = ((Button)localObject).getCompoundDrawables();
        int j = arrayOfDrawable.length;
        int i = 0;
        while (i < j)
        {
          Drawable localDrawable = arrayOfDrawable[i];
          if (localDrawable != null) {
            localDrawable.setColorFilter(secondaryColor, PorterDuff.Mode.MULTIPLY);
          }
          i += 1;
        }
        ((Button)localObject).setTextColor(secondaryColor);
      }
      paramInt += 1;
    }
  }
  
  public void setText(CharSequence paramCharSequence)
  {
    messageTextView.setText(paramCharSequence);
  }
}

/* Location:
 * Qualified Name:     com.urbanairship.push.iam.view.BannerContent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */