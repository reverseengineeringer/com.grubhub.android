package com.grubhub.AppBaseLibrary.android.order.search;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.ActionBar;
import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.res.Resources;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.support.v4.content.o;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.at;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewPropertyAnimator;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnPreDrawListener;
import android.view.animation.DecelerateInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSLocationType;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFacetOption;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterFragmentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPriceFilterModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRatingsFilterModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel.GHSOrderReviewState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.order.search.filter.GHSSearchFilterFragment;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSAddressBar;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;
import com.grubhub.AppBaseLibrary.android.views.GHSSearchBar;
import com.grubhub.AppBaseLibrary.android.views.y;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Locale;
import java.util.Map;
import java.util.Set;

public class GHSSearchFragment
  extends Fragment
  implements com.grubhub.AppBaseLibrary.android.a, com.grubhub.AppBaseLibrary.android.order.search.filter.d, com.grubhub.AppBaseLibrary.android.views.b, com.grubhub.AppBaseLibrary.android.views.i, y
{
  private static final String b = GHSSearchFragment.class.getSimpleName();
  private TextView A;
  private View B;
  private View C;
  private View D;
  private View E;
  private View F;
  private View G;
  private GHSLoadingViewFlipper H;
  private View I;
  private View J;
  private com.grubhub.AppBaseLibrary.android.feedback.e K;
  private com.grubhub.AppBaseLibrary.android.review.a L;
  private l M;
  private com.grubhub.AppBaseLibrary.android.order.cart.c N;
  private GHSIRestaurantListDataModel O;
  private MenuItem P;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.f Q;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.g.a R;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.g.b S;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.d.a T;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.h.b U;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.g V;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e W;
  private w X;
  private GHSSearchFilterFragment Y;
  private BroadcastReceiver Z = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (paramAnonymousIntent.getAction().equals(paramAnonymousContext.getString(2131230829)))
      {
        GHSSearchFragment.a(GHSSearchFragment.this, false);
        if (GHSSearchFragment.a(GHSSearchFragment.this) != null) {
          GHSSearchFragment.a(GHSSearchFragment.this).a(null, true);
        }
        if (GHSSearchFragment.b(GHSSearchFragment.this) != null)
        {
          GHSSearchFragment.b(GHSSearchFragment.this).f();
          GHSSearchFragment.b(GHSSearchFragment.this).setPastOrders(null);
        }
        if (GHSSearchFragment.c(GHSSearchFragment.this) != null)
        {
          GHSSearchFragment.c(GHSSearchFragment.this).c(false);
          GHSSearchFragment.b(GHSSearchFragment.this, false);
        }
      }
    }
  };
  protected ArrayList<GHSIRestaurantDataModel> a;
  private BroadcastReceiver aa = new BroadcastReceiver()
  {
    public void onReceive(Context paramAnonymousContext, Intent paramAnonymousIntent)
    {
      if (("com.grubhub.AppBaseLibrary.android.utils.BROADCAST".equals(paramAnonymousIntent.getAction())) && (GHSSearchFragment.d(GHSSearchFragment.this)))
      {
        GHSSearchFragment.c(GHSSearchFragment.this, false);
        GHSSearchFragment.a(GHSSearchFragment.this, GHSSearchFragment.e(GHSSearchFragment.this), true);
      }
    }
  };
  private AbsListView.OnScrollListener ab = new AbsListView.OnScrollListener()
  {
    public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      paramAnonymousInt3 -= 15;
      if ((GHSSearchFragment.f(GHSSearchFragment.this) != null) && (GHSSearchFragment.g(GHSSearchFragment.this) != null) && (GHSSearchFragment.g(GHSSearchFragment.this).getAdapter() != null) && (GHSSearchFragment.f(GHSSearchFragment.this).getTotalResults().longValue() > ((HeaderViewListAdapter)GHSSearchFragment.g(GHSSearchFragment.this).getAdapter()).getWrappedAdapter().getCount()) && (!GHSSearchFragment.h(GHSSearchFragment.this)) && (!GHSSearchFragment.i(GHSSearchFragment.this)) && (GHSSearchFragment.g(GHSSearchFragment.this).getFooterViewsCount() == 0) && (paramAnonymousInt3 > 0) && (paramAnonymousInt1 + paramAnonymousInt2 > paramAnonymousInt3)) {
        GHSSearchFragment.a(GHSSearchFragment.this, GHSSearchFragment.e(GHSSearchFragment.this), true, 30, GHSSearchFragment.j(GHSSearchFragment.this), false);
      }
    }
    
    public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
  };
  private int c = 1;
  private int d;
  private boolean e;
  private boolean f;
  private boolean g;
  private boolean h;
  private boolean i;
  private boolean j;
  private boolean k;
  private boolean l;
  private boolean m;
  private boolean n;
  private boolean o;
  private String p;
  private Uri q;
  private LinkedHashSet<String> r;
  private GHSFilterSortCriteria s;
  private ViewTreeObserver.OnGlobalLayoutListener t;
  private Handler u;
  private GHSOverScrollListView v;
  private SwipeRefreshLayout w;
  private GHSLoadingViewFlipper x;
  private GHSAddressBar y;
  private GHSSearchBar z;
  
  public static GHSSearchFragment a(boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("application_reset", paramBoolean);
    GHSSearchFragment localGHSSearchFragment = new GHSSearchFragment();
    localGHSSearchFragment.setArguments(localBundle);
    return localGHSSearchFragment;
  }
  
  public static GHSSearchFragment a(boolean paramBoolean, String paramString, Uri paramUri)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("force_populate", paramBoolean);
    if (!TextUtils.isEmpty(paramString)) {
      localBundle.putString("search_query", paramString);
    }
    if (paramUri != null) {
      localBundle.putParcelable("deep_link_uri", paramUri);
    }
    paramString = new GHSSearchFragment();
    paramString.setArguments(localBundle);
    return paramString;
  }
  
  public static GHSSearchFragment a(boolean paramBoolean, String paramString, GHSIAddressDataModel paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.g paramg)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("force_populate", paramBoolean);
    if (!TextUtils.isEmpty(paramString)) {
      localBundle.putString("restaurant_id", paramString);
    }
    if (paramGHSIAddressDataModel != null) {
      localBundle.putParcelable("search_address", com.grubhub.AppBaseLibrary.android.order.a.a(paramGHSIAddressDataModel));
    }
    if (paramg != null) {
      localBundle.putSerializable("order_type", paramg);
    }
    paramString = new GHSSearchFragment();
    paramString.setArguments(localBundle);
    return paramString;
  }
  
  private String a(String paramString1, String paramString2, boolean paramBoolean)
  {
    String str1 = paramString1;
    if (paramString2 != null)
    {
      str1 = paramString1;
      String str2 = paramString2;
      if (paramString1.length() > 0)
      {
        paramString1 = paramString1 + ", ";
        str1 = paramString1;
        str2 = paramString2;
        if (paramBoolean)
        {
          str2 = paramString2.toLowerCase();
          str1 = paramString1;
        }
      }
      str1 = str1 + str2;
    }
    return str1;
  }
  
  private void a(View paramView, float paramFloat, final int paramInt)
  {
    paramView.animate().setDuration(400L).scaleX(1.0F).scaleY(1.0F).translationX(0.0F).translationY(-paramFloat).setInterpolator(new DecelerateInterpolator()).setListener(new AnimatorListenerAdapter()
    {
      public void onAnimationEnd(Animator paramAnonymousAnimator)
      {
        if ((GHSSearchFragment.g(GHSSearchFragment.this) != null) && (GHSSearchFragment.g(GHSSearchFragment.this).getAdapter() != null))
        {
          paramAnonymousAnimator = (GHSIRestaurantDataModel)GHSSearchFragment.g(GHSSearchFragment.this).getAdapter().getItem(paramInt);
          if ((paramAnonymousAnimator == null) || (GHSSearchFragment.y(GHSSearchFragment.this) == null)) {}
        }
        try
        {
          if (GHSSearchFragment.e(GHSSearchFragment.this) != null) {
            GHSSearchFragment.y(GHSSearchFragment.this).a(paramAnonymousAnimator.getRestaurantId(), false, false, null, GHSSearchFragment.e(GHSSearchFragment.this).getAddress(), GHSSearchFragment.e(GHSSearchFragment.this).getOrderType());
          }
          GHSSearchFragment.g(GHSSearchFragment.this, false);
          return;
        }
        catch (IllegalStateException paramAnonymousAnimator)
        {
          GHSSearchFragment.g(GHSSearchFragment.this, true);
        }
      }
    });
  }
  
  private void a(View paramView, float paramFloat, boolean paramBoolean)
  {
    ViewPropertyAnimator localViewPropertyAnimator = paramView.animate().setDuration(400L).scaleX(1.0F).scaleY(1.0F).translationX(0.0F).translationY(paramFloat).setInterpolator(new DecelerateInterpolator());
    if (paramBoolean) {}
    for (paramView = new AnimatorListenerAdapter()
        {
          public void onAnimationEnd(Animator paramAnonymousAnimator)
          {
            GHSSearchFragment.g(GHSSearchFragment.this).setDividerHeight(GHSSearchFragment.z(GHSSearchFragment.this));
          }
        };; paramView = null)
    {
      localViewPropertyAnimator.setListener(paramView);
      return;
    }
  }
  
  private void a(View paramView, int paramInt)
  {
    if (!i)
    {
      i = true;
      int i2 = paramInt - v.getFirstVisiblePosition();
      int i3 = v.getChildCount();
      float f1 = paramView.getY();
      float f2 = v.getMeasuredHeight();
      d = v.getDividerHeight();
      v.setDividerHeight(0);
      int i1 = 0;
      if (i1 < i3)
      {
        if (i1 < i2) {
          a(v.getChildAt(i1), -f1, false);
        }
        for (;;)
        {
          i1 += 1;
          break;
          if (i1 > i2) {
            a(v.getChildAt(i1), f2 - f1, false);
          } else {
            a(v.getChildAt(i1), f1, paramInt);
          }
        }
      }
      if (M != null) {
        M.c(paramInt);
      }
    }
  }
  
  private void a(GHSFilterSortCriteria paramGHSFilterSortCriteria, boolean paramBoolean)
  {
    a(paramGHSFilterSortCriteria, paramBoolean, 30, 1, false);
  }
  
  private void a(final GHSFilterSortCriteria paramGHSFilterSortCriteria, boolean paramBoolean1, int paramInt1, final int paramInt2, final boolean paramBoolean2)
  {
    g = true;
    c = paramInt2;
    q localq = getActivity();
    if (localq != null)
    {
      Object localObject2 = null;
      Object localObject1 = localObject2;
      if (paramInt2 > 1)
      {
        localObject1 = localObject2;
        if (O != null) {
          localObject1 = O.getSearchId();
        }
      }
      Q = new com.grubhub.AppBaseLibrary.android.dataServices.a.f(localq, paramGHSFilterSortCriteria, paramBoolean1, O, 30, paramInt2, (String)localObject1, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          if (paramInt2 <= 1)
          {
            if (paramBoolean2)
            {
              GHSSearchFragment.r(GHSSearchFragment.this).setRefreshing(true);
              return;
            }
            GHSSearchFragment.s(GHSSearchFragment.this).a();
            return;
          }
          if (GHSSearchFragment.g(GHSSearchFragment.this).getFooterViewsCount() == 0) {
            GHSSearchFragment.g(GHSSearchFragment.this).addFooterView(GHSSearchFragment.t(GHSSearchFragment.this), null, false);
          }
          GHSSearchFragment.t(GHSSearchFragment.this).a();
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSSearchFragment.a(GHSSearchFragment.this, null);
        }
      });
      Q.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIRestaurantListDataModel paramAnonymousGHSIRestaurantListDataModel)
        {
          Object localObject1 = getActivity();
          com.grubhub.AppBaseLibrary.android.dataServices.b.b localb;
          Object localObject2;
          boolean bool;
          if (localObject1 != null)
          {
            GHSSearchFragment.a(GHSSearchFragment.this, paramAnonymousGHSIRestaurantListDataModel);
            a = paramAnonymousGHSIRestaurantListDataModel.getRestaurants();
            localb = GHSApplication.a().b();
            if ((a == null) || (a.size() <= 0)) {
              break label470;
            }
            if ((GHSSearchFragment.g(GHSSearchFragment.this).getAdapter() != null) && (paramInt2 != 1)) {
              break label433;
            }
            GHSSearchFragment.g(GHSSearchFragment.this).setAdapter(new k(GHSSearchFragment.this, (Context)localObject1, 2130903221, a));
            localObject2 = GHSSearchFragment.this;
            if (((HeaderViewListAdapter)GHSSearchFragment.g(GHSSearchFragment.this).getAdapter()).getWrappedAdapter().getCount() < GHSSearchFragment.f(GHSSearchFragment.this).getTotalResults().longValue()) {
              break label465;
            }
            bool = true;
            label168:
            GHSSearchFragment.e((GHSSearchFragment)localObject2, bool);
            GHSSearchFragment.s(GHSSearchFragment.this).b();
            GHSSearchFragment.e(GHSSearchFragment.this).setRestaurantFilterData(paramAnonymousGHSIRestaurantListDataModel);
            localb.a(GHSSearchFragment.e(GHSSearchFragment.this));
            GHSSearchFragment.b(GHSSearchFragment.this).d();
          }
          for (;;)
          {
            GHSSearchFragment.v(GHSSearchFragment.this);
            GHSSearchFragment.f(GHSSearchFragment.this, false);
            GHSSearchFragment.r(GHSSearchFragment.this).setRefreshing(false);
            GHSSearchFragment.g(GHSSearchFragment.this).removeFooterView(GHSSearchFragment.t(GHSSearchFragment.this));
            if ((((Activity)localObject1).getResources().getBoolean(2131361807)) && (!localb.v()) && (GHSSearchFragment.b(GHSSearchFragment.this) != null))
            {
              paramAnonymousGHSIRestaurantListDataModel = new com.grubhub.AppBaseLibrary.android.views.e((Context)localObject1, ((Activity)localObject1).getString(2131230994), ((Activity)localObject1).getString(2131231089));
              localObject2 = ((Activity)localObject1).getActionBar().getCustomView().findViewById(2131689639);
              int[] arrayOfInt = new int[2];
              ((View)localObject2).getLocationInWindow(arrayOfInt);
              View localView = GHSSearchFragment.b(GHSSearchFragment.this).findViewById(2131690328);
              localObject1 = ((Activity)localObject1).getActionBar();
              paramAnonymousGHSIRestaurantListDataModel.a(arrayOfInt[0] + ((View)localObject2).getWidth() / 2, ((ActionBar)localObject1).getHeight() + localView.getBottom());
              paramAnonymousGHSIRestaurantListDataModel.show();
              paramAnonymousGHSIRestaurantListDataModel.a();
              localb.i(true);
              h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("onboarding", "coach bubble_impression", "new enter location bar", "1"));
            }
            return;
            label433:
            ((k)((HeaderViewListAdapter)GHSSearchFragment.g(GHSSearchFragment.this).getAdapter()).getWrappedAdapter()).a(a);
            break;
            label465:
            bool = false;
            break label168;
            label470:
            GHSSearchFragment.u(GHSSearchFragment.this);
          }
        }
      });
      paramGHSFilterSortCriteria = Q;
      Q.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          q localq = getActivity();
          if (localq != null)
          {
            if ((paramInt2 <= 1) || (!GHSSearchFragment.g(GHSSearchFragment.this).isShown())) {
              break label67;
            }
            GHSSearchFragment.t(GHSSearchFragment.this).a(2131232019, null);
          }
          for (;;)
          {
            GHSSearchFragment.f(GHSSearchFragment.this, false);
            GHSSearchFragment.r(GHSSearchFragment.this).setRefreshing(false);
            return;
            label67:
            GHSSearchFragment.g(GHSSearchFragment.this).removeFooterView(GHSSearchFragment.t(GHSSearchFragment.this));
            Object localObject = GHSSearchFragment.s(GHSSearchFragment.this).getContext();
            if (paramAnonymousb.d())
            {
              localObject = ((Context)localObject).getString(2131231608);
              com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
              {
                public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  b.a();
                }
              });
            }
            for (paramAnonymousb = (com.grubhub.AppBaseLibrary.android.b.b)localObject;; paramAnonymousb = ((Context)localObject).getString(2131231604))
            {
              ((TextView)GHSSearchFragment.w(GHSSearchFragment.this).findViewById(2131690333)).setText(paramAnonymousb);
              GHSSearchFragment.s(GHSSearchFragment.this).a(GHSSearchFragment.w(GHSSearchFragment.this), new View.OnClickListener()
              {
                public void onClick(View paramAnonymous2View)
                {
                  b.a();
                }
              });
              if ((GHSSearchFragment.e(GHSSearchFragment.this) == null) || ((!GHSSearchFragment.e(GHSSearchFragment.this).getHasUserSelectedRefinements()) && (!GHSSearchFragment.e(GHSSearchFragment.this).getHasUserSelectedCuisines()))) {
                break label247;
              }
              GHSSearchFragment.b(GHSSearchFragment.this).d();
              break;
            }
            label247:
            GHSSearchFragment.b(GHSSearchFragment.this).e();
          }
        }
      });
      Q.a();
    }
  }
  
  private void c(boolean paramBoolean)
  {
    s = GHSApplication.a().b().z();
    if (s != null)
    {
      y.a(s.getAddressString(), s.getOrderType(), s.getSavedAddressId(), s.getSavedAddressLabel(), false);
      j = false;
      z.setSearchText(s.getSearchTerm());
    }
    if (s == null)
    {
      H.a(J, null);
      z.e();
      return;
    }
    if ((a == null) || (paramBoolean))
    {
      if ((!l) || (paramBoolean))
      {
        a(s, paramBoolean);
        return;
      }
      H.a();
      return;
    }
    if (a.size() > 0)
    {
      ((k)((HeaderViewListAdapter)v.getAdapter()).getWrappedAdapter()).a(a);
      H.b();
      z.d();
      return;
    }
    v();
  }
  
  private void d(boolean paramBoolean)
  {
    q localq = getActivity();
    if ((localq != null) && (K != null))
    {
      K.b(com.grubhub.AppBaseLibrary.android.feedback.b.SEARCH);
      if (!paramBoolean) {
        break label71;
      }
      if ((com.grubhub.AppBaseLibrary.android.feedback.d.a(localq, com.grubhub.AppBaseLibrary.android.feedback.b.SEARCH)) || (n)) {
        K.b(true);
      }
    }
    else
    {
      return;
    }
    K.b(false);
    return;
    label71:
    K.b(false);
  }
  
  private void t()
  {
    int i2 = 0;
    if (M != null) {}
    for (int i1 = M.n(); i1 == -100; i1 = -100) {
      return;
    }
    int i3 = i1 - v.getFirstVisiblePosition();
    int i4 = v.getChildCount();
    float f1 = v.getChildAt(i3).getY();
    float f2 = v.getMeasuredHeight();
    i1 = i2;
    if (i4 > 0)
    {
      v.setDividerHeight(0);
      i1 = i2;
    }
    label94:
    if (i1 < i4)
    {
      if (i1 >= i3) {
        break label140;
      }
      v.getChildAt(i1).setTranslationY(-f1);
      a(v.getChildAt(i1), 0.0F, true);
    }
    for (;;)
    {
      i1 += 1;
      break label94;
      break;
      label140:
      if (i1 > i3)
      {
        v.getChildAt(i1).setTranslationY(f2 - f1);
        a(v.getChildAt(i1), 0.0F, true);
      }
      else
      {
        v.getChildAt(i1).setTranslationY(-f1);
        a(v.getChildAt(i1), 0.0F, true);
      }
    }
  }
  
  private boolean u()
  {
    boolean bool = false;
    GHSFilterSortCriteria localGHSFilterSortCriteria = GHSApplication.a().b().z();
    int i1;
    if ((s == null) && (localGHSFilterSortCriteria != null))
    {
      i1 = 1;
      if ((s == null) || (localGHSFilterSortCriteria == null) || (((s.getAddressString() == null) || (s.getAddressString().equals(localGHSFilterSortCriteria.getAddressString()))) && (s.getOrderType() == localGHSFilterSortCriteria.getOrderType()) && ((s.getSavedAddressLabel() == null) || (s.getSavedAddressLabel().equals(localGHSFilterSortCriteria.getSavedAddressLabel()))))) {
        break label131;
      }
    }
    label131:
    for (int i2 = 1;; i2 = 0)
    {
      if ((i1 != 0) || (i2 != 0)) {
        bool = true;
      }
      return bool;
      i1 = 0;
      break;
    }
  }
  
  private void v()
  {
    if (H == null) {}
    Object localObject;
    do
    {
      return;
      localObject = H.getContext();
    } while (localObject == null);
    if ((s != null) && ((s.getHasUserSelectedRefinements()) || (s.getHasUserSelectedCuisines()) || (!TextUtils.isEmpty(s.getSearchTerm())))) {
      if (O.getTotalResultsOmittingOpenTimes() > 0)
      {
        localObject = ((Context)localObject).getString(2131231607);
        com.grubhub.AppBaseLibrary.android.utils.e.a.a.a locala = new com.grubhub.AppBaseLibrary.android.utils.e.a.a.a();
        s.accept(locala);
        com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("NO_SEARCH_RESULTS", locala.a());
        z.d();
      }
    }
    for (;;)
    {
      ((TextView)I.findViewById(2131690333)).setText((CharSequence)localObject);
      H.a(I, null);
      return;
      localObject = ((Context)localObject).getString(2131231606);
      break;
      if ((O != null) && (O.getTotalResultsOmittingOpenTimes() > 0)) {}
      for (localObject = ((Context)localObject).getString(2131231605);; localObject = ((Context)localObject).getString(2131231604))
      {
        if (((O != null) && (O.getTotalResults() != null) && (O.getTotalResults().longValue() != 0L)) || (s.getOrderType() != com.grubhub.AppBaseLibrary.android.order.g.PICKUP) || (s.getHasUserSelectedRefinements()) || (s.getHasUserSelectedCuisines())) {
          break label271;
        }
        z.d();
        break;
      }
      label271:
      z.e();
    }
  }
  
  private void w()
  {
    final com.grubhub.AppBaseLibrary.android.dataServices.b.b localb;
    final HashMap localHashMap;
    if (GHSApplication.b(getActivity()))
    {
      localb = GHSApplication.a().b();
      localObject = localb.ab();
      localHashMap = new HashMap();
      if (localObject == null) {
        break label141;
      }
    }
    label141:
    for (Object localObject = com.grubhub.AppBaseLibrary.android.utils.d.a(((GHSIPastOrderListDataModel)localObject).getPastOrders(), localHashMap);; localObject = null)
    {
      if ((localObject != null) && (!((ArrayList)localObject).isEmpty()) && ((U == null) || (!U.h())))
      {
        U = new com.grubhub.AppBaseLibrary.android.dataServices.a.h.b(getActivity(), (ArrayList)localObject, true, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
        {
          public void a()
          {
            GHSSearchFragment.a(GHSSearchFragment.this, null);
          }
        });
        U.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
        {
          public void a(ArrayList<GHSIOrderReviewDataModel> paramAnonymousArrayList)
          {
            GHSIOrderReviewDataModel localGHSIOrderReviewDataModel;
            if ((getActivity() != null) && (GHSSearchFragment.c(GHSSearchFragment.this) != null))
            {
              if ((paramAnonymousArrayList == null) || (paramAnonymousArrayList.isEmpty())) {
                break label144;
              }
              paramAnonymousArrayList = paramAnonymousArrayList.iterator();
              do
              {
                if (!paramAnonymousArrayList.hasNext()) {
                  break;
                }
                localGHSIOrderReviewDataModel = (GHSIOrderReviewDataModel)paramAnonymousArrayList.next();
              } while ((localGHSIOrderReviewDataModel == null) || (localGHSIOrderReviewDataModel.getState() != GHSIOrderReviewDataModel.GHSOrderReviewState.AVAILABLE));
            }
            label144:
            for (paramAnonymousArrayList = localGHSIOrderReviewDataModel.getOrderId();; paramAnonymousArrayList = null)
            {
              if (paramAnonymousArrayList != null)
              {
                GHSSearchFragment.c(GHSSearchFragment.this).a(GHSCreateOrderReviewDataModel.GHSLocationType.HOME_SCREEN);
                GHSSearchFragment.c(GHSSearchFragment.this).a((GHSIPastOrderDataModel)localHashMap.get(paramAnonymousArrayList));
                GHSSearchFragment.c(GHSSearchFragment.this).c(true);
              }
              localb.e(false);
              return;
            }
          }
        });
        U.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            GHSSearchFragment.x(GHSSearchFragment.this);
          }
        });
        U.a();
      }
      return;
    }
  }
  
  private void x()
  {
    if ((K != null) && (com.grubhub.AppBaseLibrary.android.feedback.d.a(getActivity(), com.grubhub.AppBaseLibrary.android.feedback.b.SEARCH_AFTER_PAST_ORDER)))
    {
      K.b(com.grubhub.AppBaseLibrary.android.feedback.b.SEARCH_AFTER_PAST_ORDER);
      K.b(true);
    }
  }
  
  private void y()
  {
    final com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    Date localDate = new Date();
    if ((GHSApplication.b(getActivity())) && (T == null) && (localDate.getTime() > localb.f() + 86400000L))
    {
      T = new com.grubhub.AppBaseLibrary.android.dataServices.a.d.a(getActivity(), null, null);
      T.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(final GHSIMessage paramAnonymousGHSIMessage)
        {
          if (paramAnonymousGHSIMessage == null) {}
          q localq;
          String str;
          do
          {
            return;
            localq = getActivity();
            str = paramAnonymousGHSIMessage.getBody();
          } while ((localq == null) || (!paramAnonymousGHSIMessage.appliesToVersion(com.grubhub.AppBaseLibrary.android.utils.b.a(localq))) || (localb.a(paramAnonymousGHSIMessage.getETag())) || (!com.grubhub.AppBaseLibrary.android.utils.f.b(str)));
          com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousGHSIMessage.getTitle(), paramAnonymousGHSIMessage.getBody(), paramAnonymousGHSIMessage.getPositiveButtonText(), paramAnonymousGHSIMessage.getNegativeButtonText(), null, new com.grubhub.AppBaseLibrary.android.b()
          {
            public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              paramAnonymous2DialogInterface = paramAnonymousGHSIMessage.getUrl();
              if (com.grubhub.AppBaseLibrary.android.utils.f.b(paramAnonymous2DialogInterface))
              {
                if (!paramAnonymousGHSIMessage.isWebView()) {
                  break label97;
                }
                startActivity(GHSWebViewActivity.a(getActivity(), paramAnonymousGHSIMessage.getTitle(), paramAnonymous2DialogInterface));
              }
              for (;;)
              {
                if (!paramAnonymousGHSIMessage.isRepeat()) {
                  a.a(paramAnonymousGHSIMessage.getETag(), true);
                }
                return;
                try
                {
                  label97:
                  paramAnonymous2DialogInterface = new Intent("android.intent.action.VIEW", Uri.parse(paramAnonymous2DialogInterface));
                  startActivity(paramAnonymous2DialogInterface);
                }
                catch (Exception paramAnonymous2DialogInterface)
                {
                  com.grubhub.AppBaseLibrary.android.utils.e.a.b(GHSSearchFragment.s(), paramAnonymous2DialogInterface.getMessage());
                }
              }
            }
            
            public void b(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              if (!paramAnonymousGHSIMessage.isRepeat()) {
                a.a(paramAnonymousGHSIMessage.getETag(), true);
              }
            }
          });
        }
      });
      T.a();
    }
  }
  
  private void z()
  {
    Iterator localIterator = null;
    s = GHSApplication.a().b().z();
    Object localObject1;
    Object localObject2;
    Object localObject3;
    int i1;
    if (s != null)
    {
      localObject1 = "";
      localObject2 = localObject1;
      if (s.getCuisineList() != null)
      {
        localObject3 = s.getCuisineList().iterator();
        i1 = 0;
        localObject2 = localObject1;
        if (((Iterator)localObject3).hasNext())
        {
          localObject1 = (GHSCuisine)((Iterator)localObject3).next();
          if (!((GHSCuisine)localObject1).isSelected()) {
            break label747;
          }
          localObject1 = a((String)localObject2, ((GHSCuisine)localObject1).getDisplayName(), false);
          i1 += 1;
        }
      }
    }
    for (;;)
    {
      localObject2 = localObject1;
      break;
      if (i1 > 3) {
        localObject2 = a("", String.valueOf(i1) + " " + getString(2131232005), false);
      }
      localObject1 = s.getRatingsModel();
      localObject3 = localObject2;
      if (localObject1 != null)
      {
        localObject3 = localObject2;
        if (!((GHSRatingsFilterModel)localObject1).getHasUserSelected()) {}
      }
      switch (29.a[localObject1.getMaxSelectedFilter().ordinal()])
      {
      default: 
        localObject1 = null;
        localObject3 = a((String)localObject2, (String)localObject1, true);
        localObject1 = s.getPriceModel();
        localObject2 = localObject3;
        if (localObject1 != null)
        {
          localObject2 = localObject3;
          if (((GHSPriceFilterModel)localObject1).getHasUserSelected()) {
            switch (29.b[localObject1.getMaxSelectedFilter().ordinal()])
            {
            default: 
              localObject1 = localIterator;
            }
          }
        }
        break;
      }
      for (;;)
      {
        localObject2 = a((String)localObject3, (String)localObject1, true);
        float f1 = s.getDistanceRadius();
        localObject1 = localObject2;
        if (f1 != s.getDefaultRadius()) {
          localObject1 = a((String)localObject2, String.valueOf(f1) + getString(2131232006), true);
        }
        localObject3 = s.getFilterFragmentsModel().getSingleValueRefinements();
        localObject2 = localObject1;
        if (localObject3 == null) {
          break label593;
        }
        localIterator = ((Map)localObject3).keySet().iterator();
        for (;;)
        {
          localObject2 = localObject1;
          if (!localIterator.hasNext()) {
            break;
          }
          localObject2 = (GHSFacetOption)((Map)localObject3).get((String)localIterator.next());
          if ((((GHSFacetOption)localObject2).isVisible()) && (((GHSFacetOption)localObject2).isSelected())) {
            localObject1 = a((String)localObject1, ((GHSFacetOption)localObject2).getDisplayName(), true);
          }
        }
        localObject1 = getString(2131232012);
        break;
        localObject1 = getString(2131232016);
        break;
        localObject1 = getString(2131232014);
        break;
        localObject1 = getString(2131232010);
        break;
        localObject1 = getString(2131232008);
        break;
        localObject1 = getString(2131232011);
        continue;
        localObject1 = getString(2131232015);
        continue;
        localObject1 = getString(2131232013);
        continue;
        localObject1 = getString(2131232009);
        continue;
        localObject1 = getString(2131232007);
      }
      label593:
      localObject1 = localObject2;
      if (GHSApplication.a().b().e())
      {
        localObject1 = localObject2;
        if (s.getSubOrderType() == com.grubhub.AppBaseLibrary.android.order.l.FUTURE)
        {
          localObject1 = localObject2;
          if (s.getWhenFor() != 0L) {
            localObject1 = a((String)localObject2, String.format("%s %s", new Object[] { getString(2131231910), com.grubhub.AppBaseLibrary.android.utils.b.a(s.getWhenFor(), "MMM d, h:mm a", false) }), false);
          }
        }
      }
      if (((String)localObject1).length() > 0)
      {
        A.setText((CharSequence)localObject1);
        C.setVisibility(0);
        E.setVisibility(8);
        B.setVisibility(0);
        return;
      }
      B.setVisibility(8);
      return;
      B.setVisibility(8);
      return;
      label747:
      localObject1 = localObject2;
    }
  }
  
  public void a(double paramDouble1, double paramDouble2, final com.grubhub.AppBaseLibrary.android.order.g paramg)
  {
    R = new com.grubhub.AppBaseLibrary.android.dataServices.a.g.a(getActivity(), paramDouble1, paramDouble2, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSSearchFragment.s(GHSSearchFragment.this).a();
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSSearchFragment.a(GHSSearchFragment.this, null);
      }
    });
    R.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSIAddressDataModel paramAnonymousGHSIAddressDataModel)
      {
        if (GHSSearchFragment.a(GHSSearchFragment.this) != null)
        {
          String str = com.grubhub.AppBaseLibrary.android.order.a.b(paramAnonymousGHSIAddressDataModel);
          GHSSearchFragment.a(GHSSearchFragment.this).a(str, paramg, null, null, false);
          a(paramAnonymousGHSIAddressDataModel, str, paramg);
        }
      }
    });
    R.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (GHSSearchFragment.s(GHSSearchFragment.this) != null)
        {
          paramAnonymousb = GHSSearchFragment.s(GHSSearchFragment.this).getContext();
          if (paramAnonymousb != null)
          {
            ((TextView)GHSSearchFragment.w(GHSSearchFragment.this).findViewById(2131690333)).setText(paramAnonymousb.getString(2131231608));
            GHSSearchFragment.s(GHSSearchFragment.this).a(GHSSearchFragment.w(GHSSearchFragment.this), null);
          }
        }
      }
    });
    R.a();
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    GHSApplication.a().b().a(paramGHSFilterSortCriteria);
    a(paramGHSFilterSortCriteria, true);
    z();
    d(true);
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel, String paramString, com.grubhub.AppBaseLibrary.android.order.g paramg)
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    if (z != null) {
      z.setSearchText("");
    }
    if (s == null) {
      s = new GHSFilterSortCriteria();
    }
    s.resetFilterValues();
    s.setOrderType(paramg);
    s.setAddress(paramGHSIAddressDataModel, paramString);
    localb.a(s);
    y.a(s.getAddressString(), s.getOrderType(), s.getSavedAddressId(), s.getSavedAddressLabel(), false);
    a(s, true);
    z();
    if (!e)
    {
      localb.f(true);
      e = true;
    }
    z.e();
    d(true);
  }
  
  public void a(String paramString)
  {
    if (s != null)
    {
      s.setSearchTerm(paramString);
      if ((com.grubhub.AppBaseLibrary.android.utils.f.b(paramString)) && (!s.getHasUserSelectedSort())) {
        s.setCurrentSortOption(com.grubhub.AppBaseLibrary.android.c.a.d.RELEVANCE.toString());
      }
      GHSApplication.a().b().a(s);
      a(s, true);
      d(true);
    }
  }
  
  public void a(String paramString1, final com.grubhub.AppBaseLibrary.android.order.g paramg, String paramString2)
  {
    S = new com.grubhub.AppBaseLibrary.android.dataServices.a.g.b(getActivity(), paramString1, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
    {
      public void a()
      {
        GHSSearchFragment.s(GHSSearchFragment.this).a();
      }
    }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
    {
      public void a()
      {
        GHSSearchFragment.a(GHSSearchFragment.this, null);
      }
    });
    S.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(ArrayList<GHSIAddressDataModel> paramAnonymousArrayList)
      {
        a((GHSIAddressDataModel)paramAnonymousArrayList.get(0), com.grubhub.AppBaseLibrary.android.order.a.b((GHSIAddressDataModel)paramAnonymousArrayList.get(0)), paramg);
      }
    });
    S.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (GHSSearchFragment.s(GHSSearchFragment.this) != null)
        {
          paramAnonymousb = GHSSearchFragment.s(GHSSearchFragment.this).getContext();
          if (paramAnonymousb != null)
          {
            ((TextView)GHSSearchFragment.w(GHSSearchFragment.this).findViewById(2131690333)).setText(paramAnonymousb.getString(2131231608));
            GHSSearchFragment.s(GHSSearchFragment.this).a(GHSSearchFragment.w(GHSSearchFragment.this), null);
          }
        }
      }
    });
    S.a();
  }
  
  public void a(String paramString1, String paramString2)
  {
    String str;
    if (paramString2 != null)
    {
      str = paramString2;
      if (paramString2.trim().length() != 0) {}
    }
    else
    {
      str = "no search term used";
    }
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("search", paramString1, str.toLowerCase()));
  }
  
  public void a(String paramString, String[] paramArrayOfString, Double paramDouble1, Double paramDouble2, final boolean paramBoolean)
  {
    q localq = getActivity();
    com.grubhub.AppBaseLibrary.android.order.g localg;
    if (localq != null)
    {
      if (V != null)
      {
        V.g();
        V = null;
      }
      if (s == null) {
        break label166;
      }
      localg = s.getOrderType();
      if (s == null) {
        break label172;
      }
    }
    label166:
    label172:
    for (com.grubhub.AppBaseLibrary.android.order.l locall = s.getSubOrderType();; locall = com.grubhub.AppBaseLibrary.android.order.l.DEFAULT)
    {
      Object localObject2 = null;
      Object localObject1 = localObject2;
      if (s != null)
      {
        localObject1 = localObject2;
        if (locall == com.grubhub.AppBaseLibrary.android.order.l.FUTURE) {
          localObject1 = Long.valueOf(s.getWhenFor());
        }
      }
      V = new com.grubhub.AppBaseLibrary.android.dataServices.a.g(localq, paramString, paramArrayOfString, paramDouble1, paramDouble2, localg, locall, (Long)localObject1, null, null);
      V.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIAutoCompleteDataModel paramAnonymousGHSIAutoCompleteDataModel)
        {
          if (GHSSearchFragment.b(GHSSearchFragment.this) != null) {
            GHSSearchFragment.b(GHSSearchFragment.this).setAutoCompleteResults(paramAnonymousGHSIAutoCompleteDataModel);
          }
        }
      });
      V.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (GHSSearchFragment.b(GHSSearchFragment.this) != null) {
            GHSSearchFragment.b(GHSSearchFragment.this).a(paramBoolean);
          }
        }
      });
      V.a();
      return;
      localg = null;
      break;
    }
  }
  
  public void a(ArrayList<String> paramArrayList, String paramString1, String paramString2)
  {
    q localq = getActivity();
    if ((localq != null) && (W == null))
    {
      W = new com.grubhub.AppBaseLibrary.android.dataServices.a.e(localq, paramArrayList, paramString1, paramString2, null, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSSearchFragment.a(GHSSearchFragment.this, null);
        }
      });
      W.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIRestaurantAvailabilityDataModel paramAnonymousGHSIRestaurantAvailabilityDataModel)
        {
          if (GHSSearchFragment.b(GHSSearchFragment.this) != null) {
            GHSSearchFragment.b(GHSSearchFragment.this).setRestaurantAvailability(paramAnonymousGHSIRestaurantAvailabilityDataModel);
          }
        }
      });
      W.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb) {}
      });
      W.a();
    }
  }
  
  public void b()
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "restaurants search results"));
  }
  
  public void b(String paramString)
  {
    if (s != null) {
      M.a(paramString, true, false, null, s.getAddress(), s.getOrderType());
    }
  }
  
  public void b(boolean paramBoolean)
  {
    m = paramBoolean;
  }
  
  public void c()
  {
    y.c();
    y.clearFocus();
    z.clearFocus();
  }
  
  public void d()
  {
    if (P != null)
    {
      P.setVisible(false);
      P.setEnabled(false);
    }
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof com.grubhub.AppBaseLibrary.android.e))) {
      ((com.grubhub.AppBaseLibrary.android.e)localq).p();
    }
  }
  
  public void e()
  {
    if ((!g) && (v != null) && (v.getAdapter() != null) && (!k) && (x.isShown())) {
      a(s, true, 30, c, false);
    }
  }
  
  public boolean f_()
  {
    Fragment localFragment = X.a(GHSSearchFilterFragment.class.getSimpleName());
    if (localFragment != null)
    {
      ((GHSSearchFilterFragment)localFragment).f_();
      return true;
    }
    if ((y != null) && (y.a()))
    {
      y.c();
      return true;
    }
    if ((z != null) && (z.a()))
    {
      z.b();
      return true;
    }
    localFragment = X.a(2131690110);
    if ((localFragment != null) && ((localFragment instanceof com.grubhub.AppBaseLibrary.android.a))) {
      return ((com.grubhub.AppBaseLibrary.android.a)localFragment).f_();
    }
    return false;
  }
  
  public void h()
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "restaurants search results"));
  }
  
  public void i()
  {
    Y.a(s);
    GHSSearchFilterFragment localGHSSearchFilterFragment = Y;
    if ((O == null) || (O.getTotalResults() == null)) {}
    for (int i1 = 0;; i1 = O.getTotalResults().intValue())
    {
      localGHSSearchFilterFragment.a(i1);
      if ((K != null) && (K.f()))
      {
        n = true;
        K.b(false);
      }
      if ((L != null) && (L.g()))
      {
        o = true;
        L.c(false);
      }
      X.a().b(2131690111, Y, GHSSearchFilterFragment.class.getSimpleName()).b();
      return;
    }
  }
  
  public void i_()
  {
    if (P != null)
    {
      P.setVisible(true);
      P.setEnabled(true);
    }
  }
  
  public void j()
  {
    Fragment localFragment = X.a(GHSSearchFilterFragment.class.getSimpleName());
    if (localFragment != null)
    {
      X.a().a(localFragment).b();
      if (n)
      {
        K.b(true);
        n = false;
      }
      if (o)
      {
        L.c(true);
        o = false;
      }
      if (z != null) {
        z.d();
      }
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "restaurants search results"));
    }
  }
  
  public void j_()
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "enter location"));
  }
  
  public void k()
  {
    q localq = getActivity();
    if ((localq instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)localq).b(2131230872);
    }
    if (P != null)
    {
      P.setVisible(false);
      P.setEnabled(false);
    }
    z.c();
  }
  
  public void l()
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "autocomplete screen_default"));
  }
  
  public void m()
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "autocomplete screen_food"));
  }
  
  public void n()
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "autocomplete screen_restaurant"));
  }
  
  public void o()
  {
    q localq = getActivity();
    if ((localq instanceof GHSBaseActivity))
    {
      ActionBar localActionBar = getActivity().getActionBar();
      localActionBar.setTitle(null);
      localActionBar.setDisplayShowCustomEnabled(true);
      localActionBar.setDisplayShowHomeEnabled(true);
      ((GHSBaseActivity)localq).supportInvalidateOptionsMenu();
    }
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "restaurants search results"));
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof com.grubhub.AppBaseLibrary.android.feedback.e)) {
      K = ((com.grubhub.AppBaseLibrary.android.feedback.e)paramActivity);
    }
    if ((paramActivity instanceof com.grubhub.AppBaseLibrary.android.review.a)) {
      L = ((com.grubhub.AppBaseLibrary.android.review.a)paramActivity);
    }
    if ((paramActivity instanceof l)) {
      M = ((l)paramActivity);
    }
    if ((paramActivity instanceof com.grubhub.AppBaseLibrary.android.order.cart.c)) {
      N = ((com.grubhub.AppBaseLibrary.android.order.cart.c)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    setRetainInstance(true);
    X = getChildFragmentManager();
    Y = new GHSSearchFilterFragment();
    paramBundle = getArguments();
    j = paramBundle.getBoolean("force_populate", false);
    Object localObject = GHSApplication.a().b();
    e = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).o();
    f = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).A();
    String str = paramBundle.getString("search_query");
    if (!TextUtils.isEmpty(str))
    {
      s = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).z();
      if (s == null) {
        s = new GHSFilterSortCriteria();
      }
      s.setSearchTerm(str);
      ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).a(s);
      localObject = str.toLowerCase(Locale.US);
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("search", "restaurant search_google now", (String)localObject));
    }
    p = paramBundle.getString("restaurant_id");
    q = ((Uri)paramBundle.getParcelable("deep_link_uri"));
    l = paramBundle.getBoolean("application_reset");
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    paramMenuInflater.inflate(2131820547, paramMenu);
    P = paramMenu.findItem(2131690345);
    P.setActionView(2130903063);
    if (((y != null) && (y.hasFocus())) || ((z != null) && (z.a()))) {
      P.setVisible(false);
    }
    paramMenu = P.getActionView();
    paramMenu.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSSearchFragment.q(GHSSearchFragment.this) != null) {
          GHSSearchFragment.q(GHSSearchFragment.this).l();
        }
      }
    });
    paramMenu = (TextView)paramMenu.findViewById(2131689586);
    paramMenuInflater = GHSApplication.a().b().X();
    if ((paramMenuInflater != null) && (paramMenuInflater.getSubtotal() != null)) {
      paramMenu.setText(String.format(Locale.US, getString(2131231830), new Object[] { paramMenuInflater.getSubtotal() }));
    }
    for (;;)
    {
      paramMenu = getActivity();
      if ((paramMenu != null) && ((paramMenu instanceof GHSBaseActivity)) && ((z == null) || (!z.a()))) {
        ((GHSBaseActivity)paramMenu).a(true, true);
      }
      return;
      paramMenu.setText("$0.00");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, final Bundle paramBundle)
  {
    paramBundle = GHSApplication.a().b();
    Object localObject = getActivity().getActionBar();
    ((ActionBar)localObject).setDisplayShowCustomEnabled(true);
    ((ActionBar)localObject).setIcon(17170445);
    ((ActionBar)localObject).setDisplayShowHomeEnabled(true);
    ((ActionBar)localObject).setTitle(null);
    View localView = paramLayoutInflater.inflate(2130903062, null);
    y = ((GHSAddressBar)localView.findViewById(2131689584));
    ((ActionBar)localObject).setCustomView(localView);
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903157, paramViewGroup, false);
    I = paramLayoutInflater.inflate(2130903229, null, false);
    J = paramLayoutInflater.inflate(2130903231, null, false);
    w = ((SwipeRefreshLayout)paramViewGroup.findViewById(2131689848));
    w.setOnRefreshListener(new at()
    {
      public void a()
      {
        if (GHSSearchFragment.e(GHSSearchFragment.this) != null) {
          GHSSearchFragment.a(GHSSearchFragment.this, GHSSearchFragment.e(GHSSearchFragment.this), true, ((HeaderViewListAdapter)GHSSearchFragment.g(GHSSearchFragment.this).getAdapter()).getWrappedAdapter().getCount(), 1, true);
        }
      }
    });
    w.setColorSchemeResources(new int[] { 2131558480, 2131558479, 2131558480, 2131558479 });
    int i1 = getResources().getDimensionPixelSize(2131427554);
    w.a(false, 0, i1);
    u = new Handler();
    z = ((GHSSearchBar)paramViewGroup.findViewById(2131689573));
    localObject = (ViewGroup)paramViewGroup.findViewById(2131690101);
    z.setSearchResultsContainer((ViewGroup)localObject);
    z.setSearchBarListener(this);
    localObject = (ViewGroup)paramViewGroup.findViewById(2131690109);
    y.setAddressDropdownContainer((ViewGroup)localObject);
    y.setAddressBarListener(this);
    y.setHideView(z);
    B = paramViewGroup.findViewById(2131690099);
    C = paramViewGroup.findViewById(2131690103);
    A = ((TextView)paramViewGroup.findViewById(2131690105));
    D = paramViewGroup.findViewById(2131690104);
    E = paramViewGroup.findViewById(2131690106);
    F = paramViewGroup.findViewById(2131690107);
    G = paramViewGroup.findViewById(2131690108);
    D.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSSearchFragment.k(GHSSearchFragment.this).setVisibility(8);
        GHSSearchFragment.l(GHSSearchFragment.this).setVisibility(0);
      }
    });
    F.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSSearchFragment.k(GHSSearchFragment.this).setVisibility(0);
        GHSSearchFragment.l(GHSSearchFragment.this).setVisibility(8);
      }
    });
    G.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = GHSSearchFragment.e(GHSSearchFragment.this).getSearchTerm();
        com.grubhub.AppBaseLibrary.android.order.g localg = GHSSearchFragment.e(GHSSearchFragment.this).getOrderType();
        GHSSearchFragment.e(GHSSearchFragment.this).resetFilterValues();
        GHSSearchFragment.e(GHSSearchFragment.this).setSearchTerm(paramAnonymousView);
        GHSSearchFragment.e(GHSSearchFragment.this).setOrderType(localg);
        paramBundle.a(GHSSearchFragment.e(GHSSearchFragment.this));
        GHSSearchFragment.b(GHSSearchFragment.this).e();
        GHSSearchFragment.a(GHSSearchFragment.this, GHSSearchFragment.e(GHSSearchFragment.this), true);
        GHSSearchFragment.m(GHSSearchFragment.this);
        h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "restaurants search results"));
      }
    });
    H = ((GHSLoadingViewFlipper)paramViewGroup.findViewById(2131690094));
    v = ((GHSOverScrollListView)paramViewGroup.findViewById(2131690100));
    v.setOverScrollListener(this);
    x = ((GHSLoadingViewFlipper)paramLayoutInflater.inflate(2130903180, v, false));
    x.setLoadingText(getString(2131232018));
    v.addFooterView(x, null, false);
    v.setAdapter(new k(this, getActivity(), 2130903221, new ArrayList()));
    v.removeFooterView(x);
    paramLayoutInflater = new View(paramViewGroup.getContext());
    v.addHeaderView(paramLayoutInflater, null, false);
    v.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, final View paramAnonymousView, final int paramAnonymousInt, long paramAnonymousLong)
      {
        GHSSearchFragment.a(GHSSearchFragment.this).clearFocus();
        GHSSearchFragment.b(GHSSearchFragment.this).clearFocus();
        paramAnonymousLong = 0L;
        if (GHSSearchFragment.n(GHSSearchFragment.this))
        {
          ((InputMethodManager)paramAnonymousAdapterView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymousAdapterView.getWindowToken(), 2);
          paramAnonymousLong = 350L;
        }
        GHSSearchFragment.o(GHSSearchFragment.this).postDelayed(new Runnable()
        {
          public void run()
          {
            GHSSearchFragment.a(GHSSearchFragment.this, paramAnonymousView, paramAnonymousInt);
          }
        }, paramAnonymousLong);
      }
    });
    t = new ViewTreeObserver.OnGlobalLayoutListener()
    {
      public void onGlobalLayout()
      {
        Object localObject = new Rect();
        GHSSearchFragment.g(GHSSearchFragment.this).getWindowVisibleDisplayFrame((Rect)localObject);
        int i = GHSSearchFragment.g(GHSSearchFragment.this).getRootView().getHeight();
        int j = bottom;
        int k = top;
        localObject = GHSSearchFragment.this;
        if (i - (j - k) > 150) {}
        for (boolean bool = true;; bool = false)
        {
          GHSSearchFragment.d((GHSSearchFragment)localObject, bool);
          return;
        }
      }
    };
    v.getViewTreeObserver().addOnGlobalLayoutListener(t);
    v.setOnScrollListener(ab);
    if ((M != null) && (M.n() != -100))
    {
      paramLayoutInflater = v.getViewTreeObserver();
      if (paramLayoutInflater != null) {
        paramLayoutInflater.addOnPreDrawListener(new ViewTreeObserver.OnPreDrawListener()
        {
          public boolean onPreDraw()
          {
            GHSSearchFragment.g(GHSSearchFragment.this).getViewTreeObserver().removeOnPreDrawListener(this);
            try
            {
              GHSSearchFragment.p(GHSSearchFragment.this);
              return true;
            }
            catch (Throwable localThrowable)
            {
              for (;;)
              {
                com.grubhub.AppBaseLibrary.android.utils.e.a.b(GHSSearchFragment.s(), localThrowable.getMessage());
              }
            }
          }
        });
      }
    }
    paramLayoutInflater = GHSApplication.d(getActivity());
    paramBundle = paramBundle.R();
    if ((paramLayoutInflater != null) && (paramBundle != null) && (!paramBundle.isEmpty())) {
      y.a(paramBundle, false);
    }
    if ((j) || (u())) {}
    for (boolean bool = true;; bool = false)
    {
      c(bool);
      return paramViewGroup;
    }
  }
  
  public void onDestroyView()
  {
    super.onDestroyView();
    ViewTreeObserver localViewTreeObserver;
    if ((v != null) && (t != null))
    {
      localViewTreeObserver = v.getViewTreeObserver();
      if (Build.VERSION.SDK_INT >= 16) {
        localViewTreeObserver.removeOnGlobalLayoutListener(t);
      }
    }
    else
    {
      return;
    }
    localViewTreeObserver.removeGlobalOnLayoutListener(t);
  }
  
  public void onDetach()
  {
    super.onDetach();
    K = null;
    L = null;
    M = null;
    N = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      if ((GHSSearchFilterFragment)X.a(GHSSearchFilterFragment.class.getSimpleName()) != null) {
        return super.onOptionsItemSelected(paramMenuItem);
      }
      if (z.a())
      {
        getActivity().onBackPressed();
        return true;
      }
      if (M != null)
      {
        M.m();
        return true;
      }
      return false;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPause()
  {
    super.onPause();
    try
    {
      o.a(getActivity()).a(Z);
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      try
      {
        for (;;)
        {
          o.a(getActivity()).a(aa);
          d(false);
          if (L != null) {
            L.c(false);
          }
          return;
          localIllegalArgumentException = localIllegalArgumentException;
          com.grubhub.AppBaseLibrary.android.utils.e.a.c(b, "Logout receiver already unregistered");
        }
      }
      catch (Exception localException)
      {
        for (;;)
        {
          com.grubhub.AppBaseLibrary.android.utils.e.a.c(b, "Token receiver already unregistered.");
        }
      }
    }
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity();
    if ((paramMenu != null) && ((paramMenu instanceof com.grubhub.AppBaseLibrary.android.e))) {
      ((com.grubhub.AppBaseLibrary.android.e)paramMenu).d(0);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    Object localObject1 = getActivity();
    if ((localObject1 != null) && ((localObject1 instanceof GHSMainActivity)))
    {
      ((GHSMainActivity)localObject1).d(true);
      ((Activity)localObject1).invalidateOptionsMenu();
    }
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    Object localObject3 = localb.N();
    Object localObject2 = localb.R();
    if (z != null) {
      z.setPastOrders(localb.ab());
    }
    boolean bool;
    if (localObject3 != null)
    {
      r = localb.E();
      if ((localObject2 != null) && (!((ArrayList)localObject2).isEmpty()))
      {
        localObject3 = y;
        if ((g) || ((f) && (!com.grubhub.AppBaseLibrary.android.utils.f.a(y.getCurrentAddress())))) {
          break label373;
        }
        bool = true;
        ((GHSAddressBar)localObject3).a((ArrayList)localObject2, bool);
        if (!f)
        {
          localb.l(true);
          f = true;
        }
      }
    }
    localObject2 = new IntentFilter(((Activity)localObject1).getString(2131230829));
    o.a((Context)localObject1).a(Z, (IntentFilter)localObject2);
    o.a((Context)localObject1).a(aa, new IntentFilter("com.grubhub.AppBaseLibrary.android.utils.BROADCAST"));
    if (q != null)
    {
      localObject1 = com.grubhub.AppBaseLibrary.android.utils.b.a(q);
      if ((localObject1 == null) || (M == null)) {
        break label646;
      }
      s = localb.z();
      if (s == null) {
        break label646;
      }
      M.a((String)localObject1, true, true, q, s.getAddress(), s.getOrderType());
    }
    label368:
    label373:
    label641:
    label646:
    for (int i1 = 1;; i1 = 0)
    {
      getArguments().remove("deep_link_uri");
      q = null;
      if (i)
      {
        c(true);
        if (v != null) {
          v.setDividerHeight(d);
        }
        i = false;
      }
      if (i1 == 0)
      {
        if (localb.g()) {
          w();
        }
      }
      else
      {
        z();
        return;
        bool = false;
        break;
        if (com.grubhub.AppBaseLibrary.android.utils.f.b(p))
        {
          localObject1 = getArguments();
          localObject2 = (GHSIAddressDataModel)((Bundle)localObject1).getParcelable("search_address");
          localObject3 = (com.grubhub.AppBaseLibrary.android.order.g)((Bundle)localObject1).getSerializable("order_type");
          if (M == null) {
            break label641;
          }
          M.a(p, true, false, null, (GHSIAddressDataModel)localObject2, (com.grubhub.AppBaseLibrary.android.order.g)localObject3);
        }
      }
      for (i1 = 1;; i1 = 0)
      {
        ((Bundle)localObject1).remove("restaurant_id");
        p = null;
        break;
        if (u())
        {
          s = localb.z();
          if (s != null)
          {
            localObject1 = y;
            localObject2 = s.getAddressString();
            localObject3 = s.getOrderType();
            String str1 = s.getSavedAddressId();
            String str2 = s.getSavedAddressLabel();
            if (!g) {}
            for (bool = true;; bool = false)
            {
              ((GHSAddressBar)localObject1).a((String)localObject2, (com.grubhub.AppBaseLibrary.android.order.g)localObject3, str1, str2, bool);
              i1 = 0;
              break;
            }
          }
        }
        else if ((com.grubhub.AppBaseLibrary.android.utils.f.a(y.getCurrentAddress())) && (y != null))
        {
          y.d();
        }
        i1 = 0;
        break;
        if ((K == null) || (!com.grubhub.AppBaseLibrary.android.feedback.d.a(getActivity(), com.grubhub.AppBaseLibrary.android.feedback.b.SEARCH_AFTER_PAST_ORDER))) {
          break label368;
        }
        K.b(com.grubhub.AppBaseLibrary.android.feedback.b.SEARCH_AFTER_PAST_ORDER);
        K.b(true);
        break label368;
      }
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if ((Q != null) && (!Q.h()))
    {
      g = true;
      z.e();
      Q.a();
    }
    y();
    h.a().e();
    q localq = getActivity();
    if ((localq != null) && ((localq instanceof GHSMainActivity)) && (!((GHSMainActivity)localq).o()) && (q == null) && (!m)) {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_SEARCH, "restaurants search results"));
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (Q != null)
    {
      Q.g();
      z.d();
      v.removeFooterView(x);
      H.b();
      g = false;
    }
    if (R != null)
    {
      R.g();
      R = null;
      H.b();
    }
    if (S != null)
    {
      S.g();
      S = null;
      H.b();
    }
    if (T != null)
    {
      T.g();
      T = null;
    }
    if (V != null)
    {
      V.g();
      V = null;
    }
    if (U != null)
    {
      U.g();
      U = null;
    }
    if (W != null)
    {
      W.g();
      W = null;
    }
  }
  
  public void p()
  {
    if (V != null)
    {
      V.g();
      V = null;
    }
  }
  
  public void q()
  {
    if (z != null) {
      z.b();
    }
  }
  
  public void r()
  {
    r = GHSApplication.a().b().E();
    if ((v != null) && (v.getAdapter() != null)) {
      ((BaseAdapter)((HeaderViewListAdapter)v.getAdapter()).getWrappedAdapter()).notifyDataSetChanged();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */