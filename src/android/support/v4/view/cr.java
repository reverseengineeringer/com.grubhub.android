package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup;

public class cr
{
  static final cu a = new cx();
  
  static
  {
    int i = Build.VERSION.SDK_INT;
    if (i >= 21)
    {
      a = new cw();
      return;
    }
    if (i >= 18)
    {
      a = new cv();
      return;
    }
    if (i >= 14)
    {
      a = new ct();
      return;
    }
    if (i >= 11)
    {
      a = new cs();
      return;
    }
  }
  
  public static void a(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    a.a(paramViewGroup, paramBoolean);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */