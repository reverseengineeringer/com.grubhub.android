package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import android.content.Context;
import android.text.TextUtils;
import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCuisine;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFacetOption;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterFragmentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPriceFilterModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPriceFilterModel.PriceValues;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRatingsFilterModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSRatingsFilterModel.RatingsValues;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2RestaurantListDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.l;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class bi
  extends a<bi, GHSIRestaurantListDataModel, Void>
{
  protected GHSFilterSortCriteria l;
  protected Integer m;
  protected Integer n;
  protected String o;
  
  private bi(bj parambj)
  {
    super(parambj);
    l = j;
    m = k;
    n = l;
    o = m;
  }
  
  private void a(GHSFilterSortCriteria paramGHSFilterSortCriteria, com.grubhub.AppBaseLibrary.android.dataServices.net.a.a parama)
  {
    if (paramGHSFilterSortCriteria.getFilterFragmentsModel() != null)
    {
      String str = paramGHSFilterSortCriteria.getCurrentSortOption();
      if ((!TextUtils.isEmpty(str)) && (paramGHSFilterSortCriteria.getFilterFragmentsModel().getSortFragments() != null) && (paramGHSFilterSortCriteria.getFilterFragmentsModel().getSortFragments().containsKey(str))) {
        parama.b((String)paramGHSFilterSortCriteria.getFilterFragmentsModel().getSortFragments().get(str));
      }
    }
  }
  
  private void a(GHSFilterSortCriteria paramGHSFilterSortCriteria, com.grubhub.AppBaseLibrary.android.dataServices.net.a.a parama, Map<String, String> paramMap)
  {
    String str;
    if (paramMap != null)
    {
      str = "";
      switch (2.a[paramGHSFilterSortCriteria.getRatingsModel().getMaxSelectedFilter().ordinal()])
      {
      }
    }
    for (;;)
    {
      if ((paramGHSFilterSortCriteria.getRatingsModel().getHasUserSelected()) && (!TextUtils.isEmpty(str)) && (paramMap.containsKey(str))) {
        parama.b((String)paramMap.get(str));
      }
      return;
      str = GHSRatingsFilterModel.RatingsValues.ONE_AND_ABOVE.toString();
      continue;
      str = GHSRatingsFilterModel.RatingsValues.TWO_AND_ABOVE.toString();
      continue;
      str = GHSRatingsFilterModel.RatingsValues.THREE_AND_ABOVE.toString();
      continue;
      str = GHSRatingsFilterModel.RatingsValues.FOUR_AND_ABOVE.toString();
      continue;
      str = GHSRatingsFilterModel.RatingsValues.FIVE_ONLY.toString();
    }
  }
  
  private void a(com.grubhub.AppBaseLibrary.android.dataServices.net.a.a parama, Map<String, GHSFacetOption> paramMap)
  {
    if ((parama != null) && (paramMap != null) && (!paramMap.isEmpty()))
    {
      paramMap = paramMap.entrySet().iterator();
      while (paramMap.hasNext())
      {
        Map.Entry localEntry = (Map.Entry)paramMap.next();
        if ((localEntry.getValue() != null) && (((GHSFacetOption)localEntry.getValue()).isSelected())) {
          parama.b(((GHSFacetOption)localEntry.getValue()).getUriQueryFragment());
        }
      }
    }
  }
  
  private void b(GHSFilterSortCriteria paramGHSFilterSortCriteria, com.grubhub.AppBaseLibrary.android.dataServices.net.a.a parama)
  {
    if (paramGHSFilterSortCriteria.getFilterFragmentsModel() != null)
    {
      a(parama, paramGHSFilterSortCriteria.getFilterFragmentsModel().getSingleValueRefinements());
      b(paramGHSFilterSortCriteria, parama, paramGHSFilterSortCriteria.getFilterFragmentsModel().getPriceValueFragments());
      a(paramGHSFilterSortCriteria, parama, paramGHSFilterSortCriteria.getFilterFragmentsModel().getRatingsValueFragments());
    }
    if (paramGHSFilterSortCriteria.getOrderType() == g.PICKUP) {
      parama.a(com.grubhub.AppBaseLibrary.android.c.a.b.RADIUS.toString(), String.valueOf(paramGHSFilterSortCriteria.getDistanceRadius()));
    }
  }
  
  private void b(GHSFilterSortCriteria paramGHSFilterSortCriteria, com.grubhub.AppBaseLibrary.android.dataServices.net.a.a parama, Map<String, String> paramMap)
  {
    String str;
    if (paramMap != null)
    {
      str = "";
      switch (2.b[paramGHSFilterSortCriteria.getPriceModel().getMaxSelectedFilter().ordinal()])
      {
      }
    }
    for (;;)
    {
      if ((paramGHSFilterSortCriteria.getPriceModel().getHasUserSelected()) && (!TextUtils.isEmpty(str)) && (paramMap.containsKey(str))) {
        parama.b((String)paramMap.get(str));
      }
      return;
      str = GHSPriceFilterModel.PriceValues.ONE_ONLY.toString();
      continue;
      str = GHSPriceFilterModel.PriceValues.TWO_AND_BELOW.toString();
      continue;
      str = GHSPriceFilterModel.PriceValues.THREE_AND_BELOW.toString();
      continue;
      str = GHSPriceFilterModel.PriceValues.FOUR_AND_BELOW.toString();
      continue;
      str = GHSPriceFilterModel.PriceValues.FIVE_AND_BELOW.toString();
    }
  }
  
  private void c(GHSFilterSortCriteria paramGHSFilterSortCriteria, com.grubhub.AppBaseLibrary.android.dataServices.net.a.a parama)
  {
    paramGHSFilterSortCriteria = paramGHSFilterSortCriteria.getCuisineList();
    if ((paramGHSFilterSortCriteria == null) || (paramGHSFilterSortCriteria.size() == 0)) {}
    for (;;)
    {
      return;
      paramGHSFilterSortCriteria = paramGHSFilterSortCriteria.iterator();
      while (paramGHSFilterSortCriteria.hasNext())
      {
        GHSCuisine localGHSCuisine = (GHSCuisine)paramGHSFilterSortCriteria.next();
        if ((localGHSCuisine.isSelected()) && (!TextUtils.isEmpty(localGHSCuisine.getUriQueryFragment()))) {
          parama.b(localGHSCuisine.getUriQueryFragment());
        }
      }
    }
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    Object localObject = l.getAddress();
    g.a("restaurants");
    g.a("search");
    if (n.intValue() > 1) {
      g.a("search_listing");
    }
    g.a("pageNum", String.valueOf(n));
    g.a("pageSize", String.valueOf(m));
    g.a("searchId", o);
    g.a("location", "POINT(" + ((GHSIAddressDataModel)localObject).getLongitude() + " " + ((GHSIAddressDataModel)localObject).getLatitude() + ")");
    g.a("locationMode", l.getOrderType().toString());
    g.a("facetSet", f.getString(2131231617));
    g.a("sortSetId", f.getString(2131232026));
    g.a("countOmittingTimes", String.valueOf(true));
    g.a("hideHateos", String.valueOf(true));
    if ((l.getHasUserSelectedRefinements()) || (l.getHasUserSelectedCuisines()) || (l.getHasUserSelectedSort()))
    {
      a(l, g);
      b(l, g);
      c(l, g);
    }
    for (;;)
    {
      if ((!g.toString().contains("facet=open_now%3Atrue")) && (!g.toString().contains("namedQuery=open_now"))) {
        g.a("namedQuery", "open_now");
      }
      if (f.b(l.getSearchTerm())) {
        g.a(f.getString(2131230926), l.getSearchTerm());
      }
      if ((l.getSubOrderType() == l.FUTURE) && (l.getWhenFor() != 0L))
      {
        g.a("whenFor", com.grubhub.AppBaseLibrary.android.utils.b.a(l.getWhenFor(), "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true));
        g.a("isFutureOrder", String.valueOf(true));
      }
      return;
      g.a("namedQuery", "open_now");
      if (l.getOrderType() == g.PICKUP)
      {
        localObject = ((GHSIAddressDataModel)localObject).getPickupRadius();
        if ((localObject != null) && (((Float)localObject).floatValue() > 0.0F)) {
          g.a("radius", String.valueOf(localObject));
        }
      }
    }
  }
  
  protected void c()
  {
    c localc = new c(g.toString(), new k(), V2RestaurantListDTO.class, a, i, j);
    localc.setTag(c);
    h = localc;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(e)) && (l != null) && (l.getAddress() != null) && (f.b(l.getAddress().getLatitude())) && (f.b(l.getAddress().getLongitude())) && (l.getOrderType() != null) && (m != null) && (n != null);
  }
  
  protected Map<String, String> e()
  {
    Object localObject2 = null;
    Map localMap = super.e();
    localMap.put("pageSize", String.valueOf(m));
    localMap.put("pageDesired", String.valueOf(n));
    if (l != null)
    {
      if (l.getAddress() == null) {
        break label215;
      }
      localObject1 = l.getAddress().getLatitude();
      localMap.put("latitude", localObject1);
      if (l.getAddress() == null) {
        break label220;
      }
    }
    label215:
    label220:
    for (Object localObject1 = l.getAddress().getLongitude();; localObject1 = null)
    {
      localMap.put("longitude", localObject1);
      localObject1 = localObject2;
      if (l.getOrderType() != null) {
        localObject1 = l.getOrderType().toString();
      }
      localMap.put("orderType", localObject1);
      if ((l.getSubOrderType() == l.FUTURE) && (l.getWhenFor() != 0L))
      {
        localMap.put("whenFor", com.grubhub.AppBaseLibrary.android.utils.b.a(l.getWhenFor(), "yyyy-MM-dd'T'HH:mm:ss.SSS'Z'", true));
        localMap.put("isFutureOrder", String.valueOf(true));
      }
      return localMap;
      localObject1 = null;
      break;
    }
  }
  
  protected void f()
  {
    if (l == null)
    {
      if (j != null)
      {
        localObject = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_RESTAURANT_SEARCH_NONE_FOUND);
        j.a((com.grubhub.AppBaseLibrary.android.b.b)localObject);
      }
      Object localObject = getClass().getSimpleName();
      Map localMap = e();
      a((String)localObject, localMap);
      Gson localGson = new GsonBuilder().serializeNulls().create();
      com.grubhub.AppBaseLibrary.android.utils.e.a.b((String)localObject, "Missing required inputs");
      com.grubhub.AppBaseLibrary.android.utils.e.a.b((String)localObject, localGson.toJson(localMap, new TypeToken() {}.getType()));
      return;
    }
    super.f();
  }
  
  public Void h()
  {
    if (!d())
    {
      f();
      return null;
    }
    return (Void)super.a();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */