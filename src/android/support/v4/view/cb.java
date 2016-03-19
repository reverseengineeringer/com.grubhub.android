package android.support.v4.view;

import android.view.View;
import java.lang.reflect.Field;

class cb
{
  private static Field a;
  private static boolean b;
  
  static int a(View paramView)
  {
    if (!b) {}
    try
    {
      a = View.class.getDeclaredField("mMinHeight");
      a.setAccessible(true);
      b = true;
      if (a != null) {
        try
        {
          int i = ((Integer)a.get(paramView)).intValue();
          return i;
        }
        catch (Exception paramView) {}
      }
      return 0;
    }
    catch (NoSuchFieldException localNoSuchFieldException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */