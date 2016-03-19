package com.grubhub.AppBaseLibrary.android.order;

import android.content.DialogInterface;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.d;
import com.grubhub.AppBaseLibrary.android.dataServices.a.c;

class GHSOrderStatusFragment$7$1
  implements d
{
  GHSOrderStatusFragment$7$1(GHSOrderStatusFragment.7 param7) {}
  
  public void a(DialogInterface paramDialogInterface)
  {
    paramDialogInterface = (GHSMainActivity)a.b.getActivity();
    if (paramDialogInterface != null) {
      paramDialogInterface.onBackPressed();
    }
  }
  
  public void a(DialogInterface paramDialogInterface, int paramInt)
  {
    a.a.a();
  }
  
  public void b(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = (GHSMainActivity)a.b.getActivity();
    if (paramDialogInterface != null) {
      paramDialogInterface.onBackPressed();
    }
  }
  
  public void c(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = (GHSMainActivity)a.b.getActivity();
    if (paramDialogInterface != null) {
      paramDialogInterface.onBackPressed();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderStatusFragment.7.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */