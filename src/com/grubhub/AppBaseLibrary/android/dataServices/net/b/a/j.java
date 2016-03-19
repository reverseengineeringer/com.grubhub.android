package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2MenuItemUpdateDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel.GHSICartOptions;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;

public class j
  extends a<j, GHSICartDataModel, Void>
{
  protected String l;
  protected V2MenuItemUpdateDTO m;
  
  public j(k paramk)
  {
    super(paramk);
    l = k.a(paramk);
    m = new V2MenuItemUpdateDTO(k.b(paramk));
  }
  
  private boolean i()
  {
    return (m != null) && (f.b(m.getMenuItemId())) && (f.b(m.getRestaurantId())) && (m.getQuantity() > 0) && (j());
  }
  
  private boolean j()
  {
    if ((m.getOptions() == null) || (m.getOptions().isEmpty())) {
      return true;
    }
    Iterator localIterator = m.getOptions().iterator();
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
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), new com.grubhub.AppBaseLibrary.android.dataServices.net.k(), V2CartDTO.class, a, i, j);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l)) && (f.b(e)) && (i());
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("cartId", l);
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
    if (m != null)
    {
      localHashMap.put("menu_item_id", m.getMenuItemId());
      localHashMap.put("special_instructions", m.getSpecialInstructions());
      localHashMap.put("restaurant_id", m.getRestaurantId());
      localHashMap.put("quantity", Integer.toString(m.getQuantity()));
      localHashMap.put("options", m.getOptions());
      if (m.getApplyFreeGrub() != null) {
        localHashMap.put("apply_free_grub", m.getApplyFreeGrub());
      }
    }
    return localHashMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */