package com.grubhub.AppBaseLibrary.android.order.search;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.inputmethod.InputMethodManager;
import android.widget.AbsListView;
import android.widget.AbsListView.LayoutParams;
import android.widget.AbsListView.OnScrollListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.HeaderViewListAdapter;
import android.widget.ListAdapter;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.a;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReview;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel.GHSIReviews;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import com.grubhub.AppBaseLibrary.android.views.GHSOverScrollListView;
import com.grubhub.AppBaseLibrary.android.views.v;
import java.util.ArrayList;

public class GHSReviewsFragment
  extends Fragment
  implements a, com.grubhub.AppBaseLibrary.android.views.i
{
  private static final String b = GHSReviewsFragment.class.getSimpleName();
  protected ArrayList<GHSIReviewsDataModel.GHSIReview> a;
  private int c = 0;
  private boolean d;
  private boolean e;
  private boolean f;
  private String g;
  private GHSIRestaurantDataModel h;
  private GHSOverScrollListView i;
  private GHSLoadingViewFlipper j;
  private GHSLoadingViewFlipper k;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.d l;
  private f m;
  private AbsListView.OnScrollListener n = new AbsListView.OnScrollListener()
  {
    public void onScroll(AbsListView paramAnonymousAbsListView, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3)
    {
      paramAnonymousInt3 -= 15;
      if ((a != null) && (GHSReviewsFragment.a(GHSReviewsFragment.this) != null) && (GHSReviewsFragment.a(GHSReviewsFragment.this).getAdapter() != null) && (GHSReviewsFragment.b(GHSReviewsFragment.this).getRatingCount() > ((HeaderViewListAdapter)GHSReviewsFragment.a(GHSReviewsFragment.this).getAdapter()).getWrappedAdapter().getCount()) && (!GHSReviewsFragment.c(GHSReviewsFragment.this)) && (!GHSReviewsFragment.d(GHSReviewsFragment.this)) && (GHSReviewsFragment.a(GHSReviewsFragment.this).getFooterViewsCount() == 0) && (paramAnonymousInt3 > 0) && (paramAnonymousInt1 + paramAnonymousInt2 > paramAnonymousInt3)) {
        GHSReviewsFragment.e(GHSReviewsFragment.this);
      }
    }
    
    public void onScrollStateChanged(AbsListView paramAnonymousAbsListView, int paramAnonymousInt) {}
  };
  
  public static GHSReviewsFragment a(String paramString)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("RESTAURANT_ID", paramString);
    paramString = new GHSReviewsFragment();
    paramString.setArguments(localBundle);
    return paramString;
  }
  
  private void f()
  {
    d = true;
    q localq = getActivity();
    if (localq != null)
    {
      Object localObject2 = null;
      final Object localObject1 = localObject2;
      if (c > 0)
      {
        localObject1 = localObject2;
        if (a != null)
        {
          localObject1 = localObject2;
          if (a.size() > 0) {
            localObject1 = ((GHSIReviewsDataModel.GHSIReview)a.get(a.size() - 1)).getId();
          }
        }
      }
      l = new com.grubhub.AppBaseLibrary.android.dataServices.a.d(localq, g, 30, c, (String)localObject1, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
      {
        public void a()
        {
          if (GHSReviewsFragment.f(GHSReviewsFragment.this) == 0)
          {
            GHSReviewsFragment.g(GHSReviewsFragment.this).a();
            return;
          }
          if (GHSReviewsFragment.a(GHSReviewsFragment.this).getFooterViewsCount() == 0) {
            GHSReviewsFragment.a(GHSReviewsFragment.this).addFooterView(GHSReviewsFragment.h(GHSReviewsFragment.this), null, false);
          }
          GHSReviewsFragment.h(GHSReviewsFragment.this).a();
        }
      }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
      {
        public void a()
        {
          GHSReviewsFragment.a(GHSReviewsFragment.this, null);
        }
      });
      l.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIReviewsDataModel paramAnonymousGHSIReviewsDataModel)
        {
          GHSReviewsFragment.g(GHSReviewsFragment.this).b();
          GHSReviewsFragment.a(GHSReviewsFragment.this).removeFooterView(GHSReviewsFragment.h(GHSReviewsFragment.this));
          a = paramAnonymousGHSIReviewsDataModel.getReviews().getReviewList();
          if ((a != null) && (a.size() > 0)) {
            if ((GHSReviewsFragment.a(GHSReviewsFragment.this).getAdapter() == null) || (GHSReviewsFragment.f(GHSReviewsFragment.this) == 0))
            {
              GHSReviewsFragment.a(GHSReviewsFragment.this).setAdapter(new j(GHSReviewsFragment.this, getActivity(), 2130903225, a));
              GHSReviewsFragment.a(GHSReviewsFragment.this, false);
              GHSReviewsFragment.a(GHSReviewsFragment.this, GHSReviewsFragment.f(GHSReviewsFragment.this) + 30);
            }
          }
          for (;;)
          {
            GHSReviewsFragment.b(GHSReviewsFragment.this, false);
            return;
            paramAnonymousGHSIReviewsDataModel = (j)((HeaderViewListAdapter)GHSReviewsFragment.a(GHSReviewsFragment.this).getAdapter()).getWrappedAdapter();
            GHSReviewsFragment.a(GHSReviewsFragment.this, ((GHSIReviewsDataModel.GHSIReview)paramAnonymousGHSIReviewsDataModel.getItem(paramAnonymousGHSIReviewsDataModel.getCount() - 1)).getId().equals(((GHSIReviewsDataModel.GHSIReview)a.get(a.size() - 1)).getId()));
            paramAnonymousGHSIReviewsDataModel.a(a);
            break;
            GHSReviewsFragment.g(GHSReviewsFragment.this).a(2131231982, null);
          }
        }
      });
      localObject1 = l;
      l.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          q localq = getActivity();
          if (localq != null)
          {
            if (GHSReviewsFragment.f(GHSReviewsFragment.this) <= 1) {
              break label46;
            }
            GHSReviewsFragment.h(GHSReviewsFragment.this).a(2131232019, null);
          }
          for (;;)
          {
            GHSReviewsFragment.b(GHSReviewsFragment.this, false);
            return;
            label46:
            GHSReviewsFragment.a(GHSReviewsFragment.this).removeFooterView(GHSReviewsFragment.h(GHSReviewsFragment.this));
            if (paramAnonymousb.d())
            {
              c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
              {
                public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  a.a();
                }
                
                public void b(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  if (GHSReviewsFragment.i(GHSReviewsFragment.this) != null) {
                    GHSReviewsFragment.i(GHSReviewsFragment.this).k();
                  }
                }
              });
            }
            else
            {
              paramAnonymousb = GHSReviewsFragment.g(GHSReviewsFragment.this).getContext().getString(2131231603);
              GHSReviewsFragment.g(GHSReviewsFragment.this).a(paramAnonymousb, new View.OnClickListener()
              {
                public void onClick(View paramAnonymous2View)
                {
                  a.a();
                }
              });
            }
          }
        }
      });
      l.a();
    }
  }
  
  public void b() {}
  
  public void c() {}
  
  public void d()
  {
    if (a == null)
    {
      f();
      return;
    }
    ((j)((HeaderViewListAdapter)i.getAdapter()).getWrappedAdapter()).a(a);
    k.b();
  }
  
  public void e()
  {
    if ((!d) && (i != null) && (i.getAdapter() != null) && (!f) && (j.isShown())) {
      f();
    }
  }
  
  public boolean f_()
  {
    if (m != null) {
      m.k();
    }
    return true;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    Fragment localFragment = getParentFragment();
    if ((localFragment != null) && ((localFragment instanceof f))) {
      m = ((f)getParentFragment());
    }
    while (!(paramActivity instanceof f)) {
      return;
    }
    m = ((f)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
    if (paramBundle != null) {
      e = true;
    }
    g = getArguments().getString("RESTAURANT_ID");
    h = GHSApplication.a().b().T();
    if ((h == null) || (!h.getRestaurantId().equals(g))) {
      h = GHSApplication.a().b().U();
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903154, paramViewGroup, false);
    k = ((GHSLoadingViewFlipper)paramViewGroup.findViewById(2131690094));
    i = ((GHSOverScrollListView)paramViewGroup.findViewById(2131690095));
    i.setOverScrollListener(this);
    j = ((GHSLoadingViewFlipper)paramLayoutInflater.inflate(2130903180, i, false));
    j.setLoadingText(getString(2131231977));
    i.addFooterView(j, null, false);
    i.setAdapter(new j(this, getActivity(), 2130903225, new ArrayList()));
    i.removeFooterView(j);
    i.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        ((v)paramAnonymousView).setContentExpanded(true);
        ((InputMethodManager)paramAnonymousAdapterView.getContext().getSystemService("input_method")).hideSoftInputFromWindow(paramAnonymousAdapterView.getWindowToken(), 2);
      }
    });
    paramLayoutInflater = new View(paramViewGroup.getContext());
    paramLayoutInflater.setLayoutParams(new AbsListView.LayoutParams(-1, 0));
    paramLayoutInflater.setContentDescription(getString(2131231288));
    i.addHeaderView(paramLayoutInflater, null, false);
    i.setOnScrollListener(n);
    if (!e) {
      d();
    }
    return paramViewGroup;
  }
  
  public void onDetach()
  {
    super.onDetach();
    m = null;
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
      ((GHSBaseActivity)paramMenu).b(2131230868);
    }
  }
  
  public void onResume()
  {
    super.onResume();
    if (e)
    {
      d();
      e = false;
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if ((l != null) && (!l.h())) {
      l.a();
    }
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.RESTAURANT_DETAILS, "read ratings and reviews", g, null));
  }
  
  public void onStop()
  {
    super.onStop();
    if (l != null)
    {
      l.g();
      l = null;
      d = false;
      k.b();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSReviewsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */