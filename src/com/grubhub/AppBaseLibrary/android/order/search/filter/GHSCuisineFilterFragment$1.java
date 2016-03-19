package com.grubhub.AppBaseLibrary.android.order.search.filter;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import java.util.Comparator;

class GHSCuisineFilterFragment$1
  implements Comparator<GHSCuisine>
{
  GHSCuisineFilterFragment$1(GHSCuisineFilterFragment paramGHSCuisineFilterFragment) {}
  
  public int a(GHSCuisine paramGHSCuisine1, GHSCuisine paramGHSCuisine2)
  {
    return paramGHSCuisine1.getDisplayName().compareTo(paramGHSCuisine2.getDisplayName());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.filter.GHSCuisineFilterFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */