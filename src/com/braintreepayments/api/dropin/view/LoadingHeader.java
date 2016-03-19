package com.braintreepayments.api.dropin.view;

import android.content.Context;
import android.content.res.Resources;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationSet;
import android.view.animation.DecelerateInterpolator;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.braintreepayments.api.dropin.h;
import com.braintreepayments.api.dropin.i;
import com.braintreepayments.api.dropin.j;
import com.braintreepayments.api.dropin.k;

public class LoadingHeader
  extends RelativeLayout
{
  private SecureLoadingProgressBar a;
  private ImageView b;
  private TextView c;
  private a d;
  
  public LoadingHeader(Context paramContext)
  {
    super(paramContext);
    a(paramContext);
  }
  
  public LoadingHeader(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    a(paramContext);
  }
  
  public LoadingHeader(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    a(paramContext);
  }
  
  private <T extends View> T a(int paramInt)
  {
    return findViewById(paramInt);
  }
  
  private void a(Context paramContext)
  {
    inflate(paramContext, k.bt_loading_header, this);
    a = ((SecureLoadingProgressBar)a(j.bt_header_loading_spinner));
    b = ((ImageView)a(j.bt_header_status_icon));
    c = ((TextView)a(j.bt_header_message));
  }
  
  public void a()
  {
    d = a.LOADING;
    b.setVisibility(8);
    c.setVisibility(8);
    setBackgroundColor(getResources().getColor(h.bt_white));
    a.setVisibility(0);
    setVisibility(0);
  }
  
  public void b()
  {
    d = a.SUCCESS;
    a.setVisibility(8);
    c.setVisibility(8);
    setBackgroundColor(getResources().getColor(h.bt_blue));
    b.setImageResource(i.bt_success);
    b.setVisibility(0);
    setVisibility(0);
  }
  
  public a getCurrentState()
  {
    return d;
  }
  
  public void setError(String paramString)
  {
    d = a.ERROR;
    a.setVisibility(8);
    c.setVisibility(8);
    c.setText(paramString);
    setBackgroundColor(getResources().getColor(h.bt_red));
    b.setImageResource(i.bt_error);
    b.setVisibility(0);
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(0.0F, 1.0F);
    localAlphaAnimation.setInterpolator(new DecelerateInterpolator());
    localAlphaAnimation.setStartOffset(500L);
    localAlphaAnimation.setDuration(200L);
    paramString = new AnimationSet(false);
    paramString.addAnimation(localAlphaAnimation);
    paramString.setRepeatMode(0);
    paramString.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation) {}
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        LoadingHeader.a(LoadingHeader.this).setVisibility(0);
      }
    });
    localAlphaAnimation = new AlphaAnimation(1.0F, 0.0F);
    localAlphaAnimation.setInterpolator(new AccelerateInterpolator());
    localAlphaAnimation.setDuration(500L);
    AnimationSet localAnimationSet = new AnimationSet(false);
    localAnimationSet.addAnimation(localAlphaAnimation);
    localAnimationSet.setRepeatMode(0);
    localAnimationSet.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation)
      {
        LoadingHeader.b(LoadingHeader.this).setVisibility(8);
      }
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
      
      public void onAnimationStart(Animation paramAnonymousAnimation) {}
    });
    b.setAnimation(localAnimationSet);
    c.setAnimation(paramString);
    setVisibility(0);
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.view.LoadingHeader
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */