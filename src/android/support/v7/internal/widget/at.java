package android.support.v7.internal.widget;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

class at
  extends z
{
  private final ColorStateList a;
  private final PorterDuff.Mode b;
  private int c;
  
  public at(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    this(paramDrawable, paramColorStateList, av.a);
  }
  
  public at(Drawable paramDrawable, ColorStateList paramColorStateList, PorterDuff.Mode paramMode)
  {
    super(paramDrawable);
    a = paramColorStateList;
    b = paramMode;
  }
  
  private boolean a(int[] paramArrayOfInt)
  {
    if (a != null)
    {
      int i = a.getColorForState(paramArrayOfInt, c);
      if (i != c)
      {
        if (i != 0) {
          setColorFilter(i, b);
        }
        for (;;)
        {
          c = i;
          return true;
          clearColorFilter();
        }
      }
    }
    return false;
  }
  
  public boolean isStateful()
  {
    return ((a != null) && (a.isStateful())) || (super.isStateful());
  }
  
  public boolean setState(int[] paramArrayOfInt)
  {
    boolean bool = super.setState(paramArrayOfInt);
    return (a(paramArrayOfInt)) || (bool);
  }
}

/* Location:
 * Qualified Name:     android.support.v7.internal.widget.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */