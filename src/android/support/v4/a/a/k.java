package android.support.v4.a.a;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;

class k
{
  public static void a(Drawable paramDrawable, int paramInt)
  {
    if ((paramDrawable instanceof p)) {
      ((p)paramDrawable).setTint(paramInt);
    }
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    if ((paramDrawable instanceof p)) {
      ((p)paramDrawable).setTintList(paramColorStateList);
    }
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    if ((paramDrawable instanceof p)) {
      ((p)paramDrawable).setTintMode(paramMode);
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.a.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */