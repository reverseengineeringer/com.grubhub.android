package android.support.v4.view;

import android.os.Build.VERSION;
import android.view.ViewGroup.MarginLayoutParams;

public class aj
{
  static final ak a = new al();
  
  static
  {
    if (Build.VERSION.SDK_INT >= 17)
    {
      a = new am();
      return;
    }
  }
  
  public static int a(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return a.a(paramMarginLayoutParams);
  }
  
  public static int b(ViewGroup.MarginLayoutParams paramMarginLayoutParams)
  {
    return a.b(paramMarginLayoutParams);
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */