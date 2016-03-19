package com.grubhub.AppBaseLibrary.android.views;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.Button;
import android.widget.RelativeLayout;

public abstract class k
  extends RelativeLayout
{
  protected boolean a;
  private l b;
  private GHSTextView c;
  
  public k(Context paramContext)
  {
    super(paramContext);
    a(paramContext, null);
  }
  
  public k(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext, paramAttributeSet);
  }
  
  public k(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext, paramAttributeSet);
  }
  
  protected abstract void a();
  
  protected void a(Context paramContext, AttributeSet paramAttributeSet)
  {
    LayoutInflater.from(paramContext).inflate(2130903216, this, true).setVisibility(8);
    c = ((GHSTextView)findViewById(2131690273));
    ((Button)findViewById(2131690272)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a(k.this, false, new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            if (k.a(k.this) != null) {
              k.a(k.this).a();
            }
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation) {}
        });
        a = false;
      }
    });
    ((Button)findViewById(2131690271)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a(k.this, false, new Animation.AnimationListener()
        {
          public void onAnimationEnd(Animation paramAnonymous2Animation)
          {
            if (k.a(k.this) != null) {
              k.a(k.this).b();
            }
          }
          
          public void onAnimationRepeat(Animation paramAnonymous2Animation) {}
          
          public void onAnimationStart(Animation paramAnonymous2Animation) {}
        });
        a = false;
      }
    });
  }
  
  protected void a(View paramView, boolean paramBoolean, Animation.AnimationListener paramAnimationListener)
  {
    if (paramView != null)
    {
      if (!paramBoolean) {
        break label48;
      }
      if (paramView.getVisibility() != 0)
      {
        paramAnimationListener = AnimationUtils.loadAnimation(paramView.getContext(), 2130968607);
        paramAnimationListener.setInterpolator(new DecelerateInterpolator(2.0F));
        paramView.setAnimation(paramAnimationListener);
        paramView.setVisibility(0);
      }
    }
    label48:
    while (paramView.getVisibility() != 0) {
      return;
    }
    Animation localAnimation = AnimationUtils.loadAnimation(paramView.getContext(), 2130968613);
    localAnimation.setInterpolator(new AccelerateInterpolator(2.0F));
    localAnimation.setAnimationListener(paramAnimationListener);
    paramView.setAnimation(localAnimation);
    paramView.setVisibility(8);
  }
  
  public void b()
  {
    if (!a)
    {
      a(this, true, null);
      a = true;
      a();
    }
  }
  
  public void c()
  {
    if (a)
    {
      a(this, false, null);
      a = false;
    }
  }
  
  public boolean d()
  {
    return a;
  }
  
  public void setListener(l paraml)
  {
    b = paraml;
  }
  
  public void setPopupMsg(String paramString)
  {
    c.setText(paramString);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */