package com.grubhub.AppBaseLibrary.android.order.search.filter;

import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.utils.c.e;
import com.grubhub.AppBaseLibrary.android.utils.c.f;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.e.a;
import java.util.Iterator;
import java.util.List;

public class GHSMoreFilterFragment
  extends Fragment
  implements c
{
  private static final String a = GHSMoreFilterFragment.class.getSimpleName();
  private boolean b;
  
  private void a(Bundle paramBundle)
  {
    GHSSortByFragment localGHSSortByFragment = new GHSSortByFragment();
    if (paramBundle != null) {
      localGHSSortByFragment.setArguments(paramBundle.getBundle("savedSortByBundle"));
    }
    a(localGHSSortByFragment, 2131689903);
  }
  
  private void a(Fragment paramFragment, int paramInt)
  {
    if ((paramFragment instanceof c))
    {
      getChildFragmentManager().a().a(paramInt, paramFragment).a();
      return;
    }
    a.b(a, String.format("Fragment type %s must implement GHSIFilterFragmentInterface.", new Object[] { paramFragment.getClass().getSimpleName() }));
  }
  
  private void b(Bundle paramBundle)
  {
    GHSOptionsFilterFragment localGHSOptionsFilterFragment = new GHSOptionsFilterFragment();
    if (paramBundle != null) {
      localGHSOptionsFilterFragment.setArguments(paramBundle.getBundle("savedOptionsFilterBundle"));
    }
    a(localGHSOptionsFilterFragment, 2131689907);
  }
  
  private void c(Bundle paramBundle)
  {
    GHSFutureOrderFilterFragment localGHSFutureOrderFilterFragment = new GHSFutureOrderFilterFragment();
    if (paramBundle != null) {
      localGHSFutureOrderFilterFragment.setArguments(paramBundle.getBundle("savedFutureOrderBundle"));
    }
    a(localGHSFutureOrderFilterFragment, 2131689908);
  }
  
  private void d(Bundle paramBundle)
  {
    GHSPriceFilterFragment localGHSPriceFilterFragment = new GHSPriceFilterFragment();
    if (paramBundle != null) {
      localGHSPriceFilterFragment.setArguments(paramBundle.getBundle("savedPriceFilterBundle"));
    }
    a(localGHSPriceFilterFragment, 2131689905);
  }
  
  private void e(Bundle paramBundle)
  {
    GHSRatingsFilterFragment localGHSRatingsFilterFragment = new GHSRatingsFilterFragment();
    if (paramBundle != null) {
      localGHSRatingsFilterFragment.setArguments(paramBundle.getBundle("savedRatingsFilterBundle"));
    }
    a(localGHSRatingsFilterFragment, 2131689904);
  }
  
  private void f(Bundle paramBundle)
  {
    GHSDistanceFilterFragment localGHSDistanceFilterFragment = new GHSDistanceFilterFragment();
    if (paramBundle != null) {
      localGHSDistanceFilterFragment.setArguments(paramBundle.getBundle("savedDistanceFilterBundle"));
    }
    a(localGHSDistanceFilterFragment, 2131689906);
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    if (paramGHSFilterSortCriteria != null)
    {
      paramGHSFilterSortCriteria.setHasUserSelectedRefinements(false);
      Iterator localIterator = getChildFragmentManager().f().iterator();
      while (localIterator.hasNext()) {
        ((c)localIterator.next()).a(paramGHSFilterSortCriteria);
      }
    }
  }
  
  public void d()
  {
    Iterator localIterator = getChildFragmentManager().f().iterator();
    while (localIterator.hasNext()) {
      ((c)localIterator.next()).d();
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    a(paramBundle);
    d(paramBundle);
    e(paramBundle);
    f(paramBundle);
    b(paramBundle);
    c(paramBundle);
    b = paramBundle.getBoolean("savedOrderIsPickup");
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903133, null);
    if (!b) {
      paramLayoutInflater.findViewById(2131689906).setVisibility(8);
    }
    if ((!GHSApplication.a().b().e()) || (!GHSApplication.b(getActivity()))) {
      paramLayoutInflater.findViewById(2131689908).setVisibility(8);
    }
    paramLayoutInflater.findViewById(2131689901).setClickable(true);
    paramLayoutInflater.findViewById(2131689901).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        d();
      }
    });
    return paramLayoutInflater;
  }
  
  public void onStart()
  {
    super.onStart();
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(e.CORE_ORDERING_EXP, f.RESTAURANT_SEARCH, "restaurant search results filters"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSMoreFilterFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */