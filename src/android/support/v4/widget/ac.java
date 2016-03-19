package android.support.v4.widget;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Animatable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.support.v4.view.b.a;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.Interpolator;
import android.view.animation.LinearInterpolator;
import android.view.animation.Transformation;
import java.util.ArrayList;

class ac
  extends Drawable
  implements Animatable
{
  private static final Interpolator b = new LinearInterpolator();
  private static final Interpolator c = new a();
  boolean a;
  private final int[] d = { -16777216 };
  private final ArrayList<Animation> e = new ArrayList();
  private final ad f;
  private float g;
  private Resources h;
  private View i;
  private Animation j;
  private float k;
  private double l;
  private double m;
  private final Drawable.Callback n = new Drawable.Callback()
  {
    public void invalidateDrawable(Drawable paramAnonymousDrawable)
    {
      invalidateSelf();
    }
    
    public void scheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable, long paramAnonymousLong)
    {
      scheduleSelf(paramAnonymousRunnable, paramAnonymousLong);
    }
    
    public void unscheduleDrawable(Drawable paramAnonymousDrawable, Runnable paramAnonymousRunnable)
    {
      unscheduleSelf(paramAnonymousRunnable);
    }
  };
  
  public ac(Context paramContext, View paramView)
  {
    i = paramView;
    h = paramContext.getResources();
    f = new ad(n);
    f.a(d);
    a(1);
    b();
  }
  
  private float a(ad paramad)
  {
    return (float)Math.toRadians(paramad.d() / (6.283185307179586D * paramad.j()));
  }
  
  private int a(float paramFloat, int paramInt1, int paramInt2)
  {
    int i3 = Integer.valueOf(paramInt1).intValue();
    paramInt1 = i3 >> 24 & 0xFF;
    int i1 = i3 >> 16 & 0xFF;
    int i2 = i3 >> 8 & 0xFF;
    i3 &= 0xFF;
    paramInt2 = Integer.valueOf(paramInt2).intValue();
    int i4 = (int)(((paramInt2 >> 24 & 0xFF) - paramInt1) * paramFloat);
    int i5 = (int)(((paramInt2 >> 16 & 0xFF) - i1) * paramFloat);
    int i6 = (int)(((paramInt2 >> 8 & 0xFF) - i2) * paramFloat);
    return i3 + (int)(((paramInt2 & 0xFF) - i3) * paramFloat) | paramInt1 + i4 << 24 | i1 + i5 << 16 | i6 + i2 << 8;
  }
  
  private void a(double paramDouble1, double paramDouble2, double paramDouble3, double paramDouble4, float paramFloat1, float paramFloat2)
  {
    ad localad = f;
    float f1 = h.getDisplayMetrics().density;
    l = (f1 * paramDouble1);
    m = (f1 * paramDouble2);
    localad.a((float)paramDouble4 * f1);
    localad.a(f1 * paramDouble3);
    localad.c(0);
    localad.a(paramFloat1 * f1, f1 * paramFloat2);
    localad.a((int)l, (int)m);
  }
  
  private void a(float paramFloat, ad paramad)
  {
    if (paramFloat > 0.75F) {
      paramad.b(a((paramFloat - 0.75F) / 0.25F, paramad.h(), paramad.a()));
    }
  }
  
  private void b()
  {
    final ad localad = f;
    Animation local1 = new Animation()
    {
      public void applyTransformation(float paramAnonymousFloat, Transformation paramAnonymousTransformation)
      {
        if (a)
        {
          ac.a(ac.this, paramAnonymousFloat, localad);
          return;
        }
        float f1 = ac.a(ac.this, localad);
        float f2 = localad.g();
        float f4 = localad.f();
        float f3 = localad.k();
        ac.b(ac.this, paramAnonymousFloat, localad);
        if (paramAnonymousFloat <= 0.5F)
        {
          float f5 = paramAnonymousFloat / 0.5F;
          f5 = ac.a().getInterpolation(f5);
          localad.b(f4 + f5 * (0.8F - f1));
        }
        if (paramAnonymousFloat > 0.5F)
        {
          f4 = (paramAnonymousFloat - 0.5F) / 0.5F;
          f4 = ac.a().getInterpolation(f4);
          localad.c((0.8F - f1) * f4 + f2);
        }
        localad.d(0.25F * paramAnonymousFloat + f3);
        f1 = ac.a(ac.this) / 5.0F;
        c(216.0F * paramAnonymousFloat + 1080.0F * f1);
      }
    };
    local1.setRepeatCount(-1);
    local1.setRepeatMode(1);
    local1.setInterpolator(b);
    local1.setAnimationListener(new Animation.AnimationListener()
    {
      public void onAnimationEnd(Animation paramAnonymousAnimation) {}
      
      public void onAnimationRepeat(Animation paramAnonymousAnimation)
      {
        localad.l();
        localad.b();
        localad.b(localad.i());
        if (a)
        {
          a = false;
          paramAnonymousAnimation.setDuration(1332L);
          localad.a(false);
          return;
        }
        ac.a(ac.this, (ac.a(ac.this) + 1.0F) % 5.0F);
      }
      
      public void onAnimationStart(Animation paramAnonymousAnimation)
      {
        ac.a(ac.this, 0.0F);
      }
    });
    j = local1;
  }
  
  private void b(float paramFloat, ad paramad)
  {
    a(paramFloat, paramad);
    float f1 = (float)(Math.floor(paramad.k() / 0.8F) + 1.0D);
    float f2 = a(paramad);
    float f3 = paramad.f();
    paramad.b((paramad.g() - f2 - paramad.f()) * paramFloat + f3);
    paramad.c(paramad.g());
    f2 = paramad.k();
    paramad.d((f1 - paramad.k()) * paramFloat + f2);
  }
  
  public void a(float paramFloat)
  {
    f.e(paramFloat);
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    f.b(paramFloat1);
    f.c(paramFloat2);
  }
  
  public void a(int paramInt)
  {
    if (paramInt == 0)
    {
      a(56.0D, 56.0D, 12.5D, 3.0D, 12.0F, 6.0F);
      return;
    }
    a(40.0D, 40.0D, 8.75D, 2.5D, 10.0F, 5.0F);
  }
  
  public void a(boolean paramBoolean)
  {
    f.a(paramBoolean);
  }
  
  public void a(int... paramVarArgs)
  {
    f.a(paramVarArgs);
    f.c(0);
  }
  
  public void b(float paramFloat)
  {
    f.d(paramFloat);
  }
  
  public void b(int paramInt)
  {
    f.a(paramInt);
  }
  
  void c(float paramFloat)
  {
    g = paramFloat;
    invalidateSelf();
  }
  
  public void draw(Canvas paramCanvas)
  {
    Rect localRect = getBounds();
    int i1 = paramCanvas.save();
    paramCanvas.rotate(g, localRect.exactCenterX(), localRect.exactCenterY());
    f.a(paramCanvas, localRect);
    paramCanvas.restoreToCount(i1);
  }
  
  public int getAlpha()
  {
    return f.c();
  }
  
  public int getIntrinsicHeight()
  {
    return (int)m;
  }
  
  public int getIntrinsicWidth()
  {
    return (int)l;
  }
  
  public int getOpacity()
  {
    return -3;
  }
  
  public boolean isRunning()
  {
    ArrayList localArrayList = e;
    int i2 = localArrayList.size();
    int i1 = 0;
    while (i1 < i2)
    {
      Animation localAnimation = (Animation)localArrayList.get(i1);
      if ((localAnimation.hasStarted()) && (!localAnimation.hasEnded())) {
        return true;
      }
      i1 += 1;
    }
    return false;
  }
  
  public void setAlpha(int paramInt)
  {
    f.d(paramInt);
  }
  
  public void setColorFilter(ColorFilter paramColorFilter)
  {
    f.a(paramColorFilter);
  }
  
  public void start()
  {
    j.reset();
    f.l();
    if (f.i() != f.e())
    {
      a = true;
      j.setDuration(666L);
      i.startAnimation(j);
      return;
    }
    f.c(0);
    f.m();
    j.setDuration(1332L);
    i.startAnimation(j);
  }
  
  public void stop()
  {
    i.clearAnimation();
    c(0.0F);
    f.a(false);
    f.c(0);
    f.m();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */