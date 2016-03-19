package com.grubhub.AppBaseLibrary.android.account;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.widget.Toast;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;

class g$3
  implements DialogInterface.OnClickListener
{
  g$3(g paramg) {}
  
  public void onClick(final DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = GHSSavedAddressListFragment.f(a.a).a(g.a(a));
    GHSSavedAddressListFragment.a(a.a, new com.grubhub.AppBaseLibrary.android.dataServices.a.i.c(a.a.getActivity(), paramDialogInterface.getId(), new i()new i
    {
      public void a()
      {
        if ((a.a.getActivity() instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)a.a.getActivity()).a(true);
        }
      }
    }, new i()
    {
      public void a()
      {
        if ((a.a.getActivity() instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)a.a.getActivity()).a(false);
        }
        GHSSavedAddressListFragment.a(a.a, null);
      }
    }));
    GHSSavedAddressListFragment.h(a.a).a(new e()
    {
      public void a(ArrayList<GHSIAddressDataModel> paramAnonymousArrayList)
      {
        GHSSavedAddressListFragment.f(a.a).a(GHSApplication.a().b().R());
        GHSSavedAddressListFragment.a(a.a, "successful");
        Toast.makeText(a.a.getActivity(), a.a.getString(2131231036), 0).show();
        paramAnonymousArrayList = a.a;
        if (GHSSavedAddressListFragment.f(a.a).getCount() == 0) {}
        for (boolean bool = true;; bool = false)
        {
          GHSSavedAddressListFragment.e(paramAnonymousArrayList, bool);
          paramAnonymousArrayList = GHSApplication.a().b().t();
          if ((paramAnonymousArrayList != null) && (paramDialogInterface != null) && (paramAnonymousArrayList.getId() != null) && (paramAnonymousArrayList.getId().equals(paramDialogInterface.getId())))
          {
            paramAnonymousArrayList.setIsSavedAddress(false);
            GHSApplication.a().b().a(paramAnonymousArrayList);
          }
          paramAnonymousArrayList = GHSApplication.a().b();
          GHSFilterSortCriteria localGHSFilterSortCriteria = paramAnonymousArrayList.z();
          String str = localGHSFilterSortCriteria.getSavedAddressId();
          if ((str != null) && (str.equals(paramDialogInterface.getId())))
          {
            localGHSFilterSortCriteria.setAddressToNotSaved();
            paramAnonymousArrayList.a(localGHSFilterSortCriteria);
          }
          return;
        }
      }
    });
    GHSSavedAddressListFragment.h(a.a).a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        com.grubhub.AppBaseLibrary.android.c.a(a.a.getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), a.a.getString(2131231717), null, null, null);
        GHSSavedAddressListFragment.a(a.a, "error");
      }
    });
    GHSSavedAddressListFragment.h(a.a).a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.g.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */