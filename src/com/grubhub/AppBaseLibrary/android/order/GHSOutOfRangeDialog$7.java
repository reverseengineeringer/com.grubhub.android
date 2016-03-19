package com.grubhub.AppBaseLibrary.android.order;

import android.app.Activity;
import android.content.res.Resources;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;

class GHSOutOfRangeDialog$7
  implements d
{
  GHSOutOfRangeDialog$7(GHSOutOfRangeDialog paramGHSOutOfRangeDialog, Activity paramActivity) {}
  
  public void a(b paramb)
  {
    if (a != null) {
      c.a(a, paramb.f(), paramb.getLocalizedMessage(), b.getResources().getString(2131231717), null, null, null);
    }
    GHSOutOfRangeDialog.a(b, true);
    GHSOutOfRangeDialog.b(b, false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */