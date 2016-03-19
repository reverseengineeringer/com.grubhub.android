package android.support.v4.view;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

final class ci$1
  implements View.OnApplyWindowInsetsListener
{
  ci$1(bh parambh) {}
  
  public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
  {
    paramWindowInsets = new eh(paramWindowInsets);
    return ((eh)a.a(paramView, paramWindowInsets)).e();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.view.ci.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */