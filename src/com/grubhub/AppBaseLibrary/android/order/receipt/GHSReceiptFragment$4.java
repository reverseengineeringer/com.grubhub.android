package com.grubhub.AppBaseLibrary.android.order.receipt;

import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.utils.e.a.a;
import java.util.HashMap;

class GHSReceiptFragment$4
  implements View.OnClickListener
{
  GHSReceiptFragment$4(GHSReceiptFragment paramGHSReceiptFragment, String paramString) {}
  
  public void onClick(View paramView)
  {
    a.a("RECEIPT_CALL_CUSTOMER_SERVICE", new HashMap() {});
    if (GHSApplication.n())
    {
      paramView = "tel: " + a;
      Intent localIntent = new Intent("android.intent.action.DIAL");
      localIntent.setData(Uri.parse(paramView));
      b.startActivity(localIntent);
      GHSReceiptFragment.a(b, "call care");
      return;
    }
    c.a(b.getActivity(), 2131231322, 2131231321, 0, 0, 2131231717, null);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptFragment.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */