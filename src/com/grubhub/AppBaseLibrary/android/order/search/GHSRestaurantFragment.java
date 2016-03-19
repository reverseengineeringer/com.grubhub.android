package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.telephony.PhoneNumberUtils;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.animation.AnimationUtils;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.ExpandableListAdapter;
import android.widget.ExpandableListView;
import android.widget.ExpandableListView.OnChildClickListener;
import android.widget.ExpandableListView.OnGroupClickListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment;
import com.grubhub.AppBaseLibrary.android.address.GHSAddressSuggestionDialogFragment;
import com.grubhub.AppBaseLibrary.android.address.GHSAddressValidationDialogFragment;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuSection;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.order.GHSOutOfRangeDialog;
import com.grubhub.AppBaseLibrary.android.views.GHSButton;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSRestaurantMenuSearchBar;
import com.grubhub.AppBaseLibrary.android.views.GHSSynchronizedHeaderView;
import com.grubhub.AppBaseLibrary.android.views.m;
import com.grubhub.AppBaseLibrary.android.views.n;
import com.grubhub.AppBaseLibrary.android.views.p;
import com.grubhub.AppBaseLibrary.android.views.s;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;

public class GHSRestaurantFragment
  extends Fragment
  implements AbsListView.OnScrollListener, com.grubhub.AppBaseLibrary.android.a, com.grubhub.AppBaseLibrary.android.account.b, com.grubhub.AppBaseLibrary.android.account.i, com.grubhub.AppBaseLibrary.android.address.a, com.grubhub.AppBaseLibrary.android.address.b, com.grubhub.AppBaseLibrary.android.order.h, c, f, s
{
  private static final String a = GHSRestaurantFragment.class.getSimpleName();
  private boolean A;
  private MenuItem B;
  private MenuItem C;
  private w D;
  private h E;
  private l F;
  private com.grubhub.AppBaseLibrary.android.order.cart.c G;
  private g H;
  private GoogleApiClient I;
  private com.google.android.gms.b.a J;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.g.b K;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.g.b L;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.c M;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e.c N;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.h O;
  private ImageView P;
  private GHSLoadingViewFlipper Q;
  private ExpandableListView R;
  private GHSRestaurantMenuSearchBar S;
  private View T;
  private m U;
  private FrameLayout V;
  private TextView W;
  private GHSSynchronizedHeaderView X;
  private String b;
  private String c;
  private String d;
  private GHSIRestaurantDataModel e;
  private GHSIFoodMenuDataModel f;
  private GHSIAddressDataModel g;
  private com.grubhub.AppBaseLibrary.android.order.g h;
  private String i = null;
  private ArrayList<String> j = new ArrayList();
  private Uri k;
  private LinkedHashSet<String> l;
  private boolean m = true;
  private int n;
  private boolean o;
  private boolean p;
  private boolean q;
  private boolean r;
  private boolean s;
  private boolean t;
  private boolean u;
  private boolean v;
  private boolean w;
  private boolean x;
  private boolean y;
  private boolean z = false;
  
  private m A()
  {
    final m localm = new m(getActivity());
    localm.a(y, l);
    localm.setCouponsVisible(true);
    localm.setDisplayMode(com.grubhub.AppBaseLibrary.android.views.q.FULL);
    localm.setRestaurantHeaderViewListener(new p()
    {
      private void a(boolean paramAnonymousBoolean)
      {
        ImageView localImageView = (ImageView)localm.findViewById(2131690283);
        if (paramAnonymousBoolean)
        {
          localImageView.setSelected(true);
          localImageView.setTag(n.TRUE);
          localImageView.setContentDescription(getString(2131231118));
          return;
        }
        localImageView.setSelected(false);
        localImageView.setTag(n.FALSE);
        localImageView.setContentDescription(getString(2131231119));
      }
      
      public void a()
      {
        GHSRestaurantDetailsFragment localGHSRestaurantDetailsFragment = GHSRestaurantDetailsFragment.a(GHSRestaurantFragment.e(GHSRestaurantFragment.this), GHSRestaurantFragment.c(GHSRestaurantFragment.this));
        GHSRestaurantFragment.g(GHSRestaurantFragment.this).a().b(2131690040, localGHSRestaurantDetailsFragment, GHSRestaurantDetailsFragment.class.getSimpleName()).a();
      }
      
      public void b()
      {
        GHSCouponFragment localGHSCouponFragment = GHSCouponFragment.a(GHSRestaurantFragment.e(GHSRestaurantFragment.this));
        GHSRestaurantFragment.g(GHSRestaurantFragment.this).a().b(2131690040, localGHSCouponFragment, GHSCouponFragment.class.getSimpleName()).a();
        com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", "see coupons list", "coupons_cta"));
      }
      
      public void c()
      {
        t();
      }
      
      public void d()
      {
        if (!GHSRestaurantFragment.h(GHSRestaurantFragment.this)) {}
        int i;
        do
        {
          return;
          GHSRestaurantFragment.a(GHSRestaurantFragment.this, 0);
          GHSRestaurantFragment.a(GHSRestaurantFragment.this, false);
          localObject = (ImageView)localm.findViewById(2131690283);
          if (((ImageView)localObject).getTag() == null) {
            ((ImageView)localObject).setTag(n.FALSE);
          }
          if (((ImageView)localObject).getTag() != n.FALSE) {
            break;
          }
          i = 1;
          localObject = getActivity();
        } while (localObject == null);
        if ((GHSRestaurantFragment.i(GHSRestaurantFragment.this) == null) || (GHSRestaurantFragment.i(GHSRestaurantFragment.this).isEmpty())) {
          GHSRestaurantFragment.a(GHSRestaurantFragment.this, new LinkedHashSet());
        }
        if (i != 0)
        {
          a(true);
          GHSRestaurantFragment.i(GHSRestaurantFragment.this).add(GHSRestaurantFragment.e(GHSRestaurantFragment.this));
          GHSApplication.a().b().a(GHSRestaurantFragment.i(GHSRestaurantFragment.this));
          if (GHSRestaurantFragment.j(GHSRestaurantFragment.this) != null) {
            GHSRestaurantFragment.j(GHSRestaurantFragment.this).y();
          }
          localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.c.a((Context)localObject, GHSRestaurantFragment.k(GHSRestaurantFragment.this), GHSRestaurantFragment.e(GHSRestaurantFragment.this), null, null);
          ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.a)localObject).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
          {
            public void a(GHSIFavoriteListDataModel paramAnonymous2GHSIFavoriteListDataModel)
            {
              GHSRestaurantFragment.a(GHSRestaurantFragment.this, 0);
              GHSRestaurantFragment.a(GHSRestaurantFragment.this, true);
            }
          });
          ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.a)localObject).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
          {
            public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymous2b)
            {
              if (GHSRestaurantFragment.l(GHSRestaurantFragment.this) < 1)
              {
                GHSRestaurantFragment.m(GHSRestaurantFragment.this);
                localObject.a();
              }
              GHSRestaurantFragment.19.a(GHSRestaurantFragment.19.this, false);
              GHSRestaurantFragment.a(GHSRestaurantFragment.this, true);
              if (GHSRestaurantFragment.j(GHSRestaurantFragment.this) != null) {
                GHSRestaurantFragment.j(GHSRestaurantFragment.this).y();
              }
              com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("FAVORITE_ERROR", new HashMap() {});
            }
          });
          ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.a)localObject).a();
        }
        for (final Object localObject = "add to favorites_cta";; localObject = "tap to unfavorite_cta")
        {
          com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("favorites", (String)localObject, ""));
          return;
          i = 0;
          break;
          a(false);
          GHSRestaurantFragment.i(GHSRestaurantFragment.this).remove(GHSRestaurantFragment.e(GHSRestaurantFragment.this));
          GHSApplication.a().b().a(GHSRestaurantFragment.i(GHSRestaurantFragment.this));
          if (GHSRestaurantFragment.j(GHSRestaurantFragment.this) != null) {
            GHSRestaurantFragment.j(GHSRestaurantFragment.this).y();
          }
          localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.c.c((Context)localObject, GHSRestaurantFragment.k(GHSRestaurantFragment.this), GHSRestaurantFragment.e(GHSRestaurantFragment.this), null, null);
          ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.c)localObject).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
          {
            public void a(GHSIFavoriteListDataModel paramAnonymous2GHSIFavoriteListDataModel)
            {
              GHSRestaurantFragment.a(GHSRestaurantFragment.this, 0);
              GHSRestaurantFragment.a(GHSRestaurantFragment.this, true);
            }
          });
          ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.c)localObject).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
          {
            public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymous2b)
            {
              if (GHSRestaurantFragment.l(GHSRestaurantFragment.this) < 1)
              {
                GHSRestaurantFragment.m(GHSRestaurantFragment.this);
                localObject.a();
              }
              GHSRestaurantFragment.19.a(GHSRestaurantFragment.19.this, true);
              GHSRestaurantFragment.a(GHSRestaurantFragment.this, true);
              if (GHSRestaurantFragment.j(GHSRestaurantFragment.this) != null) {
                GHSRestaurantFragment.j(GHSRestaurantFragment.this).y();
              }
              com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("FAVORITE_ERROR", new HashMap() {});
            }
          });
          ((com.grubhub.AppBaseLibrary.android.dataServices.a.c.c)localObject).a();
        }
      }
    });
    return localm;
  }
  
  private void B()
  {
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(e);
    if (k != null) {
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(k.getQueryParameter("utm_medium"), k.getQueryParameter("utm_source"), k.getQueryParameter("utm_campaign"), k.getQueryParameter("utm_content"), k.getQueryParameter("utm_term"));
    }
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu", b, null));
  }
  
  private void C()
  {
    boolean bool1;
    if ((e != null) && (e.isCrossStreetRequired()))
    {
      bool1 = true;
      if ((e == null) || (!e.offersPickup())) {
        break label92;
      }
    }
    label92:
    for (boolean bool2 = true;; bool2 = false)
    {
      D.a().b(2131690040, GHSSavedAddressListFragment.a(null, true, bool1, b, false, bool2), GHSSavedAddressListFragment.class.getSimpleName()).a(GHSSavedAddressListFragment.class.getSimpleName()).a();
      return;
      bool1 = false;
      break;
    }
  }
  
  private void D()
  {
    g = null;
    h = com.grubhub.AppBaseLibrary.android.order.g.PICKUP;
    U.a(e, h);
    a(null, null, h, false);
  }
  
  public static GHSRestaurantFragment a(String paramString, GHSIAddressDataModel paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.g paramg, boolean paramBoolean1, boolean paramBoolean2, Uri paramUri, boolean paramBoolean3)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("restaurant_id", paramString);
    localBundle.putParcelable("search_address", com.grubhub.AppBaseLibrary.android.order.a.a(paramGHSIAddressDataModel));
    localBundle.putSerializable("order_type", paramg);
    localBundle.putBoolean("deep_link", paramBoolean1);
    localBundle.putBoolean("one_press_back", paramBoolean2);
    localBundle.putParcelable("deep_link_data", paramUri);
    localBundle.putBoolean("requires_past_orders_refresh", paramBoolean3);
    paramString = new GHSRestaurantFragment();
    paramString.setArguments(localBundle);
    return paramString;
  }
  
  private void a(GHSIAddressDataModel paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.g paramg)
  {
    if (((o) && (e != null) && (paramGHSIAddressDataModel != null) && (paramGHSIAddressDataModel.getIsSavedAddress()) && (e.offersDeliveryToDinerLocation())) || (!e.offersDelivery()))
    {
      p = true;
      a(paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.a.b(paramGHSIAddressDataModel), paramg, false);
      return;
    }
    C();
  }
  
  private void a(GHSIAddressDataModel paramGHSIAddressDataModel, String paramString, com.grubhub.AppBaseLibrary.android.order.g paramg, boolean paramBoolean)
  {
    boolean bool = true;
    GHSICartDataModel localGHSICartDataModel = GHSApplication.a().b().X();
    if ((localGHSICartDataModel != null) && (localGHSICartDataModel.getRestaurantId() != null) && (localGHSICartDataModel.getRestaurantId().equals(b)))
    {
      a(d, paramGHSIAddressDataModel, paramg);
      return;
    }
    if ((!p) && (paramg == com.grubhub.AppBaseLibrary.android.order.g.DELIVERY) && (u) && (y))
    {
      a(paramGHSIAddressDataModel, paramg);
      return;
    }
    if ((!p) && (paramg == com.grubhub.AppBaseLibrary.android.order.g.DELIVERY) && ((paramGHSIAddressDataModel == null) || ((paramGHSIAddressDataModel != null) && (!paramGHSIAddressDataModel.getIsPrecise()))))
    {
      int i1;
      if ((e != null) && (e.offersPickup()))
      {
        i1 = 1;
        if ((!u) || (i1 == 0)) {
          break label187;
        }
      }
      for (;;)
      {
        GHSAddressValidationDialogFragment.a(paramString, bool, paramBoolean).show(D, GHSAddressValidationDialogFragment.class.getSimpleName());
        return;
        i1 = 0;
        break;
        label187:
        bool = false;
      }
    }
    if ((!p) && (o) && (paramg == com.grubhub.AppBaseLibrary.android.order.g.DELIVERY) && (e != null) && (!e.offersDeliveryToDinerLocation()))
    {
      GHSOutOfRangeDialog.a(e.getRestaurantId(), e.getRestaurantName(), e.offersPickup(), paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.i.ADD_ITEM, "restaurant menu").show(getChildFragmentManager(), GHSOutOfRangeDialog.class.getSimpleName());
      return;
    }
    a(d, paramGHSIAddressDataModel, paramg);
    p = true;
  }
  
  private void a(String paramString, GHSIAddressDataModel paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.g paramg)
  {
    boolean bool = true;
    android.support.v4.app.q localq = getActivity();
    if ((!w) && (localq != null) && (t))
    {
      w = true;
      if ((!u) || (y) || (paramGHSIAddressDataModel == null)) {
        break label98;
      }
    }
    for (;;)
    {
      paramString = GHSMenuItemFragment.a(b, paramString, paramGHSIAddressDataModel, paramg, bool, z, i, null);
      D.a().b(2131690040, paramString, GHSMenuItemFragment.class.getSimpleName()).a();
      return;
      label98:
      bool = false;
    }
  }
  
  private void a(final String paramString, final GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel, final GHSRestaurantMenuSearchBar paramGHSRestaurantMenuSearchBar)
  {
    if (paramGHSIFoodMenuDataModel != null)
    {
      paramGHSRestaurantMenuSearchBar = new WeakReference(paramGHSRestaurantMenuSearchBar);
      O = new com.grubhub.AppBaseLibrary.android.dataServices.a.h(getActivity(), paramString, paramGHSIFoodMenuDataModel, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSRestaurantFragment.a(GHSRestaurantFragment.this, null);
        }
      });
      O.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(ArrayList<GHSIFoodMenuDataModel.GHSIMenuItem> paramAnonymousArrayList)
        {
          if (paramGHSRestaurantMenuSearchBar.get() != null) {
            ((GHSRestaurantMenuSearchBar)paramGHSRestaurantMenuSearchBar.get()).a(paramAnonymousArrayList, paramString, paramGHSIFoodMenuDataModel);
          }
        }
      });
      O.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.c(GHSRestaurantFragment.x(), paramAnonymousb.getMessage());
        }
      });
      O.a();
    }
  }
  
  private void a(String paramString1, String paramString2)
  {
    android.support.v4.app.q localq = getActivity();
    if (localq != null) {
      com.grubhub.AppBaseLibrary.android.c.a(localq, paramString1, paramString2, null, null, null, null);
    }
  }
  
  private void a(final String paramString, boolean paramBoolean1, final boolean paramBoolean2)
  {
    final String str2 = null;
    GHSFilterSortCriteria localGHSFilterSortCriteria = GHSApplication.a().b().z();
    if (localGHSFilterSortCriteria == null) {
      localGHSFilterSortCriteria = new GHSFilterSortCriteria();
    }
    for (;;)
    {
      final String str1;
      if (g != null)
      {
        str1 = g.getLatitude();
        str2 = g.getLongitude();
      }
      for (;;)
      {
        M = new com.grubhub.AppBaseLibrary.android.dataServices.a.c(getActivity(), paramString, str1, str2, localGHSFilterSortCriteria.getSubOrderType(), Long.valueOf(localGHSFilterSortCriteria.getWhenFor()), paramBoolean1, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
        {
          public void a()
          {
            GHSRestaurantFragment.n(GHSRestaurantFragment.this).d();
            GHSRestaurantFragment.d(GHSRestaurantFragment.this).a();
          }
        }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
        {
          public void a()
          {
            GHSRestaurantFragment.n(GHSRestaurantFragment.this).c();
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, null);
          }
        });
        paramString = M;
        M.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
        {
          public void a(GHSIRestaurantDataModel paramAnonymousGHSIRestaurantDataModel)
          {
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, paramAnonymousGHSIRestaurantDataModel);
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, GHSApplication.a().b().P());
            if ((str1 != null) && (str2 != null)) {
              GHSRestaurantFragment.b(GHSRestaurantFragment.this, true);
            }
            if ((GHSRestaurantFragment.o(GHSRestaurantFragment.this) != null) && (GHSRestaurantFragment.o(GHSRestaurantFragment.this).getRestaurantId() != null) && (GHSRestaurantFragment.a(GHSRestaurantFragment.this) != null) && (GHSRestaurantFragment.a(GHSRestaurantFragment.this).getMenuSections() != null))
            {
              if (!paramBoolean2)
              {
                GHSRestaurantFragment.p(GHSRestaurantFragment.this);
                if ((GHSRestaurantFragment.q(GHSRestaurantFragment.this)) && (GHSRestaurantFragment.r(GHSRestaurantFragment.this)))
                {
                  if (!GHSRestaurantFragment.o(GHSRestaurantFragment.this).offersDelivery()) {
                    break label285;
                  }
                  GHSRestaurantFragment.a(GHSRestaurantFragment.this, com.grubhub.AppBaseLibrary.android.order.g.DELIVERY);
                }
              }
              for (;;)
              {
                GHSRestaurantFragment.s(GHSRestaurantFragment.this);
                GHSRestaurantFragment.t(GHSRestaurantFragment.this).a(GHSRestaurantFragment.o(GHSRestaurantFragment.this), GHSRestaurantFragment.c(GHSRestaurantFragment.this));
                GHSRestaurantFragment.a(GHSRestaurantFragment.this, GHSRestaurantFragment.a(GHSRestaurantFragment.this).findAllMenuSectionNames());
                paramAnonymousGHSIRestaurantDataModel = new i(GHSRestaurantFragment.this, GHSRestaurantFragment.a(GHSRestaurantFragment.this), LayoutInflater.from(getActivity()));
                GHSRestaurantFragment.u(GHSRestaurantFragment.this).setAdapter(paramAnonymousGHSIRestaurantDataModel);
                int j = paramAnonymousGHSIRestaurantDataModel.getGroupCount();
                int i = 0;
                while (i <= j - 1)
                {
                  GHSRestaurantFragment.u(GHSRestaurantFragment.this).expandGroup(i);
                  i += 1;
                }
                label285:
                GHSRestaurantFragment.a(GHSRestaurantFragment.this, null);
                GHSRestaurantFragment.a(GHSRestaurantFragment.this, com.grubhub.AppBaseLibrary.android.order.g.PICKUP);
              }
              GHSRestaurantFragment.d(GHSRestaurantFragment.this).b();
              if (GHSRestaurantFragment.v(GHSRestaurantFragment.this))
              {
                paramAnonymousGHSIRestaurantDataModel = (GHSRestaurantDetailsFragment)GHSRestaurantFragment.g(GHSRestaurantFragment.this).a(GHSRestaurantDetailsFragment.class.getSimpleName());
                if (paramAnonymousGHSIRestaurantDataModel != null) {
                  paramAnonymousGHSIRestaurantDataModel.a(GHSRestaurantFragment.o(GHSRestaurantFragment.this));
                }
                if (GHSRestaurantFragment.n(GHSRestaurantFragment.this) != null)
                {
                  paramAnonymousGHSIRestaurantDataModel = GHSRestaurantFragment.n(GHSRestaurantFragment.this).getSearchText();
                  if (!TextUtils.isEmpty(paramAnonymousGHSIRestaurantDataModel)) {
                    e(paramAnonymousGHSIRestaurantDataModel);
                  }
                }
                GHSRestaurantFragment.c(GHSRestaurantFragment.this, false);
              }
              if (GHSRestaurantFragment.w(GHSRestaurantFragment.this) == null)
              {
                GHSRestaurantFragment.a(GHSRestaurantFragment.this, GHSRestaurantFragment.x(GHSRestaurantFragment.this));
                if (GHSRestaurantFragment.w(GHSRestaurantFragment.this) != null) {
                  com.google.android.gms.b.c.c.a(GHSRestaurantFragment.y(GHSRestaurantFragment.this), GHSRestaurantFragment.w(GHSRestaurantFragment.this));
                }
              }
              return;
            }
            paramAnonymousGHSIRestaurantDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
            GHSRestaurantFragment.d(GHSRestaurantFragment.this).a(paramAnonymousGHSIRestaurantDataModel.getLocalizedMessage(), new View.OnClickListener()
            {
              public void onClick(View paramAnonymous2View)
              {
                d.a();
              }
            });
          }
        });
        M.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            GHSRestaurantFragment.d(GHSRestaurantFragment.this).a(paramAnonymousb.getMessage(), new View.OnClickListener()
            {
              public void onClick(View paramAnonymous2View)
              {
                a.a();
              }
            });
          }
        });
        M.a();
        return;
        str1 = null;
      }
    }
  }
  
  private com.google.android.gms.b.a y()
  {
    Object localObject2 = null;
    Object localObject1 = localObject2;
    if (getActivity() != null)
    {
      localObject1 = localObject2;
      if (com.grubhub.AppBaseLibrary.android.utils.f.b(b))
      {
        localObject1 = localObject2;
        if (e != null)
        {
          localObject1 = localObject2;
          if (com.grubhub.AppBaseLibrary.android.utils.f.b(e.getRestaurantName())) {
            localObject1 = com.google.android.gms.b.a.a("http://schema.org/ViewAction", e.getRestaurantName(), com.grubhub.AppBaseLibrary.android.utils.b.b(b), com.grubhub.AppBaseLibrary.android.utils.b.a(b, GHSApplication.a()));
          }
        }
      }
    }
    return (com.google.android.gms.b.a)localObject1;
  }
  
  private void z()
  {
    if ((e != null) && (T != null))
    {
      z = e.isPhoneOnly();
      if (z)
      {
        i = e.getRestaurantPhoneNumber();
        T.setVisibility(0);
        GHSButton localGHSButton = (GHSButton)T.findViewById(2131690267);
        localGHSButton.setText(String.format(getString(2131231684), new Object[] { PhoneNumberUtils.formatNumber(i) }));
        localGHSButton.setOnClickListener(new View.OnClickListener()
        {
          public void onClick(View paramAnonymousView)
          {
            if (GHSRestaurantFragment.f(GHSRestaurantFragment.this) != null)
            {
              paramAnonymousView = new Intent("android.intent.action.DIAL");
              paramAnonymousView.setData(Uri.parse("tel:" + GHSRestaurantFragment.f(GHSRestaurantFragment.this)));
              getActivity().startActivity(paramAnonymousView);
            }
          }
        });
      }
    }
  }
  
  public void a(int paramInt)
  {
    if ((R != null) && (R.getCount() > 0))
    {
      R.setSelectedGroup(paramInt);
      X.a(R, 0);
      X.a();
    }
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    paramString = GHSAddressInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.a.EDIT, paramBoolean1, paramBoolean2, paramString);
    paramString.a(paramGHSIAddressDataModel);
    D.a().b(2131690040, paramString, GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  public void a(final String paramString)
  {
    if (f != null)
    {
      K = new com.grubhub.AppBaseLibrary.android.dataServices.a.g.b(getActivity(), paramString, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          ((GHSBaseActivity)getActivity()).a(true);
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          ((GHSBaseActivity)getActivity()).a(false);
          GHSRestaurantFragment.a(GHSRestaurantFragment.this, null);
        }
      });
      K.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(ArrayList<GHSIAddressDataModel> paramAnonymousArrayList)
        {
          Object localObject = com.grubhub.AppBaseLibrary.android.order.a.a(paramAnonymousArrayList);
          int i;
          String str;
          if (((ArrayList)localObject).size() == 1)
          {
            i = 1;
            if (i == 0) {
              break label137;
            }
            str = com.grubhub.AppBaseLibrary.android.order.a.b((GHSIAddressDataModel)paramAnonymousArrayList.get(0));
            localObject = GHSApplication.a().b().z();
            if (localObject != null) {
              break label194;
            }
            localObject = new GHSFilterSortCriteria();
          }
          label137:
          label194:
          for (;;)
          {
            ((GHSFilterSortCriteria)localObject).setAddress((GHSIAddressDataModel)paramAnonymousArrayList.get(0), str);
            GHSApplication.a().b().a((GHSFilterSortCriteria)localObject);
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, (GHSIAddressDataModel)paramAnonymousArrayList.get(0));
            GHSRestaurantFragment.b(GHSRestaurantFragment.this, false);
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, GHSRestaurantFragment.b(GHSRestaurantFragment.this), str, GHSRestaurantFragment.c(GHSRestaurantFragment.this), true);
            return;
            i = 0;
            break;
            if (!((ArrayList)localObject).isEmpty())
            {
              GHSAddressSuggestionDialogFragment.a((ArrayList)localObject).show(GHSRestaurantFragment.g(GHSRestaurantFragment.this), GHSAddressSuggestionDialogFragment.class.getSimpleName());
              return;
            }
            GHSRestaurantFragment.b(GHSRestaurantFragment.this, false);
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, null, paramString, GHSRestaurantFragment.c(GHSRestaurantFragment.this), true);
            return;
          }
        }
      });
      K.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_LOOKUP_ZERO_RESULTS)
          {
            GHSRestaurantFragment.b(GHSRestaurantFragment.this, false);
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, null, paramString, GHSRestaurantFragment.c(GHSRestaurantFragment.this), true);
            return;
          }
          GHSRestaurantFragment.a(GHSRestaurantFragment.this, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage());
        }
      });
      K.a();
    }
  }
  
  public void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(boolean paramBoolean, String paramString)
  {
    D.a().b(2131690040, GHSAddressInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.a.ADD, paramBoolean, false, paramString), GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  public void b() {}
  
  public void b(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    String str = com.grubhub.AppBaseLibrary.android.order.a.b(paramGHSIAddressDataModel);
    GHSFilterSortCriteria localGHSFilterSortCriteria2 = GHSApplication.a().b().z();
    GHSFilterSortCriteria localGHSFilterSortCriteria1 = localGHSFilterSortCriteria2;
    if (localGHSFilterSortCriteria2 == null) {
      localGHSFilterSortCriteria1 = new GHSFilterSortCriteria();
    }
    localGHSFilterSortCriteria1.setAddress(paramGHSIAddressDataModel, str);
    GHSApplication.a().b().a(localGHSFilterSortCriteria1);
    g = paramGHSIAddressDataModel;
    o = false;
    a(g, str, h, true);
  }
  
  public void b(String paramString)
  {
    if (f != null)
    {
      d = paramString;
      a(g, com.grubhub.AppBaseLibrary.android.order.a.b(g), h, false);
    }
  }
  
  public void c()
  {
    S.clearFocus();
  }
  
  public void c(String paramString)
  {
    D.b(GHSSavedAddressListFragment.class.getSimpleName(), 1);
    Object localObject = GHSApplication.a().b().R();
    if (localObject != null)
    {
      localObject = ((ArrayList)localObject).iterator();
      while (((Iterator)localObject).hasNext())
      {
        GHSIAddressDataModel localGHSIAddressDataModel = (GHSIAddressDataModel)((Iterator)localObject).next();
        if ((localGHSIAddressDataModel != null) && (paramString != null) && (paramString.equals(localGHSIAddressDataModel.getId())))
        {
          g = localGHSIAddressDataModel;
          p = true;
          o = false;
          a(g, com.grubhub.AppBaseLibrary.android.order.a.b(g), h, false);
        }
      }
    }
  }
  
  public void d()
  {
    g = null;
    h = com.grubhub.AppBaseLibrary.android.order.g.PICKUP;
    U.a(e, h);
    a(null, null, h, true);
  }
  
  public void d(String paramString)
  {
    D.a(GHSAddressInfoFragment.class.getSimpleName(), 1);
    GHSSavedAddressListFragment localGHSSavedAddressListFragment = (GHSSavedAddressListFragment)D.a(GHSSavedAddressListFragment.class.getSimpleName());
    if (localGHSSavedAddressListFragment != null) {
      localGHSSavedAddressListFragment.a(paramString);
    }
  }
  
  public void e()
  {
    w = false;
  }
  
  public void e(String paramString)
  {
    a(paramString, f, S);
  }
  
  public void f()
  {
    r = false;
    Fragment localFragment = D.a(GHSMenuCategoryJumperFragment.class.getSimpleName());
    if (localFragment != null)
    {
      D.a().a(localFragment).a();
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu", b, null));
      if (U != null) {
        U.a();
      }
    }
  }
  
  public boolean f_()
  {
    Fragment localFragment = D.a(2131690040);
    boolean bool;
    if (localFragment != null) {
      if ((localFragment instanceof com.grubhub.AppBaseLibrary.android.a)) {
        bool = ((com.grubhub.AppBaseLibrary.android.a)localFragment).f_();
      }
    }
    for (;;)
    {
      if (bool)
      {
        return true;
        if (((localFragment instanceof GHSAddressInfoFragment)) || ((localFragment instanceof GHSSavedAddressListFragment)))
        {
          D.d();
          bool = true;
        }
      }
      else
      {
        if (S.a())
        {
          S.b();
          return true;
        }
        if (x)
        {
          x = false;
          return false;
        }
        if ((u) && (v) && (E != null))
        {
          E.i();
          return false;
        }
        return false;
      }
      bool = false;
    }
  }
  
  public void g()
  {
    Fragment localFragment = D.a(GHSCouponFragment.class.getSimpleName());
    if (localFragment != null)
    {
      D.a().a(localFragment).a();
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu", b, null));
      if (U != null) {
        U.a();
      }
    }
  }
  
  public void g_()
  {
    D();
  }
  
  public void h()
  {
    D.b(GHSSavedAddressListFragment.class.getSimpleName(), 1);
    D();
  }
  
  public void i()
  {
    Fragment localFragment = D.a(GHSMenuItemFragment.class.getSimpleName());
    if (localFragment != null)
    {
      D.a().a(localFragment).b();
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu", b, null));
      if (U != null) {
        U.a();
      }
    }
  }
  
  public void j()
  {
    Fragment localFragment = D.a(GHSRestaurantDetailsFragment.class.getSimpleName());
    if (localFragment != null)
    {
      D.a().a(localFragment).a();
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu", b, null));
      if (U != null) {
        U.a();
      }
    }
  }
  
  public void k()
  {
    if (D.a(GHSReviewsFragment.class.getSimpleName()) != null)
    {
      D.d();
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu", b, null));
      if (U != null) {
        U.a();
      }
    }
  }
  
  public void l()
  {
    Fragment localFragment = D.a(GHSMenuItemFragment.class.getSimpleName());
    if (localFragment != null) {
      D.a().a(localFragment).b();
    }
    S.b();
    q = true;
  }
  
  public void m() {}
  
  public GHSIRestaurantDataModel n()
  {
    return e;
  }
  
  public void o()
  {
    a(b, true, true);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof h)) {
      E = ((h)paramActivity);
    }
    if ((paramActivity instanceof l)) {
      F = ((l)paramActivity);
    }
    if ((paramActivity instanceof com.grubhub.AppBaseLibrary.android.order.cart.c)) {
      G = ((com.grubhub.AppBaseLibrary.android.order.cart.c)paramActivity);
    }
    if ((paramActivity instanceof g)) {
      H = ((g)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    D = getChildFragmentManager();
    Object localObject = getArguments();
    b = ((Bundle)localObject).getString("restaurant_id");
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb;
    if (paramBundle != null)
    {
      g = ((GHSIAddressDataModel)paramBundle.getParcelable("search_address"));
      h = ((com.grubhub.AppBaseLibrary.android.order.g)paramBundle.getSerializable("order_type"));
      A = paramBundle.getBoolean("requires_past_orders_refresh");
      p = paramBundle.getBoolean("address_validated", false);
      u = ((Bundle)localObject).getBoolean("deep_link");
      v = ((Bundle)localObject).getBoolean("one_press_back");
      k = ((Uri)((Bundle)localObject).getParcelable("deep_link_data"));
      localb = GHSApplication.a().b();
      y = GHSApplication.b(getActivity());
      if (y)
      {
        localObject = localb.N();
        if (localObject == null) {
          break label264;
        }
      }
    }
    label264:
    for (localObject = ((GHSIUserAuthDataModel)localObject).getUdid();; localObject = null)
    {
      c = ((String)localObject);
      l = localb.E();
      if (paramBundle != null) {
        s = true;
      }
      setHasOptionsMenu(true);
      I = new GoogleApiClient.Builder(getActivity()).addApi(com.google.android.gms.b.c.a).build();
      return;
      g = ((GHSIAddressDataModel)((Bundle)localObject).getParcelable("search_address"));
      h = ((com.grubhub.AppBaseLibrary.android.order.g)((Bundle)localObject).getSerializable("order_type"));
      A = ((Bundle)localObject).getBoolean("requires_past_orders_refresh");
      p = false;
      break;
    }
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131820544, paramMenu);
    paramMenuInflater = getActivity();
    if ((paramMenuInflater != null) && ((paramMenuInflater instanceof com.grubhub.AppBaseLibrary.android.e))) {
      ((com.grubhub.AppBaseLibrary.android.e)paramMenuInflater).d(4);
    }
    C = paramMenu.findItem(2131690344);
    if ((y) && (GHSApplication.a().b().b()))
    {
      C.setVisible(true);
      B = paramMenu.findItem(2131690345);
      B.setActionView(2130903063);
      paramMenu = B.getActionView();
      paramMenu.setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          if (GHSRestaurantFragment.z(GHSRestaurantFragment.this) != null) {
            GHSRestaurantFragment.z(GHSRestaurantFragment.this).l();
          }
        }
      });
      P = ((ImageView)paramMenu.findViewById(2131689585));
      paramMenu = (TextView)paramMenu.findViewById(2131689586);
      paramMenuInflater = GHSApplication.a().b().X();
      if ((paramMenuInflater == null) || (paramMenuInflater.getSubtotal() == null)) {
        break label256;
      }
      paramMenu.setText(String.format(Locale.US, getString(2131231830), new Object[] { paramMenuInflater.getSubtotal() }));
    }
    for (;;)
    {
      if (q)
      {
        paramMenu = AnimationUtils.loadAnimation(P.getContext(), 2130968626);
        P.startAnimation(paramMenu);
        q = false;
      }
      return;
      C.setVisible(false);
      break;
      label256:
      paramMenu.setText("$0.00");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903146, paramViewGroup, false);
    Q = ((GHSLoadingViewFlipper)paramLayoutInflater.findViewById(2131690033));
    V = ((FrameLayout)paramLayoutInflater.findViewById(2131690037));
    W = ((TextView)V.findViewById(2131690199));
    X = ((GHSSynchronizedHeaderView)paramLayoutInflater.findViewById(2131690038));
    X.setAlternateHeader(V);
    paramViewGroup = (ViewGroup)paramLayoutInflater.findViewById(2131690039);
    S = ((GHSRestaurantMenuSearchBar)paramLayoutInflater.findViewById(2131690031));
    S.setSearchResultsContainer(paramViewGroup);
    S.setSearchBarListener(this);
    R = ((ExpandableListView)paramLayoutInflater.findViewById(2131690035));
    R.setGroupIndicator(null);
    R.setClickable(true);
    R.setOnScrollListener(this);
    U = A();
    R.addHeaderView(U);
    T = paramLayoutInflater.findViewById(2131690036);
    z();
    R.setOnChildClickListener(new ExpandableListView.OnChildClickListener()
    {
      public boolean onChildClick(ExpandableListView paramAnonymousExpandableListView, View paramAnonymousView, int paramAnonymousInt1, int paramAnonymousInt2, long paramAnonymousLong)
      {
        if (GHSRestaurantFragment.a(GHSRestaurantFragment.this) != null)
        {
          GHSRestaurantFragment.a(GHSRestaurantFragment.this, GHSRestaurantFragment.a(GHSRestaurantFragment.this).getMenuItemIdBySectionPosition(paramAnonymousInt1, paramAnonymousInt2));
          GHSRestaurantFragment.a(GHSRestaurantFragment.this, GHSRestaurantFragment.b(GHSRestaurantFragment.this), com.grubhub.AppBaseLibrary.android.order.a.b(GHSRestaurantFragment.b(GHSRestaurantFragment.this)), GHSRestaurantFragment.c(GHSRestaurantFragment.this), false);
          if (!GHSRestaurantFragment.a(GHSRestaurantFragment.this).isMenuItemPopular(paramAnonymousInt1, paramAnonymousInt2)) {
            break label153;
          }
          paramAnonymousView = "menu item-badged_cta";
          paramAnonymousExpandableListView = "";
          ArrayList localArrayList = GHSRestaurantFragment.a(GHSRestaurantFragment.this).findAllMenuSectionNames();
          if (paramAnonymousInt1 < localArrayList.size())
          {
            paramAnonymousExpandableListView = (String)localArrayList.get(paramAnonymousInt1);
            if (!paramAnonymousExpandableListView.equals("Most Popular")) {
              break label159;
            }
            paramAnonymousExpandableListView = "menu category_most popular";
          }
        }
        for (;;)
        {
          com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("menu item interactions", paramAnonymousView, paramAnonymousExpandableListView));
          return false;
          label153:
          paramAnonymousView = "menu item-not badged_cta";
          break;
          label159:
          if (paramAnonymousExpandableListView.equals("Previously Ordered")) {
            paramAnonymousExpandableListView = "menu category_recently ordered";
          } else {
            paramAnonymousExpandableListView = "menu category_other menu categories";
          }
        }
      }
    });
    R.setOnGroupClickListener(new ExpandableListView.OnGroupClickListener()
    {
      public boolean onGroupClick(ExpandableListView paramAnonymousExpandableListView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        return true;
      }
    });
    return paramLayoutInflater;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    int i1 = paramMenuItem.getItemId();
    if (i1 == 16908332)
    {
      x = true;
      getActivity().onBackPressed();
      return true;
    }
    if (i1 == 2131690344)
    {
      F.c(b);
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    t = false;
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
      ((GHSBaseActivity)paramMenu).b(2131230851);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    android.support.v4.app.q localq = getActivity();
    if ((localq != null) && ((localq instanceof com.grubhub.AppBaseLibrary.android.e))) {
      ((com.grubhub.AppBaseLibrary.android.e)localq).d(false);
    }
    if (U != null) {
      U.a();
    }
    t = true;
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    paramBundle.putParcelable("search_address", com.grubhub.AppBaseLibrary.android.order.a.a(g));
    paramBundle.putSerializable("order_type", h);
    paramBundle.putBoolean("address_validated", p);
    paramBundle.putBoolean("requires_past_orders_refresh", A);
    super.onSaveInstanceState(paramBundle);
  }
  
  public void onScroll(AbsListView paramAbsListView, int paramInt1, int paramInt2, int paramInt3)
  {
    ExpandableListAdapter localExpandableListAdapter = R.getExpandableListAdapter();
    int i1 = ExpandableListView.getPackedPositionGroup(R.getExpandableListPosition(paramInt1));
    int i2 = R.getHeaderViewsCount();
    View localView;
    if ((paramInt1 <= i2) && (i2 <= paramInt1 + paramInt2))
    {
      localView = R.getChildAt(i2 - paramInt1);
      X.setSyncView(localView);
      X.a(paramAbsListView, paramInt1, paramInt2, paramInt3);
      if ((localExpandableListAdapter != null) && ((paramInt1 != 0) || ((localView != null) && (localView.getTop() <= X.getBottom())))) {
        break label131;
      }
      V.setVisibility(4);
    }
    label131:
    do
    {
      return;
      X.setSyncView(null);
      localView = null;
      break;
      paramAbsListView = localExpandableListAdapter.getGroup(i1);
    } while (!(paramAbsListView instanceof GHSIFoodMenuDataModel.GHSIMenuSection));
    V.setVisibility(0);
    paramAbsListView = ((GHSIFoodMenuDataModel.GHSIMenuSection)paramAbsListView).getMenuSectionName();
    W.setText(paramAbsListView);
    if ((paramAbsListView != null) && (paramAbsListView.equals(getString(2131231630)))) {
      V.setBackgroundResource(2131558476);
    }
    for (;;)
    {
      X.setSyncView(null);
      return;
      if (paramAbsListView.equals(getString(2131231631))) {
        V.setBackgroundResource(2131558478);
      } else {
        V.setBackgroundResource(2131558474);
      }
    }
  }
  
  public void onScrollStateChanged(AbsListView paramAbsListView, int paramInt)
  {
    X.a(paramAbsListView, paramInt);
  }
  
  public void onStart()
  {
    super.onStart();
    if ((e == null) || (f == null))
    {
      S.d();
      if (A)
      {
        N = new com.grubhub.AppBaseLibrary.android.dataServices.a.e.c(getActivity(), c, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
        {
          public void a()
          {
            GHSRestaurantFragment.d(GHSRestaurantFragment.this).a();
          }
        }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
        {
          public void a()
          {
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, null);
          }
        });
        N.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
        {
          public void a(GHSIPastOrderListDataModel paramAnonymousGHSIPastOrderListDataModel)
          {
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, GHSRestaurantFragment.e(GHSRestaurantFragment.this), false, false);
          }
        });
        N.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            GHSRestaurantFragment.a(GHSRestaurantFragment.this, GHSRestaurantFragment.e(GHSRestaurantFragment.this), false, false);
          }
        });
        N.a();
      }
    }
    for (;;)
    {
      I.connect();
      if (J != null) {
        com.google.android.gms.b.c.c.a(I, J);
      }
      return;
      a(b, false, false);
      continue;
      B();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    I.disconnect();
    if (J != null) {
      com.google.android.gms.b.c.c.b(I, J);
    }
    if (M != null)
    {
      M.g();
      M = null;
    }
    if (L != null)
    {
      L.g();
      L = null;
    }
    if (K != null)
    {
      K.g();
      K = null;
    }
    if (O != null)
    {
      O.g();
      O = null;
    }
    if (N != null)
    {
      N.g();
      N = null;
    }
    if ((getActivity() instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)getActivity()).a(false);
    }
  }
  
  public void p()
  {
    if (E != null) {
      E.j();
    }
  }
  
  public void q()
  {
    if (E != null) {
      E.k();
    }
  }
  
  public void r() {}
  
  public void s()
  {
    android.support.v4.app.q localq = getActivity();
    if ((localq instanceof com.grubhub.AppBaseLibrary.android.order.h))
    {
      com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
      GHSFilterSortCriteria localGHSFilterSortCriteria2 = localb.z();
      GHSFilterSortCriteria localGHSFilterSortCriteria1 = localGHSFilterSortCriteria2;
      if (localGHSFilterSortCriteria2 == null) {
        localGHSFilterSortCriteria1 = new GHSFilterSortCriteria();
      }
      localGHSFilterSortCriteria1.setAddress(g, com.grubhub.AppBaseLibrary.android.order.a.b(g));
      localGHSFilterSortCriteria1.setOrderType(com.grubhub.AppBaseLibrary.android.order.g.DELIVERY);
      localb.a(localGHSFilterSortCriteria1);
      ((com.grubhub.AppBaseLibrary.android.order.h)localq).s();
    }
  }
  
  public void t()
  {
    GHSReviewsFragment localGHSReviewsFragment = GHSReviewsFragment.a(b);
    D.a().b(2131690040, localGHSReviewsFragment, GHSReviewsFragment.class.getSimpleName()).a(GHSReviewsFragment.class.getSimpleName()).a();
  }
  
  public void u()
  {
    if (!r)
    {
      D.b(null, 1);
      GHSMenuCategoryJumperFragment localGHSMenuCategoryJumperFragment = GHSMenuCategoryJumperFragment.a(b, j);
      D.a().b(2131690040, localGHSMenuCategoryJumperFragment, GHSMenuCategoryJumperFragment.class.getSimpleName()).a();
      r = true;
    }
  }
  
  public void v()
  {
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu", b, null));
  }
  
  public void w()
  {
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant menu search results", b, null));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSRestaurantFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */