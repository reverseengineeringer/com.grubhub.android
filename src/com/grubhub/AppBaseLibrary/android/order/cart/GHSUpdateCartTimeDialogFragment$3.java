package com.grubhub.AppBaseLibrary.android.order.cart;

import android.widget.ViewFlipper;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSUpdateCartTimeDialogFragment$3
  implements d
{
  GHSUpdateCartTimeDialogFragment$3(GHSUpdateCartTimeDialogFragment paramGHSUpdateCartTimeDialogFragment, ViewFlipper paramViewFlipper) {}
  
  public void a(b paramb)
  {
    if (paramb.d())
    {
      b.dismiss();
      if (GHSUpdateCartTimeDialogFragment.f(b) != null) {
        GHSUpdateCartTimeDialogFragment.f(b).a(paramb);
      }
      return;
    }
    a.setDisplayedChild(2);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */