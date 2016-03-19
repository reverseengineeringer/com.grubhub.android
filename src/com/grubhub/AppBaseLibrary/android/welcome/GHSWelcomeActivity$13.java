package com.grubhub.AppBaseLibrary.android.welcome;

import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;

class GHSWelcomeActivity$13
  implements ViewTreeObserver.OnGlobalLayoutListener
{
  GHSWelcomeActivity$13(GHSWelcomeActivity paramGHSWelcomeActivity, View paramView) {}
  
  public void onGlobalLayout()
  {
    int i = a.getRootView().getHeight();
    int j = a.getHeight();
    GHSWelcomeActivity localGHSWelcomeActivity = b;
    if (i - j > 100) {}
    for (boolean bool = true;; bool = false)
    {
      GHSWelcomeActivity.b(localGHSWelcomeActivity, bool);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity.13
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */