package com.braintreepayments.cardform.view;

import android.animation.ArgbEvaluator;
import android.animation.ValueAnimator;
import android.animation.ValueAnimator.AnimatorUpdateListener;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Build.VERSION;
import android.os.Looper;
import android.text.Editable;
import android.text.TextPaint;
import android.util.AttributeSet;

public class c
  extends b
{
  protected boolean a;
  private TextPaint b = new TextPaint();
  private ValueAnimator c;
  private ValueAnimator d;
  private ValueAnimator e;
  private ValueAnimator f;
  private float g = -1.0F;
  private int h;
  private int i;
  private int j;
  
  public c(Context paramContext)
  {
    super(paramContext);
    d();
  }
  
  public c(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    d();
  }
  
  public c(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    d();
  }
  
  private void d()
  {
    a = f();
    j = getText().length();
    if (Build.VERSION.SDK_INT >= 11) {
      e();
    }
  }
  
  @TargetApi(11)
  private void e()
  {
    float f1 = getTextSize();
    c = ValueAnimator.ofFloat(new float[] { 1.75F * f1, f1 });
    c.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        c.a(c.this, ((Float)paramAnonymousValueAnimator.getAnimatedValue()).floatValue());
        invalidate();
      }
    });
    c.setDuration(300L);
    ValueAnimator.AnimatorUpdateListener local2 = new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        c.a(c.this, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
        invalidate();
      }
    };
    d = ValueAnimator.ofInt(new int[] { getInactiveColor(), getFocusedColor() });
    d.setEvaluator(new ArgbEvaluator());
    d.addUpdateListener(local2);
    d.setDuration(300L);
    e = ValueAnimator.ofInt(new int[] { getFocusedColor(), getInactiveColor() });
    e.setEvaluator(new ArgbEvaluator());
    e.addUpdateListener(local2);
    e.setDuration(300L);
    f = ValueAnimator.ofInt(new int[] { 0, 255 });
    f.addUpdateListener(new ValueAnimator.AnimatorUpdateListener()
    {
      public void onAnimationUpdate(ValueAnimator paramAnonymousValueAnimator)
      {
        c.b(c.this, ((Integer)paramAnonymousValueAnimator.getAnimatedValue()).intValue());
        invalidate();
      }
    });
  }
  
  @TargetApi(17)
  private boolean f()
  {
    return (Build.VERSION.SDK_INT >= 17) && (getResources().getConfiguration().getLayoutDirection() == 1);
  }
  
  @TargetApi(11)
  protected void a(boolean paramBoolean)
  {
    if (Looper.myLooper() != null)
    {
      if (paramBoolean) {
        d.start();
      }
    }
    else {
      return;
    }
    e.start();
  }
  
  protected void onDraw(Canvas paramCanvas)
  {
    super.onDraw(paramCanvas);
    if (getText().length() > 0)
    {
      b.setColor(h);
      b.setTextSize(getPaint().getTextSize() * 3.0F / 4.0F);
      b.setAlpha(i);
      paramCanvas.drawText(getHint().toString(), 0.0F, g, b);
    }
  }
  
  protected void onFocusChanged(boolean paramBoolean, int paramInt, Rect paramRect)
  {
    super.onFocusChanged(paramBoolean, paramInt, paramRect);
    if (Build.VERSION.SDK_INT >= 11) {
      a(paramBoolean);
    }
  }
  
  @TargetApi(14)
  public void onTextChanged(CharSequence paramCharSequence, int paramInt1, int paramInt2, int paramInt3)
  {
    super.onTextChanged(paramCharSequence, paramInt1, paramInt2, paramInt3);
    if ((Build.VERSION.SDK_INT >= 14) && (Looper.myLooper() != null) && (j == 0) && (paramCharSequence.length() > 0) && (!c.isStarted()))
    {
      c.start();
      d.start();
      f.start();
    }
    j = paramCharSequence.length();
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.cardform.view.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */