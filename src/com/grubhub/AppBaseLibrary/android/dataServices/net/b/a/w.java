package com.grubhub.AppBaseLibrary.android.dataServices.net.b.a;

import com.android.volley.toolbox.RequestFuture;
import com.google.gson.Gson;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSAnswerDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSInteractionType;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSLocationType;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2AnswerDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.net.b.d;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class w
  extends a<w, Void, Boolean>
{
  protected GHSCreateOrderReviewDataModel l;
  protected RequestFuture<Void> m;
  
  private w(x paramx)
  {
    super(paramx);
    l = x.a(paramx);
    m = RequestFuture.newFuture();
  }
  
  private String a(GHSCreateOrderReviewDataModel.GHSInteractionType paramGHSInteractionType)
  {
    if (paramGHSInteractionType != null) {}
    switch (1.a[paramGHSInteractionType.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return "user-initiated-modal";
    }
    return "automatically-launched-modal";
  }
  
  private String a(GHSCreateOrderReviewDataModel.GHSLocationType paramGHSLocationType)
  {
    if (paramGHSLocationType != null) {}
    switch (1.b[paramGHSLocationType.ordinal()])
    {
    default: 
      return null;
    case 1: 
      return "order-history";
    case 2: 
      return "homescreen";
    }
    return "menu-page";
  }
  
  protected void b()
  {
    if (g == null) {
      g = new com.grubhub.AppBaseLibrary.android.dataServices.net.a.a(d, e);
    }
    g.a("ratings");
    g.a("orders");
    com.grubhub.AppBaseLibrary.android.dataServices.net.a.a locala = g;
    if (l != null) {}
    for (String str = l.getOrderId();; str = null)
    {
      locala.a(str);
      g.a("reviews");
      g.a("all");
      return;
    }
  }
  
  protected void c()
  {
    d locald = new d(g.toString(), h(), null, null, m, m);
    locald.setTag(c);
    h = locald;
  }
  
  protected boolean d()
  {
    return (super.d()) && (l != null) && (f.b(l.getOrderId())) && (f.b(l.getVersion())) && (f.b(l.getRestaurantId())) && (a(l.getInteraction()) != null) && (a(l.getLocation()) != null) && (f.b(l.getPlatform())) && (l.getAnswers() != null);
  }
  
  protected Map<String, String> e()
  {
    Map localMap = super.e();
    if (l != null)
    {
      localMap.put("order_id", l.getOrderId());
      localMap.put("version", l.getVersion());
      localMap.put("restaurant_id", l.getRestaurantId());
      localMap.put("interaction", a(l.getInteraction()));
      localMap.put("location", a(l.getLocation()));
      localMap.put("platform", l.getPlatform());
      Gson localGson = new Gson();
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = l.getAnswers().iterator();
      while (localIterator.hasNext()) {
        localArrayList.add(new V2AnswerDTO((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)localIterator.next()));
      }
      localMap.put("answers", localGson.toJson(localArrayList));
    }
    return localMap;
  }
  
  protected Map<String, Object> h()
  {
    HashMap localHashMap = new HashMap();
    if (l != null)
    {
      localHashMap.put("version", l.getVersion());
      localHashMap.put("restaurant_id", l.getRestaurantId());
      localHashMap.put("interaction", a(l.getInteraction()));
      localHashMap.put("location", a(l.getLocation()));
      localHashMap.put("platform", l.getPlatform());
      ArrayList localArrayList = new ArrayList();
      Iterator localIterator = l.getAnswers().iterator();
      while (localIterator.hasNext()) {
        localArrayList.add(new V2AnswerDTO((GHSCreateOrderReviewDataModel.GHSAnswerDataModel)localIterator.next()));
      }
      localHashMap.put("answers", localArrayList);
    }
    return localHashMap;
  }
  
  public Boolean i()
  {
    if (!d())
    {
      f();
      return Boolean.valueOf(false);
    }
    b();
    c();
    if ((k != null) && ((k instanceof y))) {
      return ((y)k).a(h, m, a);
    }
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */