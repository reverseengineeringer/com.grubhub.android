package com.grubhub.AppBaseLibrary.android.account;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.ListFragment;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.f.a;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.c.f;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public class GHSSavedPaymentListFragment
  extends ListFragment
{
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m = false;
  private int n;
  private String o;
  private GHSICartPaymentDataModel.PaymentTypes p;
  private com.grubhub.AppBaseLibrary.android.dataServices.b.b q;
  private o r;
  private m s;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.f.c t;
  private a u;
  
  public static GHSSavedPaymentListFragment a(String paramString, boolean paramBoolean, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    GHSSavedPaymentListFragment localGHSSavedPaymentListFragment = new GHSSavedPaymentListFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("selected_id", paramString);
    localBundle.putBoolean("selectable_payments", paramBoolean);
    localBundle.putSerializable("payment_type_filter", paramPaymentTypes);
    localGHSSavedPaymentListFragment.setArguments(localBundle);
    return localGHSSavedPaymentListFragment;
  }
  
  private void a(String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("user account settings", "payment_delete", paramString));
  }
  
  private void a(boolean paramBoolean)
  {
    View localView = getView();
    if (localView != null)
    {
      if (paramBoolean) {
        localView.findViewById(2131690098).setVisibility(0);
      }
    }
    else {
      return;
    }
    localView.findViewById(2131690098).setVisibility(8);
  }
  
  private void b(String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    if (paramString != null)
    {
      o = paramString;
      if (r != null) {
        r.a(o);
      }
    }
    GHSSelectedPaymentModel localGHSSelectedPaymentModel1;
    if (paramPaymentTypes != null)
    {
      GHSSelectedPaymentModel localGHSSelectedPaymentModel2 = q.s();
      localGHSSelectedPaymentModel1 = localGHSSelectedPaymentModel2;
      if (localGHSSelectedPaymentModel2 == null) {
        localGHSSelectedPaymentModel1 = new GHSSelectedPaymentModel();
      }
      switch (5.a[paramPaymentTypes.ordinal()])
      {
      }
    }
    for (;;)
    {
      q.a(localGHSSelectedPaymentModel1);
      return;
      localGHSSelectedPaymentModel1.setSelectedCreditCardId(paramString);
      continue;
      localGHSSelectedPaymentModel1.setSelectedPayPalId(paramString);
    }
  }
  
  private List<p> c()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject;
    if ((p == null) || (p == GHSICartPaymentDataModel.PaymentTypes.CREDIT_CARD))
    {
      localObject = q.G();
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          localArrayList.add(new k(this, (GHSIVaultedCreditCardModel)((Iterator)localObject).next()));
        }
      }
    }
    if ((p == null) || (p == GHSICartPaymentDataModel.PaymentTypes.PAYPAL_EXPRESS))
    {
      localObject = q.S();
      if (localObject != null)
      {
        localObject = ((List)localObject).iterator();
        while (((Iterator)localObject).hasNext()) {
          localArrayList.add(new n(this, (GHSIVaultedPayPalModel)((Iterator)localObject).next()));
        }
      }
    }
    return localArrayList;
  }
  
  public void a(String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    b(paramString, paramPaymentTypes);
    if (r != null) {
      r.a(c());
    }
  }
  
  public void b()
  {
    if (r != null) {
      r.a(c());
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof m)) {
      s = ((m)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    q = GHSApplication.a().b();
    paramBundle = getArguments();
    o = paramBundle.getString("selected_id");
    l = paramBundle.getBoolean("selectable_payments");
    p = ((GHSICartPaymentDataModel.PaymentTypes)paramBundle.getSerializable("payment_type_filter"));
    n = (-getResources().getDimensionPixelSize(2131427415));
    r = new o(this, c(), o);
    a(r);
    setHasOptionsMenu(true);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131820545, paramMenu);
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903156, null);
    r.notifyDataSetChanged();
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    s = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i1 = paramMenuItem.getItemId();
    if (i1 == 16908332)
    {
      paramMenuItem = getActivity();
      if ((paramMenuItem instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)paramMenuItem).b(getClass().getSimpleName());
      }
      return true;
    }
    if (i1 == 2131690346)
    {
      if (s != null) {
        s.i();
      }
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity();
    paramMenu.getActionBar().setDisplayHomeAsUpEnabled(true);
    if ((paramMenu instanceof GHSBaseActivity))
    {
      if ((paramMenu instanceof GHSAccountSettingsActivity)) {
        ((GHSBaseActivity)paramMenu).b(2131230861);
      }
    }
    else {
      return;
    }
    ((GHSBaseActivity)paramMenu).b(2131230870);
  }
  
  public void onStart()
  {
    super.onStart();
    if (!k)
    {
      t = new com.grubhub.AppBaseLibrary.android.dataServices.a.f.c(getActivity(), new i()new i
      {
        public void a()
        {
          ((GHSBaseActivity)getActivity()).a(true);
        }
      }, new i()
      {
        public void a()
        {
          ((GHSBaseActivity)getActivity()).a(false);
          GHSSavedPaymentListFragment.a(GHSSavedPaymentListFragment.this, null);
        }
      });
      t.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIGetPaymentsModel paramAnonymousGHSIGetPaymentsModel)
        {
          boolean bool = true;
          GHSSavedPaymentListFragment.b(GHSSavedPaymentListFragment.this).a(GHSSavedPaymentListFragment.a(GHSSavedPaymentListFragment.this));
          a(GHSSavedPaymentListFragment.b(GHSSavedPaymentListFragment.this));
          GHSSavedPaymentListFragment.b(GHSSavedPaymentListFragment.this).notifyDataSetChanged();
          GHSSavedPaymentListFragment.a(GHSSavedPaymentListFragment.this, true);
          paramAnonymousGHSIGetPaymentsModel = GHSSavedPaymentListFragment.this;
          if (GHSSavedPaymentListFragment.b(GHSSavedPaymentListFragment.this).getCount() == 0) {}
          for (;;)
          {
            GHSSavedPaymentListFragment.b(paramAnonymousGHSIGetPaymentsModel, bool);
            return;
            bool = false;
          }
        }
      });
      t.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          boolean bool = true;
          GHSSavedPaymentListFragment.a(GHSSavedPaymentListFragment.this, true);
          paramAnonymousb = GHSSavedPaymentListFragment.this;
          if (GHSSavedPaymentListFragment.b(GHSSavedPaymentListFragment.this).getCount() == 0) {}
          for (;;)
          {
            GHSSavedPaymentListFragment.b(paramAnonymousb, bool);
            return;
            bool = false;
          }
        }
      });
      t.a();
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, f.USER_ACCOUNT_INFO, "saved payment details"));
      return;
    }
    if (r.getCount() == 0) {}
    for (boolean bool = true;; bool = false)
    {
      a(bool);
      break;
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (t != null)
    {
      t.g();
      t = null;
    }
    if (u != null)
    {
      u.g();
      u = null;
    }
    ((GHSBaseActivity)getActivity()).a(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSSavedPaymentListFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */