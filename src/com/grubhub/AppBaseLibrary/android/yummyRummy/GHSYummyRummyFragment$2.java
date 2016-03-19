package com.grubhub.AppBaseLibrary.android.yummyRummy;

import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

class GHSYummyRummyFragment$2
  implements View.OnClickListener
{
  GHSYummyRummyFragment$2(GHSYummyRummyFragment paramGHSYummyRummyFragment) {}
  
  public void onClick(View paramView)
  {
    a.startActivity(GHSWebViewActivity.a(a.getActivity(), 2131230878, GHSYummyRummyFragment.b(a)));
    h.a().a(new c("on-site marketing", "yummy rummy", "play now_cta"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.yummyRummy.GHSYummyRummyFragment.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */