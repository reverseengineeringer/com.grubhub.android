package com.grubhub.AppBaseLibrary.android.order;

import android.content.DialogInterface;
import android.support.v4.app.q;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.b.b;

class GHSOrderStatusFragment$7
  implements com.grubhub.AppBaseLibrary.android.dataServices.net.d
{
  GHSOrderStatusFragment$7(GHSOrderStatusFragment paramGHSOrderStatusFragment, com.grubhub.AppBaseLibrary.android.dataServices.a.c paramc) {}
  
  public void a(b paramb)
  {
    q localq = b.getActivity();
    if ((localq instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)localq).a(false);
    }
    com.grubhub.AppBaseLibrary.android.c.a(b.getActivity(), paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.d()
    {
      public void a(DialogInterface paramAnonymousDialogInterface)
      {
        paramAnonymousDialogInterface = (GHSMainActivity)b.getActivity();
        if (paramAnonymousDialogInterface != null) {
          paramAnonymousDialogInterface.onBackPressed();
        }
      }
      
      public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        a.a();
      }
      
      public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = (GHSMainActivity)b.getActivity();
        if (paramAnonymousDialogInterface != null) {
          paramAnonymousDialogInterface.onBackPressed();
        }
      }
      
      public void c(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = (GHSMainActivity)b.getActivity();
        if (paramAnonymousDialogInterface != null) {
          paramAnonymousDialogInterface.onBackPressed();
        }
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderStatusFragment.7
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */