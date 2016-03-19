package android.support.v4.widget;

import android.view.animation.Animation;
import android.view.animation.Interpolator;
import android.view.animation.Transformation;

class ac$1
  extends Animation
{
  ac$1(ac paramac, ad paramad) {}
  
  public void applyTransformation(float paramFloat, Transformation paramTransformation)
  {
    if (b.a)
    {
      ac.a(b, paramFloat, a);
      return;
    }
    float f1 = ac.a(b, a);
    float f2 = a.g();
    float f4 = a.f();
    float f3 = a.k();
    ac.b(b, paramFloat, a);
    if (paramFloat <= 0.5F)
    {
      float f5 = paramFloat / 0.5F;
      f5 = ac.a().getInterpolation(f5);
      a.b(f4 + f5 * (0.8F - f1));
    }
    if (paramFloat > 0.5F)
    {
      f4 = (paramFloat - 0.5F) / 0.5F;
      f4 = ac.a().getInterpolation(f4);
      a.c((0.8F - f1) * f4 + f2);
    }
    a.d(0.25F * paramFloat + f3);
    f1 = ac.a(b) / 5.0F;
    b.c(216.0F * paramFloat + 1080.0F * f1);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ac.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */