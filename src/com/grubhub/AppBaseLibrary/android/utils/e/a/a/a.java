package com.grubhub.AppBaseLibrary.android.utils.e.a.a;

import android.text.TextUtils;
import com.grubhub.AppBaseLibrary.android.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFacetOption;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterFragmentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPriceFilterModel.PriceValues;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRatingsFilterModel.RatingsValues;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class a
  implements c
{
  private Map<String, String> a = null;
  
  private String a(String paramString)
  {
    String str;
    if (paramString != null)
    {
      str = paramString;
      if (!TextUtils.isEmpty(paramString)) {}
    }
    else
    {
      str = "-None-";
    }
    return str;
  }
  
  public Map<String, String> a()
  {
    Map localMap = a;
    a = null;
    return localMap;
  }
  
  public void a(final b paramb)
  {
    if (paramb == null)
    {
      a = null;
      return;
    }
    a = new HashMap() {};
  }
  
  public void a(final com.grubhub.AppBaseLibrary.android.c.c.a parama)
  {
    if (parama == null)
    {
      a = null;
      return;
    }
    a = new HashMap() {};
  }
  
  public void a(final GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    if (paramGHSFilterSortCriteria == null)
    {
      a = null;
      return;
    }
    a = new HashMap() {};
    Object localObject1;
    Object localObject2;
    if ((paramGHSFilterSortCriteria.getFilterFragmentsModel() != null) && (paramGHSFilterSortCriteria.getFilterFragmentsModel().getSingleValueRefinements() != null))
    {
      localObject1 = paramGHSFilterSortCriteria.getFilterFragmentsModel().getSingleValueRefinements().entrySet().iterator();
      while (((Iterator)localObject1).hasNext())
      {
        localObject2 = (Map.Entry)((Iterator)localObject1).next();
        a.put(((GHSFacetOption)((Map.Entry)localObject2).getValue()).getDisplayName(), Boolean.toString(((GHSFacetOption)((Map.Entry)localObject2).getValue()).isSelected()));
      }
    }
    switch (5.a[paramGHSFilterSortCriteria.getPriceModel().getMaxSelectedFilter().ordinal()])
    {
    default: 
      localObject1 = null;
      a.put("Price", a((String)localObject1));
      switch (5.b[paramGHSFilterSortCriteria.getRatingsModel().getMinSelectedFilter().ordinal()])
      {
      default: 
        localObject1 = null;
      }
      break;
    }
    for (;;)
    {
      a.put("Rating", a((String)localObject1));
      if ((paramGHSFilterSortCriteria.getCuisineList() == null) || (paramGHSFilterSortCriteria.getCuisineList().size() <= 0)) {
        break label448;
      }
      localObject1 = new StringBuilder();
      paramGHSFilterSortCriteria = paramGHSFilterSortCriteria.getCuisineList().iterator();
      while (paramGHSFilterSortCriteria.hasNext())
      {
        localObject2 = (GHSCuisine)paramGHSFilterSortCriteria.next();
        if (((GHSCuisine)localObject2).isSelected()) {
          ((StringBuilder)localObject1).append(((GHSCuisine)localObject2).getDisplayName()).append("|");
        }
      }
      localObject1 = GHSPriceFilterModel.PriceValues.ONE_ONLY.toString();
      break;
      localObject1 = GHSPriceFilterModel.PriceValues.TWO_AND_BELOW.toString();
      break;
      localObject1 = GHSPriceFilterModel.PriceValues.THREE_AND_BELOW.toString();
      break;
      localObject1 = GHSPriceFilterModel.PriceValues.FOUR_AND_BELOW.toString();
      break;
      localObject1 = GHSPriceFilterModel.PriceValues.FIVE_AND_BELOW.toString();
      break;
      localObject1 = GHSRatingsFilterModel.RatingsValues.ONE_AND_ABOVE.toString();
      continue;
      localObject1 = GHSRatingsFilterModel.RatingsValues.TWO_AND_ABOVE.toString();
      continue;
      localObject1 = GHSRatingsFilterModel.RatingsValues.THREE_AND_ABOVE.toString();
      continue;
      localObject1 = GHSRatingsFilterModel.RatingsValues.FOUR_AND_ABOVE.toString();
      continue;
      localObject1 = GHSRatingsFilterModel.RatingsValues.FIVE_ONLY.toString();
    }
    a.put("Cuisines", a(((StringBuilder)localObject1).toString()));
    return;
    label448:
    a.put("Cuisines", a(null));
  }
  
  public void a(final GHSIUserAuthDataModel.GHSISession paramGHSISession)
  {
    if (paramGHSISession == null)
    {
      a = null;
      return;
    }
    a = new HashMap() {};
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.e.a.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */