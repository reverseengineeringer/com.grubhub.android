package android.support.v4.view;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

class ci
{
  public static void a(View paramView)
  {
    paramView.requestApplyInsets();
  }
  
  public static void a(View paramView, float paramFloat)
  {
    paramView.setElevation(paramFloat);
  }
  
  public static void a(View paramView, bh parambh)
  {
    paramView.setOnApplyWindowInsetsListener(new View.OnApplyWindowInsetsListener()
    {
      public WindowInsets onApplyWindowInsets(View paramAnonymousView, WindowInsets paramAnonymousWindowInsets)
      {
        paramAnonymousWindowInsets = new eh(paramAnonymousWindowInsets);
        return ((eh)a(paramAnonymousView, paramAnonymousWindowInsets)).e();
      }
    });
  }
  
  public static float b(View paramView)
  {
    return paramView.getElevation();
  }
  
  public static boolean c(View paramView)
  {
    return paramView.isNestedScrollingEnabled();
  }
  
  public static void d(View paramView)
  {
    paramView.stopNestedScroll();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */