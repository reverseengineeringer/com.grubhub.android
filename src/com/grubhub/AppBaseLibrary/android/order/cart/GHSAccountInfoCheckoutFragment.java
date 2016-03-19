package com.grubhub.AppBaseLibrary.android.order.cart;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSPaymentInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSYourInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.r;
import com.grubhub.AppBaseLibrary.android.account.s;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.order.g;

public class GHSAccountInfoCheckoutFragment
  extends GHSInfoFragment
  implements com.grubhub.AppBaseLibrary.android.a, com.grubhub.AppBaseLibrary.android.account.b, com.grubhub.AppBaseLibrary.android.account.f, s
{
  private a a;
  private GHSIUserAuthDataModel b;
  private g c;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.j.b d;
  private w e;
  private com.grubhub.AppBaseLibrary.android.views.a f;
  private int g;
  
  public static GHSAccountInfoCheckoutFragment a(g paramg, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    GHSAccountInfoCheckoutFragment localGHSAccountInfoCheckoutFragment = new GHSAccountInfoCheckoutFragment();
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("order_type", paramg);
    localBundle.putBoolean("missing_name_or_pickup_phone_number", paramBoolean1);
    localBundle.putBoolean("missing_payment", paramBoolean2);
    localBundle.putBoolean("missing_address", paramBoolean3);
    localBundle.putBoolean("missing_delivery_phone_number", paramBoolean4);
    localBundle.putBoolean("missing_cross_street", paramBoolean5);
    localBundle.putBoolean("cross_street_required", paramBoolean6);
    localGHSAccountInfoCheckoutFragment.setArguments(localBundle);
    return localGHSAccountInfoCheckoutFragment;
  }
  
  private void a(boolean paramBoolean)
  {
    g += 1;
    if (getArguments().getBoolean("missing_payment"))
    {
      ag localag = e.a();
      if (paramBoolean)
      {
        localag.a(GHSPaymentInfoFragment.class.getSimpleName());
        localag.a(2130968609, 2130968615, 2130968608, 2130968616);
      }
      localag.b(2131689746, GHSPaymentInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.e.ENTER, true), GHSPaymentInfoFragment.class.getSimpleName()).a();
      e();
      return;
    }
    b(false);
  }
  
  private void b(boolean paramBoolean)
  {
    switch (5.a[c.ordinal()])
    {
    default: 
      return;
    case 2: 
      g += 1;
      Object localObject = getArguments();
      boolean bool1 = ((Bundle)localObject).getBoolean("missing_name_or_pickup_phone_number");
      boolean bool2 = ((Bundle)localObject).getBoolean("missing_payment");
      boolean bool4 = ((Bundle)localObject).getBoolean("missing_address");
      boolean bool5 = ((Bundle)localObject).getBoolean("missing_delivery_phone_number");
      boolean bool6 = ((Bundle)localObject).getBoolean("missing_cross_street");
      boolean bool3 = ((Bundle)localObject).getBoolean("cross_street_required");
      if ((bool4) || (bool5) || (bool6))
      {
        ag localag = e.a();
        if (paramBoolean)
        {
          localag.a(GHSAddressInfoFragment.class.getSimpleName());
          localag.a(2130968609, 2130968615, 2130968608, 2130968616);
        }
        GHSIAddressDataModel localGHSIAddressDataModel = GHSApplication.a().b().t();
        int i;
        if ((localGHSIAddressDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(localGHSIAddressDataModel.getId())) && ((bool5) || (bool6)))
        {
          paramBoolean = true;
          if ((bool1) || (bool2)) {
            break label269;
          }
          i = 1;
          label209:
          if (!paramBoolean) {
            break label274;
          }
          localObject = com.grubhub.AppBaseLibrary.android.account.a.EDIT;
        }
        for (;;)
        {
          localObject = GHSAddressInfoFragment.a((com.grubhub.AppBaseLibrary.android.account.a)localObject, bool3, paramBoolean, true, false);
          if (paramBoolean) {
            ((GHSAddressInfoFragment)localObject).a(localGHSIAddressDataModel);
          }
          localag.b(2131689746, (Fragment)localObject, GHSAddressInfoFragment.class.getSimpleName()).b();
          e();
          return;
          paramBoolean = false;
          break;
          label269:
          i = 0;
          break label209;
          label274:
          if (i != 0) {
            localObject = com.grubhub.AppBaseLibrary.android.account.a.VERIFY;
          } else {
            localObject = com.grubhub.AppBaseLibrary.android.account.a.ENTER;
          }
        }
      }
      d(null);
      return;
    }
    a.a(c);
  }
  
  private void e()
  {
    if (g == 0)
    {
      f.a();
      return;
    }
    if (g == 1)
    {
      f.b();
      return;
    }
    f.c();
  }
  
  public void a(String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, boolean paramBoolean)
  {
    b(paramBoolean);
  }
  
  public void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if (paramGHSIAddressDataModel != null)
    {
      com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
      paramString2 = localb.z();
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = new GHSFilterSortCriteria();
      }
      paramString1.setOrderType(g.DELIVERY);
      paramString1.setAddress(paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.a.b(paramGHSIAddressDataModel));
      localb.a(paramString1);
    }
    if (a != null) {
      a.a(c);
    }
  }
  
  public void a(String paramString1, String paramString2, final String paramString3, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      d = new com.grubhub.AppBaseLibrary.android.dataServices.a.j.b(getActivity(), paramString1, paramString2, null, null, null, new i()new i
      {
        public void a()
        {
          ((GHSBaseActivity)getActivity()).a(true);
        }
      }, new i()
      {
        public void a()
        {
          GHSAccountInfoCheckoutFragment.a(GHSAccountInfoCheckoutFragment.this, null);
          ((GHSBaseActivity)getActivity()).a(false);
        }
      });
      d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          if ((paramAnonymousGHSIUserAuthDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramAnonymousGHSIUserAuthDataModel.getToken())))
          {
            GHSApplication.a().b().h(paramString3);
            GHSAccountInfoCheckoutFragment.a(GHSAccountInfoCheckoutFragment.this, true);
          }
        }
      });
      d.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (getActivity() != null) {
            a(paramAnonymousb.getMessage(), true);
          }
        }
      });
      d.a();
      return;
    }
    GHSApplication.a().b().h(paramString3);
    a(true);
  }
  
  public void b() {}
  
  public void c() {}
  
  public void d(String paramString)
  {
    if (a != null) {
      a.a(c);
    }
  }
  
  public void d(boolean paramBoolean) {}
  
  protected void d_() {}
  
  public boolean f_()
  {
    if (e.e() > 0)
    {
      e.c();
      g -= 1;
      e();
      return true;
    }
    if ((getActivity() instanceof GHSBaseActivity))
    {
      ((GHSBaseActivity)getActivity()).b(getClass().getSimpleName());
      return true;
    }
    return false;
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    Fragment localFragment = getChildFragmentManager().a(GHSPaymentInfoFragment.class.getSimpleName());
    if (localFragment != null) {
      localFragment.onActivityResult(paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof a)) {
      a = ((a)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    c = ((g)getArguments().get("order_type"));
    b = GHSApplication.a().b().N();
    g = 0;
    if (paramBundle != null) {
      g = paramBundle.getInt("breadcrumb_position");
    }
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    int i = 1;
    boolean bool = true;
    paramLayoutInflater = paramLayoutInflater.inflate(2130903112, paramViewGroup, false);
    paramViewGroup = getArguments();
    switch (5.a[c.ordinal()])
    {
    default: 
      if ((paramViewGroup.getBoolean("missing_name_or_pickup_phone_number")) && (paramViewGroup.getBoolean("missing_payment")) && (paramViewGroup.getBoolean("missing_address")))
      {
        i = 1;
        f = new com.grubhub.AppBaseLibrary.android.views.a(getActivity(), bool);
        ((ViewGroup)paramLayoutInflater.findViewById(2131689662)).addView(f);
        if (i == 0) {
          break label245;
        }
        e();
      }
      break;
    }
    for (;;)
    {
      e = getChildFragmentManager();
      if (e.a(2131689746) == null)
      {
        if (!paramViewGroup.getBoolean("missing_name_or_pickup_phone_number")) {
          break label257;
        }
        e.a().b(2131689746, GHSYourInfoFragment.a(r.ENTER, c, b.getFirstName(), b.getLastName(), ""), GHSYourInfoFragment.class.getSimpleName()).a();
      }
      return paramLayoutInflater;
      if ((paramViewGroup.getBoolean("missing_name_or_pickup_phone_number")) && (paramViewGroup.getBoolean("missing_payment"))) {}
      for (;;)
      {
        bool = false;
        break;
        i = 0;
      }
      i = 0;
      break;
      label245:
      f.setVisibility(8);
    }
    label257:
    a(false);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    a = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      d();
      if (e.e() > 0)
      {
        e.c();
        g -= 1;
        e();
      }
      for (;;)
      {
        return true;
        if ((getActivity() instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)getActivity()).b(getClass().getSimpleName());
        }
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    getActivity().getActionBar().setDisplayHomeAsUpEnabled(true);
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putInt("breadcrumb_position", g);
  }
  
  public void onStop()
  {
    super.onStop();
    if (d != null)
    {
      d.g();
      d = null;
    }
    ((GHSBaseActivity)getActivity()).a(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSAccountInfoCheckoutFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */