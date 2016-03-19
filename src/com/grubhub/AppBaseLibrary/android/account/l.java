package com.grubhub.AppBaseLibrary.android.account;

import android.app.AlertDialog.Builder;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Toast;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.a.f.a;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;

class l
  implements View.OnClickListener
{
  private String b;
  private GHSICartPaymentDataModel.PaymentTypes c;
  private String d;
  private String e;
  private String f;
  private String g;
  private String h;
  
  public l(GHSSavedPaymentListFragment paramGHSSavedPaymentListFragment, String paramString1, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6)
  {
    b = paramString1;
    c = paramPaymentTypes;
    d = paramString2;
    e = paramString3;
    f = paramString4;
    g = paramString5;
    h = paramString6;
  }
  
  private void a()
  {
    GHSSavedPaymentListFragment.a(a, new com.grubhub.AppBaseLibrary.android.dataServices.a.f.c(a.getActivity(), null, new i()
    {
      public void a()
      {
        ((GHSBaseActivity)a.getActivity()).a(false);
        GHSSavedPaymentListFragment.a(a, null);
      }
    }));
    GHSSavedPaymentListFragment.j(a).a(new e()
    {
      public void a(GHSIGetPaymentsModel paramAnonymousGHSIGetPaymentsModel)
      {
        l.d(l.this);
      }
    });
    GHSSavedPaymentListFragment.j(a).a(new d()
    {
      public void a(b paramAnonymousb)
      {
        com.grubhub.AppBaseLibrary.android.c.a(a.getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), a.getString(2131231717), null, null, null);
      }
    });
    GHSSavedPaymentListFragment.j(a).a();
  }
  
  private void b()
  {
    boolean bool = false;
    GHSSavedPaymentListFragment.b(a).a(GHSSavedPaymentListFragment.a(a));
    Toast.makeText(a.getActivity(), h, 0).show();
    GHSSavedPaymentListFragment localGHSSavedPaymentListFragment = a;
    if (GHSSavedPaymentListFragment.b(a).getCount() == 0) {
      bool = true;
    }
    GHSSavedPaymentListFragment.b(localGHSSavedPaymentListFragment, bool);
  }
  
  public void onClick(View paramView)
  {
    if ((GHSSavedPaymentListFragment.c(a)) && (b.equals(GHSSavedPaymentListFragment.f(a))))
    {
      new AlertDialog.Builder(a.getActivity()).setTitle(e).setMessage(g).setPositiveButton(a.getString(2131231712), new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt) {}
      }).setIcon(17301543).show();
      return;
    }
    new AlertDialog.Builder(a.getActivity()).setTitle(d).setMessage(f).setPositiveButton(17039370, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSSavedPaymentListFragment.a(a, new a(a.getActivity(), l.a(l.this), l.b(l.this), new i()new i
        {
          public void a()
          {
            ((GHSBaseActivity)a.getActivity()).a(true);
          }
        }, new i()
        {
          public void a()
          {
            GHSSavedPaymentListFragment.a(a, null);
          }
        }));
        GHSSavedPaymentListFragment.i(a).a(new e()
        {
          public void a(GHSIDeletedPaymentModel paramAnonymous2GHSIDeletedPaymentModel)
          {
            if (GHSSavedPaymentListFragment.b(a) != null)
            {
              GHSSavedPaymentListFragment.a(a, "successful");
              l.c(l.this);
            }
          }
        });
        GHSSavedPaymentListFragment.i(a).a(new d()
        {
          public void a(b paramAnonymous2b)
          {
            ((GHSBaseActivity)a.getActivity()).a(false);
            com.grubhub.AppBaseLibrary.android.c.a(a.getActivity(), paramAnonymous2b.f(), paramAnonymous2b.getLocalizedMessage(), a.getString(2131231717), null, null, null);
            GHSSavedPaymentListFragment.a(a, "error");
          }
        });
        GHSSavedPaymentListFragment.i(a).a();
      }
    }).setNegativeButton(17039360, new DialogInterface.OnClickListener()
    {
      public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
      {
        GHSSavedPaymentListFragment.a(a, "dismiss");
      }
    }).setIcon(17301543).show();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */