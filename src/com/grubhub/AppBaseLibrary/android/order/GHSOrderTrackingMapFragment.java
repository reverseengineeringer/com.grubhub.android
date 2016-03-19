package com.grubhub.AppBaseLibrary.android.order;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import com.google.android.gms.maps.SupportMapFragment;
import com.google.android.gms.maps.c;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.MarkerOptions;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryLookupDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGeoInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.images.GHSNetworkImageView;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import java.util.LinkedHashMap;

public class GHSOrderTrackingMapFragment
  extends Fragment
{
  private String a;
  private String b;
  private LinkedHashMap<String, GHSIDeliveryDataModel> c;
  private ViewGroup d;
  private View e;
  private GHSLoadingViewFlipper f;
  private GHSTextView g;
  private GHSTextView h;
  private View i;
  private RelativeLayout j;
  private RelativeLayout k;
  private GHSTextView l;
  private GHSTextView m;
  private GHSNetworkImageView n;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e.a o;
  
  public static GHSOrderTrackingMapFragment a(String paramString)
  {
    GHSOrderTrackingMapFragment localGHSOrderTrackingMapFragment = new GHSOrderTrackingMapFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("order_number", paramString);
    localGHSOrderTrackingMapFragment.setArguments(localBundle);
    return localGHSOrderTrackingMapFragment;
  }
  
  private void a()
  {
    o = new com.grubhub.AppBaseLibrary.android.dataServices.a.e.a(getActivity(), a, new i()new i
    {
      public void a()
      {
        GHSOrderTrackingMapFragment.a(GHSOrderTrackingMapFragment.this).setBackgroundColor(getResources().getColor(2131558468));
        GHSOrderTrackingMapFragment.a(GHSOrderTrackingMapFragment.this).a();
      }
    }, new i()
    {
      public void a()
      {
        GHSOrderTrackingMapFragment.a(GHSOrderTrackingMapFragment.this, null);
      }
    });
    o.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIDeliveryLookupDataModel paramAnonymousGHSIDeliveryLookupDataModel)
      {
        if (paramAnonymousGHSIDeliveryLookupDataModel != null)
        {
          GHSOrderTrackingMapFragment.b(GHSOrderTrackingMapFragment.this);
          return;
        }
        GHSOrderTrackingMapFragment.c(GHSOrderTrackingMapFragment.this);
      }
    });
    o.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        GHSOrderTrackingMapFragment.a(GHSOrderTrackingMapFragment.this, null);
        GHSOrderTrackingMapFragment.c(GHSOrderTrackingMapFragment.this);
      }
    });
    o.a();
  }
  
  private void a(final GHSIGeoInfo paramGHSIGeoInfo1, final GHSIGeoInfo paramGHSIGeoInfo2, final GHSIGeoInfo paramGHSIGeoInfo3, final String paramString)
  {
    if ((com.google.android.gms.common.e.a(getActivity()) != 0) || (paramGHSIGeoInfo2 == null) || (com.grubhub.AppBaseLibrary.android.utils.f.a(paramGHSIGeoInfo2.getLatitude())) || (com.grubhub.AppBaseLibrary.android.utils.f.a(paramGHSIGeoInfo2.getLongitude())))
    {
      e();
      return;
    }
    SupportMapFragment localSupportMapFragment = SupportMapFragment.a();
    ag localag = getChildFragmentManager().a();
    localag.b(2131689930, localSupportMapFragment);
    localag.a();
    if (localSupportMapFragment == null)
    {
      e();
      return;
    }
    localSupportMapFragment.a(new com.google.android.gms.maps.e()
    {
      public void a(c paramAnonymousc)
      {
        LatLng localLatLng = new LatLng(Double.valueOf(paramGHSIGeoInfo2.getLatitude()).doubleValue(), Double.valueOf(paramGHSIGeoInfo2.getLongitude()).doubleValue());
        com.google.android.gms.maps.model.d locald = new com.google.android.gms.maps.model.d();
        locald.a(localLatLng);
        com.grubhub.AppBaseLibrary.android.utils.e.b.a(a, b, 0.0F);
        paramAnonymousc.a(new MarkerOptions().a(localLatLng).a(com.google.android.gms.maps.model.b.a(2130837825)));
        if ((paramGHSIGeoInfo1 != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIGeoInfo1.getLatitude())) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIGeoInfo1.getLongitude())))
        {
          localLatLng = new LatLng(Double.valueOf(paramGHSIGeoInfo1.getLatitude()).doubleValue(), Double.valueOf(paramGHSIGeoInfo1.getLongitude()).doubleValue());
          locald.a(localLatLng);
          com.grubhub.AppBaseLibrary.android.utils.e.b.a(a, b, 0.0F);
          paramAnonymousc.a(new MarkerOptions().a(localLatLng).a(com.google.android.gms.maps.model.b.a(2130837838)));
        }
        int i;
        if ((paramGHSIGeoInfo3 != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIGeoInfo3.getLatitude())) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIGeoInfo3.getLongitude())))
        {
          localLatLng = new LatLng(Double.valueOf(paramGHSIGeoInfo3.getLatitude()).doubleValue(), Double.valueOf(paramGHSIGeoInfo3.getLongitude()).doubleValue());
          locald.a(localLatLng);
          com.grubhub.AppBaseLibrary.android.utils.e.b.a(a, b, 0.0F);
          int j = 2130837792;
          f localf = f.fromString(paramString);
          i = j;
          if (localf != null)
          {
            i = j;
            if (localf != f.WALKING) {
              switch (GHSOrderTrackingMapFragment.7.b[localf.ordinal()])
              {
              default: 
                i = j;
              }
            }
          }
        }
        for (;;)
        {
          paramAnonymousc.a(new MarkerOptions().a(localLatLng).a(com.google.android.gms.maps.model.b.a(i)));
          i = getResources().getDisplayMetrics().widthPixels;
          paramAnonymousc.a(com.google.android.gms.maps.b.a(locald.a(), (int)(i * 0.15D)));
          return;
          i = 2130837790;
          continue;
          i = 2130837789;
          continue;
          i = 2130837791;
        }
      }
    });
  }
  
  private void a(String paramString, boolean paramBoolean)
  {
    if (com.grubhub.AppBaseLibrary.android.utils.f.a(paramString))
    {
      d();
      return;
    }
    if (paramBoolean)
    {
      h.setText(String.format(getString(2131231726), new Object[] { paramString }));
      return;
    }
    h.setText(String.format(getString(2131231727), new Object[] { paramString }));
  }
  
  private void a(boolean paramBoolean, String paramString)
  {
    if (paramBoolean)
    {
      com.grubhub.AppBaseLibrary.android.dataServices.net.images.a.a(getActivity()).a(paramString, paramString, n, 2130837729);
      k.setVisibility(8);
      n.setVisibility(0);
      return;
    }
    k.setVisibility(0);
    n.setVisibility(8);
  }
  
  private void b()
  {
    c = GHSApplication.a().b().ae();
    if ((c == null) || (!c.containsKey(b)))
    {
      c();
      return;
    }
    Object localObject = (GHSIDeliveryDataModel)c.get(b);
    d locald = d.fromString(((GHSIDeliveryDataModel)localObject).getStatus());
    if ((locald == null) || (locald == d.ESTIMATED))
    {
      c();
      return;
    }
    g.setText(String.format(getString(2131231731), new Object[] { ((GHSIDeliveryDataModel)localObject).getOrderId() }));
    switch (7.a[locald.ordinal()])
    {
    default: 
    case 1: 
    case 2: 
      for (localObject = "order tracking details-map";; localObject = "order tracking details-map")
      {
        h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_STATUS_TRACKING, (String)localObject));
        f.b();
        return;
        a(((GHSIDeliveryDataModel)localObject).getDropoffTimeRange(), false);
        a(false, null);
        a(((GHSIDeliveryDataModel)localObject).getPickupLocation(), ((GHSIDeliveryDataModel)localObject).getDropoffLocation(), null, null);
        b(false, null);
        l.setText(2131231722);
      }
    case 3: 
      a(((GHSIDeliveryDataModel)localObject).getDropoffTimeRange(), false);
      a(true, ((GHSIDeliveryDataModel)localObject).getCourierPhoto());
      a(null, ((GHSIDeliveryDataModel)localObject).getDropoffLocation(), ((GHSIDeliveryDataModel)localObject).getCourierLocation(), ((GHSIDeliveryDataModel)localObject).getCourierVehicleType());
      if (!com.grubhub.AppBaseLibrary.android.utils.f.b(((GHSIDeliveryDataModel)localObject).getCourierFirstName())) {
        break;
      }
    }
    for (localObject = String.format(getString(2131231729), new Object[] { ((GHSIDeliveryDataModel)localObject).getCourierFirstName() });; localObject = null)
    {
      b(true, (String)localObject);
      l.setText(2131231728);
      localObject = "order tracking details-map";
      break;
      if (((GHSIDeliveryDataModel)localObject).isDropoffTimeEstimate()) {
        d();
      }
      for (;;)
      {
        a(true, ((GHSIDeliveryDataModel)localObject).getCourierPhoto());
        e();
        b(false, null);
        if (!com.grubhub.AppBaseLibrary.android.utils.f.b(((GHSIDeliveryDataModel)localObject).getCourierFirstName())) {
          break label444;
        }
        l.setText(String.format(getString(2131231725), new Object[] { ((GHSIDeliveryDataModel)localObject).getCourierFirstName() }));
        localObject = "order tracking details-delivered";
        break;
        a(((GHSIDeliveryDataModel)localObject).getDropoffTime(), true);
      }
      label444:
      l.setText(2131231724);
      localObject = "order tracking details-delivered";
      break;
      localObject = "order tracking details-canceled";
      d();
      a(false, null);
      e();
      b(true, getString(2131231721));
      l.setText(2131231720);
      break;
    }
  }
  
  private void b(boolean paramBoolean, String paramString)
  {
    if ((!paramBoolean) || (com.grubhub.AppBaseLibrary.android.utils.f.a(paramString)))
    {
      m.setVisibility(8);
      return;
    }
    m.setText(paramString);
    m.setVisibility(0);
  }
  
  private void c()
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_STATUS_TRACKING, "order tracking details-error"));
    f.a(e, new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSOrderTrackingMapFragment.d(GHSOrderTrackingMapFragment.this);
      }
    });
  }
  
  private void d()
  {
    h.setVisibility(8);
    d.findViewById(2131689928).setVisibility(8);
    g.setGravity(16);
    g.setPadding(12, 0, 0, 0);
  }
  
  private void e()
  {
    i.setVisibility(8);
    RelativeLayout.LayoutParams localLayoutParams = (RelativeLayout.LayoutParams)j.getLayoutParams();
    localLayoutParams.addRule(12, 0);
    localLayoutParams.addRule(3, 2131689926);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    b = getArguments().getString("order_number");
    paramBundle = GHSApplication.a().b().N();
    if (paramBundle != null) {}
    for (paramBundle = paramBundle.getUdid();; paramBundle = null)
    {
      a = paramBundle;
      setHasOptionsMenu(true);
      setRetainInstance(true);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    d = ((ViewGroup)paramLayoutInflater.inflate(2130903137, paramViewGroup, false));
    f = ((GHSLoadingViewFlipper)d.findViewById(2131689925));
    e = paramLayoutInflater.inflate(2130903212, f, false);
    g = ((GHSTextView)d.findViewById(2131689927));
    h = ((GHSTextView)d.findViewById(2131689929));
    i = d.findViewById(2131689930);
    j = ((RelativeLayout)d.findViewById(2131689931));
    k = ((RelativeLayout)d.findViewById(2131689932));
    l = ((GHSTextView)d.findViewById(2131689939));
    m = ((GHSTextView)d.findViewById(2131689938));
    n = ((GHSNetworkImageView)d.findViewById(2131689937));
    return d;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      getActivity().onBackPressed();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity();
    ActionBar localActionBar = paramMenu.getActionBar();
    if (localActionBar != null) {
      localActionBar.setDisplayHomeAsUpEnabled(true);
    }
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230857);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    a();
    h.a().a(true);
  }
  
  public void onStop()
  {
    super.onStop();
    if (o != null)
    {
      o.g();
      o = null;
    }
    h.a().f();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.GHSOrderTrackingMapFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */