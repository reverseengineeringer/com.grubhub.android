package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewConfiguration;

public class cj
{
  static final co a = new ck();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      a = new cn();
      return;
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      a = new cm();
      return;
    }
    if (Build.VERSION.SDK_INT >= 8)
    {
      a = new cl();
      return;
    }
  }
  
  public static int a(ViewConfiguration paramViewConfiguration)
  {
    return a.a(paramViewConfiguration);
  }
  
  public static boolean b(ViewConfiguration paramViewConfiguration)
  {
    return a.b(paramViewConfiguration);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */