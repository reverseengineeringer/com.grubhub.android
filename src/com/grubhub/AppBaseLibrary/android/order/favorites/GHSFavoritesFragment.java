package com.grubhub.AppBaseLibrary.android.order.favorites;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.support.v4.widget.SwipeRefreshLayout;
import android.support.v4.widget.at;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;
import java.util.ArrayList;
import java.util.Iterator;

public class GHSFavoritesFragment
  extends Fragment
{
  private String a;
  private ArrayList<GHSIFavoriteDataModel> b;
  private ArrayList<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary> c;
  private boolean d;
  private boolean e;
  private ListView f;
  private View g;
  private SwipeRefreshLayout h;
  private GHSLoadingViewFlipper i;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.c.b j;
  private b k;
  
  public static GHSFavoritesFragment a()
  {
    return new GHSFavoritesFragment();
  }
  
  private void a(final ArrayList<String> paramArrayList, final com.grubhub.AppBaseLibrary.android.dataServices.a.c.b paramb)
  {
    Object localObject = GHSApplication.a().b().z();
    if (localObject != null) {}
    for (localObject = ((GHSFilterSortCriteria)localObject).getAddress();; localObject = new GHSFilterSortCriteria().getAddress())
    {
      localObject = new com.grubhub.AppBaseLibrary.android.dataServices.a.e(getActivity(), paramArrayList, ((GHSIAddressDataModel)localObject).getLatitude(), ((GHSIAddressDataModel)localObject).getLongitude(), null, null);
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.e)localObject).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIRestaurantAvailabilityDataModel paramAnonymousGHSIRestaurantAvailabilityDataModel)
        {
          GHSFavoritesFragment.b(GHSFavoritesFragment.this, new ArrayList());
          Iterator localIterator = paramArrayList.iterator();
          while (localIterator.hasNext())
          {
            GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary localGHSIRestaurantAvailabilitySummary = paramAnonymousGHSIRestaurantAvailabilityDataModel.getSummary((String)localIterator.next());
            if ((localGHSIRestaurantAvailabilitySummary != null) && (com.grubhub.AppBaseLibrary.android.utils.f.b(localGHSIRestaurantAvailabilitySummary.getRestaurantName()))) {
              GHSFavoritesFragment.d(GHSFavoritesFragment.this).add(localGHSIRestaurantAvailabilitySummary);
            }
          }
          b();
          GHSFavoritesFragment.e(GHSFavoritesFragment.this).setRefreshing(false);
          GHSFavoritesFragment.b(GHSFavoritesFragment.this, true);
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.e)localObject).a(new d()
      {
        public void a(final com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          q localq = getActivity();
          if (localq != null)
          {
            GHSFavoritesFragment.b(GHSFavoritesFragment.this, GHSApplication.a().b().ad());
            b();
            if (GHSFavoritesFragment.d(GHSFavoritesFragment.this) == null)
            {
              c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
              {
                public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  if (paramAnonymousb.d()) {
                    a.a();
                  }
                }
              });
              GHSFavoritesFragment.f(GHSFavoritesFragment.this).a(GHSFavoritesFragment.h(GHSFavoritesFragment.this), null);
            }
            GHSFavoritesFragment.e(GHSFavoritesFragment.this).setRefreshing(false);
          }
        }
      });
      ((com.grubhub.AppBaseLibrary.android.dataServices.a.e)localObject).a();
      return;
    }
  }
  
  public void a(final boolean paramBoolean)
  {
    final Object localObject = getActivity();
    if (localObject != null)
    {
      j = new com.grubhub.AppBaseLibrary.android.dataServices.a.c.b((Context)localObject, a, false, true, new i()new i
      {
        public void a()
        {
          if (paramBoolean)
          {
            GHSFavoritesFragment.e(GHSFavoritesFragment.this).setRefreshing(true);
            return;
          }
          GHSFavoritesFragment.f(GHSFavoritesFragment.this).setBackgroundColor(getResources().getColor(2131558468));
          GHSFavoritesFragment.f(GHSFavoritesFragment.this).a();
        }
      }, new i()
      {
        public void a()
        {
          GHSFavoritesFragment.a(GHSFavoritesFragment.this, null);
        }
      });
      localObject = j;
      j.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIFavoriteListDataModel paramAnonymousGHSIFavoriteListDataModel)
        {
          GHSFavoritesFragment.a(GHSFavoritesFragment.this, paramAnonymousGHSIFavoriteListDataModel.getFavoriteRestaurants());
          if ((GHSFavoritesFragment.g(GHSFavoritesFragment.this) != null) && (GHSFavoritesFragment.g(GHSFavoritesFragment.this).size() > 0))
          {
            paramAnonymousGHSIFavoriteListDataModel = new ArrayList();
            Iterator localIterator = GHSFavoritesFragment.g(GHSFavoritesFragment.this).iterator();
            while (localIterator.hasNext()) {
              paramAnonymousGHSIFavoriteListDataModel.add(((GHSIFavoriteDataModel)localIterator.next()).getRestaurantId());
            }
            GHSFavoritesFragment.a(GHSFavoritesFragment.this, paramAnonymousGHSIFavoriteListDataModel, localObject);
            return;
          }
          GHSFavoritesFragment.f(GHSFavoritesFragment.this).a(GHSFavoritesFragment.h(GHSFavoritesFragment.this), null);
          GHSFavoritesFragment.e(GHSFavoritesFragment.this).setRefreshing(false);
        }
      });
      j.a(new d()
      {
        public void a(final com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          q localq = getActivity();
          if (localq != null)
          {
            GHSFavoritesFragment.b(GHSFavoritesFragment.this, GHSApplication.a().b().ad());
            b();
            if (GHSFavoritesFragment.d(GHSFavoritesFragment.this) == null)
            {
              c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
              {
                public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
                {
                  if (paramAnonymousb.d()) {
                    a.a();
                  }
                }
              });
              GHSFavoritesFragment.f(GHSFavoritesFragment.this).a(GHSFavoritesFragment.h(GHSFavoritesFragment.this), null);
            }
            GHSFavoritesFragment.e(GHSFavoritesFragment.this).setRefreshing(false);
          }
          GHSFavoritesFragment.b(GHSFavoritesFragment.this, true);
        }
      });
      j.a();
    }
  }
  
  public void b()
  {
    q localq = getActivity();
    if ((localq == null) || (f == null) || (i == null) || (g == null)) {
      return;
    }
    if ((c != null) && (!c.isEmpty()))
    {
      if (f.getAdapter() == null) {
        f.setAdapter(new a(this, localq, 2130903177, c));
      }
      for (;;)
      {
        i.b();
        return;
        ((a)f.getAdapter()).a(c);
      }
    }
    i.a(g, new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        a(false);
      }
    });
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof b)) {
      k = ((b)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = GHSApplication.a().b().N();
    if (paramBundle != null) {}
    for (paramBundle = paramBundle.getUdid();; paramBundle = null)
    {
      a = paramBundle;
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramViewGroup = (ViewGroup)paramLayoutInflater.inflate(2130903123, paramViewGroup, false);
    h = ((SwipeRefreshLayout)paramViewGroup.findViewById(2131689848));
    h.setColorSchemeResources(new int[] { 2131558480, 2131558479, 2131558480, 2131558479 });
    h.setOnRefreshListener(new at()
    {
      public void a()
      {
        a(true);
      }
    });
    i = ((GHSLoadingViewFlipper)paramViewGroup.findViewById(2131689847));
    g = paramLayoutInflater.inflate(2130903105, i, false);
    f = ((ListView)paramViewGroup.findViewById(2131689849));
    f.setAdapter(new a(this, getActivity(), 2130903177, new ArrayList()));
    f.setVisibility(0);
    f.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        String str;
        if (!GHSFavoritesFragment.a(GHSFavoritesFragment.this))
        {
          GHSFavoritesFragment.a(GHSFavoritesFragment.this, true);
          if (GHSFavoritesFragment.b(GHSFavoritesFragment.this) != null)
          {
            GHSFavoritesFragment.c(GHSFavoritesFragment.this).setVisibility(4);
            paramAnonymousAdapterView = (GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary)GHSFavoritesFragment.d(GHSFavoritesFragment.this).get(paramAnonymousInt);
            if (paramAnonymousAdapterView != null)
            {
              paramAnonymousView = GHSFavoritesFragment.b(GHSFavoritesFragment.this);
              str = paramAnonymousAdapterView.getRestaurantId();
              if (paramAnonymousAdapterView.isAvailableForDelivery()) {
                break label107;
              }
            }
          }
        }
        label107:
        for (boolean bool = true;; bool = false)
        {
          paramAnonymousView.a(str, bool);
          GHSFavoritesFragment.a(GHSFavoritesFragment.this, false);
          return;
        }
      }
    });
    return paramViewGroup;
  }
  
  public void onDetach()
  {
    super.onDetach();
    k = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      if (k != null)
      {
        k.h();
        return true;
      }
      return false;
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
      ((GHSBaseActivity)paramMenu).b(2131230845);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!e) {
      a(false);
    }
    for (;;)
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "my favorite restaurants"));
      return;
      b();
    }
  }
  
  public void onStop()
  {
    super.onStop();
    if (j != null)
    {
      j.g();
      j = null;
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.GHSFavoritesFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */