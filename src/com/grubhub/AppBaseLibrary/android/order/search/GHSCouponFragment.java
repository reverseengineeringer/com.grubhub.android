package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ListFragment;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.Animation;
import android.view.animation.Animation.AnimationListener;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.widget.ListView;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.n;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;

public class GHSCouponFragment
  extends ListFragment
  implements com.grubhub.AppBaseLibrary.android.a
{
  private String i;
  private String j;
  private ArrayList<GHSICouponListDataModel.GHSICouponDataModel> k;
  private String l;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.b.a m;
  private n n;
  private f o;
  private GHSLoadingViewFlipper p;
  private View q;
  
  public static GHSCouponFragment a(String paramString)
  {
    GHSCouponFragment localGHSCouponFragment = new GHSCouponFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("restaurant_id", paramString);
    localGHSCouponFragment.setArguments(localBundle);
    return localGHSCouponFragment;
  }
  
  private void a(Context paramContext)
  {
    a(paramContext, null);
  }
  
  private void a(final Context paramContext, final String paramString)
  {
    GHSICartDataModel localGHSICartDataModel = GHSApplication.a().b().X();
    if ((localGHSICartDataModel == null) || (localGHSICartDataModel.getCoupon() == null)) {
      return;
    }
    n = new n(paramContext, localGHSICartDataModel.getCoupon().getId(), new i()new i
    {
      public void a()
      {
        q localq = getActivity();
        if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
          ((GHSBaseActivity)localq).a(true);
        }
      }
    }, new i()
    {
      public void a()
      {
        if (paramString == null)
        {
          q localq = getActivity();
          if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
            ((GHSBaseActivity)localq).a(false);
          }
        }
      }
    });
    n.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSCouponFragment.a(GHSCouponFragment.this, null);
        if (paramString != null)
        {
          GHSCouponFragment.a(GHSCouponFragment.this, paramContext, paramString, true);
          return;
        }
        a().invalidateViews();
        GHSCouponFragment.a(GHSCouponFragment.this, false);
        if (GHSCouponFragment.a(GHSCouponFragment.this) != null) {
          GHSCouponFragment.a(GHSCouponFragment.this).m();
        }
        h.a().a(true, false);
        h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", "remove coupon", "success"));
      }
    });
    n.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        q localq = getActivity();
        if (localq != null)
        {
          com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), null);
          if ((localq instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)localq).a(false);
          }
        }
        h.a().a(true, true);
        if (paramString != null) {}
        for (paramAnonymousb = "change coupon";; paramAnonymousb = "remove coupon")
        {
          h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", paramAnonymousb, "error"));
          return;
        }
      }
    });
    n.a();
  }
  
  private void a(Context paramContext, final String paramString, final boolean paramBoolean)
  {
    m = new com.grubhub.AppBaseLibrary.android.dataServices.a.b.a(paramContext, paramString, j, new i()new i
    {
      public void a()
      {
        q localq = getActivity();
        if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
          ((GHSBaseActivity)localq).a(true);
        }
      }
    }, new i()
    {
      public void a()
      {
        q localq = getActivity();
        if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
          ((GHSBaseActivity)localq).a(false);
        }
        GHSCouponFragment.a(GHSCouponFragment.this, null);
      }
    });
    m.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        a().invalidateViews();
        GHSCouponFragment.a(GHSCouponFragment.this, true);
        GHSCouponFragment.a(GHSCouponFragment.this, paramString);
        if (GHSCouponFragment.a(GHSCouponFragment.this) != null) {
          GHSCouponFragment.a(GHSCouponFragment.this).m();
        }
        h.a().a(true, true);
        if (paramBoolean) {}
        for (paramAnonymousGHSICartDataModel = "change coupon";; paramAnonymousGHSICartDataModel = "apply coupon")
        {
          h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", paramAnonymousGHSICartDataModel, "success"));
          return;
        }
      }
    });
    m.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        q localq = getActivity();
        if (localq != null) {
          com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), null);
        }
        h.a().a(true, paramBoolean);
        if (paramBoolean) {}
        for (paramAnonymousb = "change coupon";; paramAnonymousb = "apply coupon")
        {
          h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("coupons", paramAnonymousb, "error"));
          return;
        }
      }
    });
    m.a();
  }
  
  private void a(boolean paramBoolean)
  {
    Object localObject;
    if (q != null)
    {
      localObject = AnimationUtils.loadAnimation(q.getContext(), 17432576);
      ((Animation)localObject).setInterpolator(new DecelerateInterpolator(2.0F));
      ((Animation)localObject).setDuration(1000L);
      ((Animation)localObject).setAnimationListener(new Animation.AnimationListener()
      {
        public void onAnimationEnd(Animation paramAnonymousAnimation)
        {
          GHSCouponFragment.b(GHSCouponFragment.this).setVisibility(8);
        }
        
        public void onAnimationRepeat(Animation paramAnonymousAnimation) {}
        
        public void onAnimationStart(Animation paramAnonymousAnimation) {}
      });
      q.setAnimation((Animation)localObject);
      localObject = (TextView)q.findViewById(2131689821);
      if (localObject != null) {
        if (!paramBoolean) {
          break label97;
        }
      }
    }
    label97:
    for (int i1 = 2131230998;; i1 = 2131230999)
    {
      ((TextView)localObject).setText(i1);
      q.setVisibility(0);
      return;
    }
  }
  
  public void a(ListView paramListView, View paramView, int paramInt, long paramLong)
  {
    if ((i != null) && (i.equals(j)))
    {
      paramListView = paramListView.getContext();
      paramView = (String)paramView.getTag();
      if (paramView == l) {
        a(paramListView);
      }
    }
    else
    {
      return;
    }
    if (l != null)
    {
      a(paramListView, paramView);
      return;
    }
    a(paramListView, paramView, false);
  }
  
  public void b() {}
  
  public void c() {}
  
  public boolean f_()
  {
    if (o != null) {
      o.g();
    }
    return true;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    Fragment localFragment = getParentFragment();
    if ((localFragment != null) && ((localFragment instanceof f))) {
      o = ((f)getParentFragment());
    }
    while (!(paramActivity instanceof f)) {
      return;
    }
    o = ((f)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    i = getArguments().getString("restaurant_id");
    paramBundle = GHSApplication.a().b().X();
    if (paramBundle != null) {}
    for (paramBundle = paramBundle.getRestaurantId();; paramBundle = null)
    {
      j = paramBundle;
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903117, null, false);
    p = ((GHSLoadingViewFlipper)paramLayoutInflater.findViewById(2131689818));
    p.b();
    q = paramLayoutInflater.findViewById(2131689819);
    q.setVisibility(8);
    if ((o != null) && (o.n() != null)) {
      k = o.n().getCoupons();
    }
    paramViewGroup = new a(this, null);
    paramViewGroup.a(k);
    ((ListView)paramLayoutInflater.findViewById(16908298)).setAdapter(paramViewGroup);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    o = null;
  }
  
  public void onPause()
  {
    super.onPause();
    if (m != null)
    {
      m.g();
      m = null;
    }
    if (n != null)
    {
      n.g();
      n = null;
    }
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSBaseActivity))) {
      ((GHSBaseActivity)localq).a(false);
    }
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = paramMenu.findItem(2131690345);
    if (paramMenu != null) {
      paramMenu.setVisible(false);
    }
    paramMenu = getActivity();
    paramMenu.getActionBar().setDisplayHomeAsUpEnabled(true);
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230840);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "restaurant coupons list", i, null));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSCouponFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */