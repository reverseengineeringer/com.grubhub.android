package com.grubhub.AppBaseLibrary.android.welcome;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.login.GHSLoginActivity;
import com.grubhub.AppBaseLibrary.android.login.a;

class GHSWelcomeActivity$11
  implements View.OnClickListener
{
  GHSWelcomeActivity$11(GHSWelcomeActivity paramGHSWelcomeActivity) {}
  
  public void onClick(View paramView)
  {
    a.startActivityForResult(GHSLoginActivity.a(a, a.ONBOARDING), 0);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.welcome.GHSWelcomeActivity.11
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */