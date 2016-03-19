package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.Map;

public class av
  extends a<av, GHSIPastOrderListDataModel, Void>
{
  private String l;
  
  private av(aw paramaw)
  {
    super(paramaw);
    l = aw.a(paramaw);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d);
    }
    g.a("espresso");
    g.a("diners");
    g.a(l);
    g.a("orders");
  }
  
  protected void c()
  {
    ax localax = new ax(this, g.toString());
    localax.setTag(c);
    h = localax;
  }
  
  protected boolean d()
  {
    return (super.d()) && (f.b(l));
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    localMap.put("dinerId", l);
    return localMap;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */