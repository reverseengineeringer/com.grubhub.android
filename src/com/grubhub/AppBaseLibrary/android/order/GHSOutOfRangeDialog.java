package com.grubhub.AppBaseLibrary.android.order;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.p;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPickupInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Map;

public class GHSOutOfRangeDialog
  extends DialogFragment
{
  private View a;
  private View b;
  private View c;
  private View d;
  private GHSFilterSortCriteria e;
  private h f;
  private String g;
  private String h;
  private boolean i;
  private GHSIAddressDataModel j;
  private i k = i.ORDER;
  private String l;
  private p m;
  
  public static GHSOutOfRangeDialog a(String paramString1, String paramString2, boolean paramBoolean, GHSIAddressDataModel paramGHSIAddressDataModel, i parami, String paramString3)
  {
    GHSOutOfRangeDialog localGHSOutOfRangeDialog = new GHSOutOfRangeDialog();
    Bundle localBundle = new Bundle();
    localBundle.putString("restaurant_id", paramString1);
    localBundle.putString("restaurant_name", paramString2);
    localBundle.putBoolean("offers_pickup", paramBoolean);
    localBundle.putParcelable("search_address", a.a(paramGHSIAddressDataModel));
    localBundle.putSerializable("mode", parami);
    localBundle.putString("location", paramString3);
    localGHSOutOfRangeDialog.setArguments(localBundle);
    return localGHSOutOfRangeDialog;
  }
  
  private void a(final GHSICartDataModel paramGHSICartDataModel)
  {
    final com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = localb.N();
    GHSPickupInfoDataModel localGHSPickupInfoDataModel = new GHSPickupInfoDataModel();
    if (localGHSIUserAuthDataModel != null)
    {
      if ((f.b(localGHSIUserAuthDataModel.getFirstName())) && (f.b(localGHSIUserAuthDataModel.getLastName()))) {
        localGHSPickupInfoDataModel.setName(String.format("%s %s", new Object[] { localGHSIUserAuthDataModel.getFirstName(), localGHSIUserAuthDataModel.getLastName() }));
      }
      localGHSPickupInfoDataModel.setPhone(paramGHSICartDataModel.getCustomerContactPhone());
      localGHSPickupInfoDataModel.setEmail(localGHSIUserAuthDataModel.getEmail());
    }
    paramGHSICartDataModel = getActivity();
    m = new p(paramGHSICartDataModel, true, localGHSPickupInfoDataModel, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSOutOfRangeDialog.a(GHSOutOfRangeDialog.this, false);
        GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this, true);
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSOutOfRangeDialog.a(GHSOutOfRangeDialog.this, null);
      }
    });
    m.a(new e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this).setOrderType(g.PICKUP);
        localb.a(GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this));
        dismiss();
        if (GHSOutOfRangeDialog.c(GHSOutOfRangeDialog.this) != null) {
          GHSOutOfRangeDialog.c(GHSOutOfRangeDialog.this).r();
        }
      }
    });
    m.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (paramGHSICartDataModel != null) {
          c.a(paramGHSICartDataModel, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), getResources().getString(2131231717), null, null, null);
        }
        GHSOutOfRangeDialog.a(GHSOutOfRangeDialog.this, true);
        GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this, false);
      }
    });
    m.a();
  }
  
  private void a(boolean paramBoolean)
  {
    a.setEnabled(paramBoolean);
    b.setEnabled(paramBoolean);
    c.setEnabled(paramBoolean);
  }
  
  private void b(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      d.setVisibility(0);
      return;
    }
    d.setVisibility(4);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    Fragment localFragment = getParentFragment();
    if ((localFragment instanceof h)) {
      f = ((h)getParentFragment());
    }
    do
    {
      return;
      if (localFragment != null)
      {
        localFragment = localFragment.getParentFragment();
        if ((localFragment != null) && ((localFragment instanceof h)))
        {
          f = ((h)localFragment);
          return;
        }
      }
    } while (!(paramActivity instanceof h));
    f = ((h)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    g = getArguments().getString("restaurant_id");
    h = getArguments().getString("restaurant_name");
    i = getArguments().getBoolean("offers_pickup");
    j = ((GHSIAddressDataModel)getArguments().getParcelable("search_address"));
    k = ((i)getArguments().getSerializable("mode"));
    l = getArguments().getString("location");
    e = GHSApplication.a().b().z();
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = super.onCreateDialog(paramBundle);
    paramBundle.setCanceledOnTouchOutside(false);
    paramBundle.getWindow().requestFeature(1);
    return paramBundle;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, final ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903103, null);
    paramViewGroup = GHSApplication.a().b();
    a = paramLayoutInflater.findViewById(2131689721);
    b = paramLayoutInflater.findViewById(2131689722);
    c = paramLayoutInflater.findViewById(2131689723);
    d = paramLayoutInflater.findViewById(2131689720);
    a.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        switch (GHSOutOfRangeDialog.8.a[GHSOutOfRangeDialog.a(GHSOutOfRangeDialog.this).ordinal()])
        {
        default: 
          paramAnonymousView = paramViewGroup.X();
          if (paramAnonymousView != null) {
            GHSOutOfRangeDialog.a(GHSOutOfRangeDialog.this, paramAnonymousView);
          }
          break;
        }
        do
        {
          return;
          GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this).setOrderType(g.PICKUP);
          paramViewGroup.a(GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this));
          dismiss();
        } while (GHSOutOfRangeDialog.c(GHSOutOfRangeDialog.this) == null);
        GHSOutOfRangeDialog.c(GHSOutOfRangeDialog.this).g_();
      }
    });
    if (i) {
      a.setVisibility(0);
    }
    for (;;)
    {
      b.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this).setAddress(GHSOutOfRangeDialog.d(GHSOutOfRangeDialog.this), a.b(GHSOutOfRangeDialog.d(GHSOutOfRangeDialog.this)));
          GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this).setOrderType(g.DELIVERY);
          GHSApplication.a().b().a(GHSOutOfRangeDialog.b(GHSOutOfRangeDialog.this));
          GHSApplication.a().b().l(true);
          if (GHSOutOfRangeDialog.c(GHSOutOfRangeDialog.this) != null) {
            GHSOutOfRangeDialog.c(GHSOutOfRangeDialog.this).s();
          }
        }
      });
      c.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          dismiss();
        }
      });
      ((TextView)paramLayoutInflater.findViewById(2131689719)).setText(String.format(paramLayoutInflater.getContext().getString(2131231736), new Object[] { h }));
      return paramLayoutInflater;
      a.setVisibility(8);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    HashMap localHashMap = new HashMap();
    localHashMap.put("restaurant_id", g);
    localHashMap.put("restaurant_name", h);
    localHashMap.put("offers_pickup", Boolean.toString(i));
    localHashMap.put("search_address", a.b(j));
    localHashMap.put("mode", k.toString());
    localHashMap.put("location", l);
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("DOES_NOT_DELIVER", localHashMap);
  }
  
  public void onStop()
  {
    super.onStop();
    if (m != null)
    {
      m.g();
      m = null;
      a(true);
      b(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */