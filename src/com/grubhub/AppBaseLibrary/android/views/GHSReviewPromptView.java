package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.Button;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSLocationType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.Locale;

public class GHSReviewPromptView
  extends k
{
  private GHSIPastOrderDataModel b;
  private GHSCreateOrderReviewDataModel.GHSLocationType c;
  private w d;
  private TextView e;
  
  public GHSReviewPromptView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSReviewPromptView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public GHSReviewPromptView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void a()
  {
    h.a().a(new c("submit ratings and reviews", "submit ratings prompt_impression", "restaurant search_modal", "true"));
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    LayoutInflater.from(paramContext).inflate(2130903215, this, true).setVisibility(8);
    e = ((TextView)findViewById(2131690270));
    ((Button)findViewById(2131690269)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a(GHSReviewPromptView.this, false, new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            if (GHSReviewPromptView.a(GHSReviewPromptView.this) != null) {
              GHSReviewPromptView.a(GHSReviewPromptView.this).a(GHSReviewPromptView.b(GHSReviewPromptView.this), GHSReviewPromptView.c(GHSReviewPromptView.this));
            }
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation) {}
        });
        a = false;
      }
    });
    ((Button)findViewById(2131690268)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a(GHSReviewPromptView.this, false, new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            if (GHSReviewPromptView.a(GHSReviewPromptView.this) != null) {
              GHSReviewPromptView.a(GHSReviewPromptView.this).b(GHSReviewPromptView.b(GHSReviewPromptView.this), GHSReviewPromptView.c(GHSReviewPromptView.this));
            }
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation) {}
        });
        a = false;
      }
    });
  }
  
  public void setListener(w paramw)
  {
    d = paramw;
  }
  
  public void setLocationType(GHSCreateOrderReviewDataModel.GHSLocationType paramGHSLocationType)
  {
    c = paramGHSLocationType;
  }
  
  public void setPastOrder(GHSIPastOrderDataModel paramGHSIPastOrderDataModel)
  {
    if (e != null)
    {
      if (paramGHSIPastOrderDataModel == null) {
        break label52;
      }
      e.setText(String.format(Locale.US, getContext().getString(2131231846), new Object[] { paramGHSIPastOrderDataModel.getRestaurantName() }));
    }
    for (;;)
    {
      b = paramGHSIPastOrderDataModel;
      return;
      label52:
      e.setText(null);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSReviewPromptView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */