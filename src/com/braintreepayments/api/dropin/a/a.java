package com.braintreepayments.api.dropin.a;

import android.view.animation.Interpolator;

public class a
  implements Interpolator
{
  private float b(float paramFloat)
  {
    int i = 1;
    float f1 = paramFloat;
    for (;;)
    {
      float f2;
      if (i < 14)
      {
        f2 = d(f1) - paramFloat;
        if (Math.abs(f2) >= 0.001D) {}
      }
      else
      {
        return f1;
      }
      f1 -= f2 / c(f1);
      i += 1;
    }
  }
  
  private float c(float paramFloat)
  {
    return 1.935F + (-5.6099997F + 5.6099997F * paramFloat) * paramFloat;
  }
  
  private float d(float paramFloat)
  {
    return (1.935F + (-2.8049998F + 1.8699999F * paramFloat) * paramFloat) * paramFloat;
  }
  
  protected float a(float paramFloat)
  {
    return (0.135F + (2.73F + -1.865F * paramFloat) * paramFloat) * paramFloat;
  }
  
  public float getInterpolation(float paramFloat)
  {
    return a(b(paramFloat));
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */