package com.grubhub.AppBaseLibrary.android.views;

import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.view.Display;
import android.view.MotionEvent;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.widget.TextView;

public class e
  extends Dialog
{
  public e(Context paramContext, String paramString1, String paramString2)
  {
    super(paramContext);
    requestWindowFeature(1);
    getWindow().setBackgroundDrawableResource(17170445);
    setContentView(2130903099);
    getWindow().setDimAmount(0.0F);
    setCanceledOnTouchOutside(true);
    findViewById(2131689709).setContentDescription(paramString2);
    ((TextView)findViewById(2131689711)).setText(paramString1);
  }
  
  public void a()
  {
    AlphaAnimation localAlphaAnimation1 = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation1.setDuration(500L);
    localAlphaAnimation1.setStartOffset(0L);
    AlphaAnimation localAlphaAnimation2 = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation2.setDuration(1000L);
    localAlphaAnimation2.setStartOffset(5500L);
    localAlphaAnimation2.setFillAfter(true);
    localAlphaAnimation2.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        dismiss();
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    AnimationSet localAnimationSet = new AnimationSet(true);
    localAnimationSet.addAnimation(localAlphaAnimation1);
    localAnimationSet.addAnimation(localAlphaAnimation2);
    localAlphaAnimation1.setFillAfter(true);
    findViewById(2131689709).startAnimation(localAnimationSet);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    Object localObject = getWindow().getAttributes();
    gravity = 49;
    y = paramInt2;
    localObject = getContext().getResources();
    paramInt2 = getWindow().getWindowManager().getDefaultDisplay().getWidth();
    float f1 = ((Resources)localObject).getDimension(2131427343);
    View localView = findViewById(2131689710);
    float f2 = ((Resources)localObject).getDimension(2131427341);
    float f3 = paramInt1 - (paramInt2 - f1) / 2.0F - f2 / 2.0F;
    if (f3 < 0.0F)
    {
      localView.setX(f2);
      return;
    }
    if (f3 > f1 - f2)
    {
      localView.setX(f1 - f2 * 2.0F);
      return;
    }
    localView.setX(f3);
  }
  
  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    dismiss();
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.views.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */