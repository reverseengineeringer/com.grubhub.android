package com.grubhub.AppBaseLibrary.android.account;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import java.util.ArrayList;

class g
  implements View.OnClickListener
{
  private String b;
  private int c;
  
  public g(GHSSavedAddressListFragment paramGHSSavedAddressListFragment, String paramString, int paramInt)
  {
    b = paramString;
    c = paramInt;
  }
  
  public void onClick(View paramView)
  {
    if ((GHSSavedAddressListFragment.d(a)) && (GHSSavedAddressListFragment.g(a) != null) && (GHSSavedAddressListFragment.g(a).equals(b)))
    {
      new AlertDialog.Builder(a.getActivity()).setTitle(a.getString(2131231715)).setMessage(a.getString(2131231714)).setPositiveButton(a.getString(2131231712), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
      }).setIcon(17301543).show();
      return;
    }
    new AlertDialog.Builder(a.getActivity()).setTitle(a.getString(2131231035)).setMessage(a.getString(2131231034)).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public void onClick(final DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        paramAnonymousDialogInterface = GHSSavedAddressListFragment.f(a).a(g.a(g.this));
        GHSSavedAddressListFragment.a(a, new com.grubhub.AppBaseLibrary.android.dataServices.a.i.c(a.getActivity(), paramAnonymousDialogInterface.getId(), new i()new i
        {
          public void a()
          {
            if ((a.getActivity() instanceof GHSBaseActivity)) {
              ((GHSBaseActivity)a.getActivity()).a(true);
            }
          }
        }, new i()
        {
          public void a()
          {
            if ((a.getActivity() instanceof GHSBaseActivity)) {
              ((GHSBaseActivity)a.getActivity()).a(false);
            }
            GHSSavedAddressListFragment.a(a, null);
          }
        }));
        GHSSavedAddressListFragment.h(a).a(new e()
        {
          public void a(ArrayList<GHSIAddressDataModel> paramAnonymous2ArrayList)
          {
            GHSSavedAddressListFragment.f(a).a(GHSApplication.a().b().R());
            GHSSavedAddressListFragment.a(a, "successful");
            Toast.makeText(a.getActivity(), a.getString(2131231036), 0).show();
            paramAnonymous2ArrayList = a;
            if (GHSSavedAddressListFragment.f(a).getCount() == 0) {}
            for (boolean bool = true;; bool = false)
            {
              GHSSavedAddressListFragment.e(paramAnonymous2ArrayList, bool);
              paramAnonymous2ArrayList = GHSApplication.a().b().t();
              if ((paramAnonymous2ArrayList != null) && (paramAnonymousDialogInterface != null) && (paramAnonymous2ArrayList.getId() != null) && (paramAnonymous2ArrayList.getId().equals(paramAnonymousDialogInterface.getId())))
              {
                paramAnonymous2ArrayList.setIsSavedAddress(false);
                GHSApplication.a().b().a(paramAnonymous2ArrayList);
              }
              paramAnonymous2ArrayList = GHSApplication.a().b();
              GHSFilterSortCriteria localGHSFilterSortCriteria = paramAnonymous2ArrayList.z();
              String str = localGHSFilterSortCriteria.getSavedAddressId();
              if ((str != null) && (str.equals(paramAnonymousDialogInterface.getId())))
              {
                localGHSFilterSortCriteria.setAddressToNotSaved();
                paramAnonymous2ArrayList.a(localGHSFilterSortCriteria);
              }
              return;
            }
          }
        });
        GHSSavedAddressListFragment.h(a).a(new d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymous2b)
          {
            com.grubhub.AppBaseLibrary.android.c.a(a.getActivity(), paramAnonymous2b.f(), paramAnonymous2b.getLocalizedMessage(), a.getString(2131231717), null, null, null);
            GHSSavedAddressListFragment.a(a, "error");
          }
        });
        GHSSavedAddressListFragment.h(a).a();
      }
    }).setNegativeButton(17039360, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSSavedAddressListFragment.a(a, "dismiss");
      }
    }).setIcon(17301543).show();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */