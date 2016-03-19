package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.widget.Button;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.feedback.b;
import com.grubhub.AppBaseLibrary.android.n;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

public class GHSFeedbackView
  extends k
{
  private b b;
  private f c;
  
  public GHSFeedbackView(Context paramContext)
  {
    super(paramContext);
  }
  
  public GHSFeedbackView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
  }
  
  public GHSFeedbackView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
  }
  
  protected void a()
  {
    h.a().a(new c("in-app feedback", "modal_impression", "give feedback modal step 1", "1"));
  }
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet != null)
    {
      paramAttributeSet = paramContext.obtainStyledAttributes(paramAttributeSet, n.com_grubhub_AppBaseLibrary_android_views_GHSFeedbackView);
      b = b.getMode(paramAttributeSet.getInteger(0, 0));
      paramAttributeSet.recycle();
    }
    for (;;)
    {
      LayoutInflater.from(paramContext).inflate(2130903215, this, true).setVisibility(8);
      ((TextView)findViewById(2131690270)).setText(2131231628);
      ((Button)findViewById(2131690269)).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          a(GHSFeedbackView.this, false, new Animation.AnimationListener()
          {
            public void onAnimationEnd(Animation paramAnonymous2Animation)
            {
              if (GHSFeedbackView.a(GHSFeedbackView.this) != null) {
                GHSFeedbackView.a(GHSFeedbackView.this).c(GHSFeedbackView.b(GHSFeedbackView.this));
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
          a(GHSFeedbackView.this, false, new Animation.AnimationListener()
          {
            public void onAnimationEnd(Animation paramAnonymous2Animation)
            {
              if (GHSFeedbackView.a(GHSFeedbackView.this) != null) {
                GHSFeedbackView.a(GHSFeedbackView.this).d(GHSFeedbackView.b(GHSFeedbackView.this));
              }
            }
            
            public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
            
            public void onAnimationStart(Animation paramAnonymous2Animation) {}
          });
          a = false;
        }
      });
      return;
      b = b.TRAY;
    }
  }
  
  public void setListener(f paramf)
  {
    c = paramf;
  }
  
  public void setMode(b paramb)
  {
    b = paramb;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSFeedbackView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */