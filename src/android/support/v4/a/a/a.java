package android.support.v4.a.a;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff.Mode;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;

public class a
{
  static final c a = new b();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 23)
    {
      a = new i();
      return;
    }
    if (i >= 22)
    {
      a = new h();
      return;
    }
    if (i >= 21)
    {
      a = new g();
      return;
    }
    if (i >= 19)
    {
      a = new f();
      return;
    }
    if (i >= 17)
    {
      a = new e();
      return;
    }
    if (i >= 11)
    {
      a = new d();
      return;
    }
  }
  
  public static void a(Drawable paramDrawable)
  {
    a.a(paramDrawable);
  }
  
  public static void a(Drawable paramDrawable, float paramFloat1, float paramFloat2)
  {
    a.a(paramDrawable, paramFloat1, paramFloat2);
  }
  
  public static void a(Drawable paramDrawable, int paramInt)
  {
    a.a(paramDrawable, paramInt);
  }
  
  public static void a(Drawable paramDrawable, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    a.a(paramDrawable, paramInt1, paramInt2, paramInt3, paramInt4);
  }
  
  public static void a(Drawable paramDrawable, ColorStateList paramColorStateList)
  {
    a.a(paramDrawable, paramColorStateList);
  }
  
  public static void a(Drawable paramDrawable, PorterDuff.Mode paramMode)
  {
    a.a(paramDrawable, paramMode);
  }
  
  public static void a(Drawable paramDrawable, boolean paramBoolean)
  {
    a.a(paramDrawable, paramBoolean);
  }
  
  public static void b(Drawable paramDrawable, int paramInt)
  {
    a.b(paramDrawable, paramInt);
  }
  
  public static boolean b(Drawable paramDrawable)
  {
    return a.b(paramDrawable);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */