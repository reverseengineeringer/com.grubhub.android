package android.support.v4.widget;

import android.view.View;
import android.view.View.OnApplyWindowInsetsListener;
import android.view.WindowInsets;

class t
  implements View.OnApplyWindowInsetsListener
{
  public WindowInsets onApplyWindowInsets(View paramView, WindowInsets paramWindowInsets)
  {
    paramView = (u)paramView;
    if (paramWindowInsets.getSystemWindowInsetTop() > 0) {}
    for (boolean bool = true;; bool = false)
    {
      paramView.a(paramWindowInsets, bool);
      return paramWindowInsets.consumeSystemWindowInsets();
    }
  }
}

/* Location:
 * Qualified Name:     android.support.v4.widget.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */