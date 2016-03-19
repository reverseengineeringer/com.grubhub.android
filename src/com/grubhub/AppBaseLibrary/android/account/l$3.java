package com.grubhub.AppBaseLibrary.android.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.f.a;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class l$3
  implements DialogInterface.OnClickListener
{
  l$3(l paraml) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    GHSSavedPaymentListFragment.a(a.a, new a(a.a.getActivity(), l.a(a), l.b(a), new i()new i
    {
      public void a()
      {
        ((GHSBaseActivity)a.a.getActivity()).a(true);
      }
    }, new i()
    {
      public void a()
      {
        GHSSavedPaymentListFragment.a(a.a, null);
      }
    }));
    GHSSavedPaymentListFragment.i(a.a).a(new e()
    {
      public void a(GHSIDeletedPaymentModel paramAnonymousGHSIDeletedPaymentModel)
      {
        if (GHSSavedPaymentListFragment.b(a.a) != null)
        {
          GHSSavedPaymentListFragment.a(a.a, "successful");
          l.c(a);
        }
      }
    });
    GHSSavedPaymentListFragment.i(a.a).a(new d()
    {
      public void a(b paramAnonymousb)
      {
        ((GHSBaseActivity)a.a.getActivity()).a(false);
        c.a(a.a.getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), a.a.getString(2131231717), null, null, null);
        GHSSavedPaymentListFragment.a(a.a, "error");
      }
    });
    GHSSavedPaymentListFragment.i(a.a).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.l.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */