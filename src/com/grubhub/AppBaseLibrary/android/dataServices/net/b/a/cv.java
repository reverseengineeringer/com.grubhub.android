package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewCheckDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.f;
import com.grubhub.AppBaseLibrary.android.dataServices.net.k;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class cv
  extends a<cv, ArrayList<GHSIOrderReviewDataModel>, Void>
{
  protected ArrayList<GHSOrderReviewCheckDataModel> l;
  
  private cv(cw paramcw)
  {
    super(paramcw);
    l = cw.a(paramcw);
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("ratings");
    g.a("orders");
    g.a("state");
  }
  
  protected void c()
  {
    Object localObject = new TypeToken() {}.getType();
    localObject = new d(g.toString(), h(), new k(), (Type)localObject, a, i, j);
    ((d)localObject).setTag(c);
    h = ((f)localObject);
  }
  
  protected boolean d()
  {
    return (super.d()) && (l != null) && (!l.isEmpty());
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    if ((l != null) && (!l.isEmpty()))
    {
      Iterator localIterator = l.iterator();
      while (localIterator.hasNext())
      {
        GHSOrderReviewCheckDataModel localGHSOrderReviewCheckDataModel = (GHSOrderReviewCheckDataModel)localIterator.next();
        if (localGHSOrderReviewCheckDataModel != null) {
          localMap.put("orderReviewCheck", "orderId=" + orderId + ",timePlaced=" + timePlaced + ",state=" + state);
        }
      }
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    ArrayList localArrayList = new ArrayList();
    Object localObject = l.iterator();
    while (((Iterator)localObject).hasNext())
    {
      GHSOrderReviewCheckDataModel localGHSOrderReviewCheckDataModel = (GHSOrderReviewCheckDataModel)((Iterator)localObject).next();
      if (localGHSOrderReviewCheckDataModel != null) {
        localArrayList.add(new V2OrderReviewCheckDTO(localGHSOrderReviewCheckDataModel));
      }
    }
    localObject = new HashMap();
    ((Map)localObject).put("orders", localArrayList);
    return (Map<String, Object>)localObject;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.cv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */