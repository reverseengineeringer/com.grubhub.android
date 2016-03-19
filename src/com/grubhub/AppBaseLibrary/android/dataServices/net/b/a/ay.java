package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewSurveyDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import com.grubhub.AppBaseLibrary.android.order.g;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Map;

public class ay
  extends a<ay, ArrayList<GHSIOrderReviewSurveyDataModel>, Void>
{
  protected String l;
  protected g m;
  protected String n;
  
  private ay(az paramaz)
  {
    super(paramaz);
    l = az.a(paramaz);
    m = az.b(paramaz);
    n = az.c(paramaz);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("ratings");
    g.a("orders");
    g.a(l);
    g.a("surveys");
    g.a(n);
    g.a("tree");
    g.a("platform", "android-mobile");
    com.grubhub.AppBaseLibrary.android.dataServices.net.a.a locala;
    if (m != null)
    {
      locala = g;
      if (m != g.PICKUP) {
        break label128;
      }
    }
    label128:
    for (String str = "pickup";; str = "delivery")
    {
      locala.a("orderType", str);
      return;
    }
  }
  
  protected void c()
  {
    Object localObject = new TypeToken() {}.getType();
    localObject = new c(g.toString(), new k(), (Type)localObject, a, i, j);
    ((c)localObject).setTag(c);
    h = ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.f)localObject);
  }
  
  protected boolean d()
  {
    return (super.d()) && (com.grubhub.AppBaseLibrary.android.utils.f.b(l)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(n));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("orderId", l);
    if (m != null) {}
    for (String str = m.toString();; str = null)
    {
      localMap.put("orderType", str);
      localMap.put("version", n);
      return localMap;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */