package android.support.v7.widget;

import android.content.Context;
import android.graphics.Matrix;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.a.b;
import android.support.v7.internal.widget.TintImageView;
import android.view.View;

class e
  extends TintImageView
  implements h
{
  private final float[] b = new float[2];
  
  public e(final a parama, Context paramContext)
  {
    super(paramContext, null, b.actionOverflowButtonStyle);
    setClickable(true);
    setFocusable(true);
    setVisibility(0);
    setEnabled(true);
    setOnTouchListener(new q(this)
    {
      public o a()
      {
        if (a.a(parama) == null) {
          return null;
        }
        return a.a(parama).c();
      }
      
      public boolean b()
      {
        parama.c();
        return true;
      }
      
      public boolean c()
      {
        if (a.b(parama) != null) {
          return false;
        }
        parama.d();
        return true;
      }
    });
  }
  
  public boolean c()
  {
    return false;
  }
  
  public boolean d()
  {
    return false;
  }
  
  public boolean performClick()
  {
    if (super.performClick()) {
      return true;
    }
    playSoundEffect(0);
    a.c();
    return true;
  }
  
  protected boolean setFrame(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    boolean bool = super.setFrame(paramInt1, paramInt2, paramInt3, paramInt4);
    Drawable localDrawable1 = getDrawable();
    Drawable localDrawable2 = getBackground();
    if ((localDrawable1 != null) && (localDrawable2 != null))
    {
      float[] arrayOfFloat = b;
      arrayOfFloat[0] = localDrawable1.getBounds().centerX();
      getImageMatrix().mapPoints(arrayOfFloat);
      paramInt1 = (int)arrayOfFloat[0] - getWidth() / 2;
      android.support.v4.a.a.a.a(localDrawable2, paramInt1, 0, getWidth() + paramInt1, getHeight());
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     android.support.v7.widget.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */