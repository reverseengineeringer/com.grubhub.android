package com.grubhub.AppBaseLibrary.android.views;

import android.animation.AnimatorInflater;
import android.animation.AnimatorSet;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.FrameLayout;

public class GHSFlipView
  extends FrameLayout
{
  private ViewGroup a;
  private ViewGroup b;
  private boolean c;
  private int d;
  private View.OnClickListener e;
  
  public GHSFlipView(Context paramContext)
  {
    super(paramContext);
    a();
  }
  
  public GHSFlipView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a();
  }
  
  public GHSFlipView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a();
  }
  
  private void a()
  {
    if (!isInEditMode())
    {
      LayoutInflater.from(getContext()).inflate(2130903111, this, true);
      a = ((ViewGroup)findViewById(2131689744));
      b = ((ViewGroup)findViewById(2131689745));
      setOnClickListener(new g(this, null));
      c = true;
    }
  }
  
  public void addView(View paramView)
  {
    if (c)
    {
      if (d == 0)
      {
        a.addView(paramView);
        d += 1;
      }
      while (d != 1) {
        return;
      }
      b.addView(paramView);
      d += 1;
      return;
    }
    super.addView(paramView);
  }
  
  public void addView(View paramView, int paramInt1, int paramInt2)
  {
    if (c)
    {
      if (d == 0)
      {
        a.addView(paramView, paramInt1, paramInt2);
        d += 1;
      }
      while (d != 1) {
        return;
      }
      b.addView(paramView, paramInt1, paramInt2);
      d += 1;
      return;
    }
    super.addView(paramView, paramInt1, paramInt2);
  }
  
  public void addView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    if (c)
    {
      if (d == 0)
      {
        a.addView(paramView, paramLayoutParams);
        d += 1;
      }
      while (d != 1) {
        return;
      }
      b.addView(paramView, paramLayoutParams);
      d += 1;
      return;
    }
    super.addView(paramView, paramLayoutParams);
  }
  
  public void removeView(View paramView)
  {
    if (c)
    {
      if (d == 1)
      {
        a.removeView(paramView);
        d -= 1;
      }
      while (d != 2) {
        return;
      }
      b.removeView(paramView);
      d -= 1;
      return;
    }
    super.removeView(paramView);
  }
  
  public void setFrontVisible(boolean paramBoolean)
  {
    if (paramBoolean) {
      if (a.getAlpha() != 1.0F)
      {
        localAnimatorSet1 = (AnimatorSet)AnimatorInflater.loadAnimator(getContext(), 2131034115);
        localAnimatorSet2 = (AnimatorSet)AnimatorInflater.loadAnimator(getContext(), 2131034114);
        localAnimatorSet1.setTarget(b);
        localAnimatorSet2.setTarget(a);
        localAnimatorSet1.start();
        localAnimatorSet2.start();
      }
    }
    while (b.getAlpha() == 1.0F) {
      return;
    }
    AnimatorSet localAnimatorSet1 = (AnimatorSet)AnimatorInflater.loadAnimator(getContext(), 2131034113);
    AnimatorSet localAnimatorSet2 = (AnimatorSet)AnimatorInflater.loadAnimator(getContext(), 2131034112);
    localAnimatorSet1.setTarget(a);
    localAnimatorSet2.setTarget(b);
    localAnimatorSet1.start();
    localAnimatorSet2.start();
  }
  
  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    if (c)
    {
      e = paramOnClickListener;
      return;
    }
    super.setOnClickListener(paramOnClickListener);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.GHSFlipView
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */