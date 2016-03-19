package android.support.v4.view;

import android.animation.ValueAnimator;
import android.graphics.Paint;
import android.view.View;

class ce
{
  public static int a(int paramInt1, int paramInt2, int paramInt3)
  {
    return View.resolveSizeAndState(paramInt1, paramInt2, paramInt3);
  }
  
  public static int a(View paramView)
  {
    return paramView.getLayerType();
  }
  
  static long a()
  {
    return ValueAnimator.getFrameDelay();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.setTranslationX(paramFloat);
  }
  
  public static void a(View paramView, int paramInt, Paint paramPaint)
  {
    paramView.setLayerType(paramInt, paramPaint);
  }
  
  public static void a(View paramView, boolean paramBoolean)
  {
    paramView.setSaveFromParentEnabled(paramBoolean);
  }
  
  public static int b(View paramView)
  {
    return paramView.getMeasuredState();
  }
  
  public static void b(View paramView, float paramFloat)
  {
    paramView.setTranslationY(paramFloat);
  }
  
  public static void b(View paramView, boolean paramBoolean)
  {
    paramView.setActivated(paramBoolean);
  }
  
  public static float c(View paramView)
  {
    return paramView.getTranslationY();
  }
  
  public static void c(View paramView, float paramFloat)
  {
    paramView.setAlpha(paramFloat);
  }
  
  public static float d(View paramView)
  {
    return paramView.getScaleX();
  }
  
  public static void d(View paramView, float paramFloat)
  {
    paramView.setScaleX(paramFloat);
  }
  
  public static void e(View paramView)
  {
    paramView.jumpDrawablesToCurrentState();
  }
  
  public static void e(View paramView, float paramFloat)
  {
    paramView.setScaleY(paramFloat);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ce
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */