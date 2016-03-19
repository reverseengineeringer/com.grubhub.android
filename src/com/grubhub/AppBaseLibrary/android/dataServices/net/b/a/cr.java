package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2MenuItemUpdateDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel.GHSICartOptions;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.e;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class cr
  extends a<cr, GHSICartDataModel, Void>
{
  protected String l;
  protected String m;
  protected V2MenuItemUpdateDTO n;
  
  public cr(cs paramcs)
  {
    super(paramcs);
    l = cs.a(paramcs);
    m = cs.b(paramcs);
    n = new V2MenuItemUpdateDTO(cs.c(paramcs));
  }
  
  private boolean i()
  {
    return (n != null) && (f.b(n.getMenuItemId())) && (f.b(n.getRestaurantId())) && (n.getQuantity() > 0) && (j());
  }
  
  private boolean j()
  {
    if ((n.getOptions() == null) || (n.getOptions().isEmpty())) {
      return true;
    }
    Iterator localIterator = n.getOptions().iterator();
    while (localIterator.hasNext()) {
      if (f.a(((GHSIMenuItemUpdateModel.GHSICartOptions)localIterator.next()).getId())) {
        return false;
      }
    }
    return true;
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("espresso");
    g.a("carts");
    g.a(l);
    g.a("lines");
    g.a(m);
  }
  
  protected void c()
  {
    e locale = new e(g.toString(), h(), new k(), V2CartDTO.class, a, i, j);
    locale.setTag(c);
    h = locale;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(m)) && (f.b(e)) && (i());
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
    localMap.put("lineId", m);
    Gson localGson = new Gson();
    Iterator localIterator = h().entrySet().iterator();
    while (localIterator.hasNext())
    {
      Map.Entry localEntry = (Map.Entry)localIterator.next();
      localMap.put(localEntry.getKey(), localGson.toJson(localEntry.getValue()));
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (n != null)
    {
      localHashMap.put("menu_item_id", n.getMenuItemId());
      localHashMap.put("special_instructions", n.getSpecialInstructions());
      localHashMap.put("restaurant_id", n.getRestaurantId());
      localHashMap.put("quantity", Integer.toString(n.getQuantity()));
      localHashMap.put("options", n.getOptions());
      if (n.getApplyFreeGrub() != null) {
        localHashMap.put("apply_free_grub", n.getApplyFreeGrub());
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */