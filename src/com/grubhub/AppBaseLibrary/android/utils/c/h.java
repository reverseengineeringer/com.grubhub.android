package com.grubhub.AppBaseLibrary.android.utils.c;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.s;
import com.google.android.gms.common.api.w;
import com.google.android.gms.tagmanager.n;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.order.l;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.concurrent.TimeUnit;

public class h
{
  private static final String a = h.class.getSimpleName();
  private static h b;
  private boolean c;
  private boolean d;
  
  public static h a()
  {
    if (b == null) {
      b = new h();
    }
    return b;
  }
  
  private Map<String, Object> a(com.google.android.gms.tagmanager.h paramh, Map<String, Object> paramMap)
  {
    paramMap.put("PlatformType", "Android App");
    paramMap.put("Brand", GHSApplication.a().getResources().getString(2131231650));
    paramMap.put("Timestamp", com.grubhub.AppBaseLibrary.android.utils.b.b());
    paramMap.put("Timezone", Integer.valueOf(com.grubhub.AppBaseLibrary.android.utils.b.c()));
    for (;;)
    {
      try
      {
        int i = Integer.parseInt(paramh.c("SessionSequence").toString());
        i += 1;
        com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, paramh.getMessage());
      }
      catch (Exception paramh)
      {
        try
        {
          GHSApplication.a().b().b(i);
          paramMap.put("SessionSequence", "" + i);
          return paramMap;
        }
        catch (Exception paramh)
        {
          for (;;) {}
        }
        paramh = paramh;
        i = 0;
      }
    }
  }
  
  private boolean a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel, String paramString)
  {
    if ((paramGHSIRestaurantDataModel == null) || (paramGHSIRestaurantDataModel.getCoupons() == null) || (com.grubhub.AppBaseLibrary.android.utils.f.a(paramString))) {
      return false;
    }
    paramGHSIRestaurantDataModel = paramGHSIRestaurantDataModel.getCoupons().iterator();
    while (paramGHSIRestaurantDataModel.hasNext())
    {
      GHSICouponListDataModel.GHSICouponDataModel localGHSICouponDataModel = (GHSICouponListDataModel.GHSICouponDataModel)paramGHSIRestaurantDataModel.next();
      if ((com.grubhub.AppBaseLibrary.android.utils.f.b(localGHSICouponDataModel.getId())) && (paramString.equals(localGHSICouponDataModel.getId()))) {
        return true;
      }
    }
    return false;
  }
  
  private void c(final b paramb)
  {
    if (paramb == null) {}
    do
    {
      return;
      paramb = paramb.b();
      if ((paramb != f.RESTAURANT_DETAILS) && (paramb != f.RESTAURANT_SEARCH) && (paramb != f.ORDER_PROCESSING) && (paramb != f.THANK_YOU)) {
        break;
      }
      paramb = GHSApplication.a().b();
      final GHSFilterSortCriteria localGHSFilterSortCriteria = paramb.z();
      if (localGHSFilterSortCriteria != null)
      {
        a(new HashMap() {});
        return;
      }
      paramb = paramb.X();
    } while (paramb == null);
    a(new HashMap() {});
    return;
    a(new HashMap() {});
  }
  
  private void d(b paramb)
  {
    HashMap localHashMap = null;
    if (paramb == null) {
      return;
    }
    Object localObject = paramb.b();
    if ((localObject == f.ORDER_PROCESSING) || (localObject == f.RESTAURANT_DETAILS))
    {
      if (localObject == f.ORDER_PROCESSING)
      {
        localObject = GHSApplication.a().b().U();
        paramb = localHashMap;
        if (localObject == null) {}
      }
      for (paramb = ((GHSIRestaurantDataModel)localObject).getRestaurantId();; paramb = paramb.d())
      {
        localHashMap = new HashMap();
        localHashMap.put("RestaurantID", paramb);
        a(localHashMap);
        return;
      }
    }
    paramb = new HashMap();
    paramb.put("RestaurantID", null);
    a(paramb);
  }
  
  private String k()
  {
    Object localObject = GHSApplication.a().b();
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).N();
    int i = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).n();
    if (localGHSIUserAuthDataModel != null)
    {
      if (i > 0)
      {
        localObject = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).ab();
        if (localObject != null)
        {
          localObject = ((GHSIPastOrderListDataModel)localObject).getPastOrders();
          if ((localObject != null) && (((ArrayList)localObject).size() > 0))
          {
            long l = ((GHSIPastOrderDataModel)((ArrayList)localObject).get(((ArrayList)localObject).size() - 1)).getTimePlacedMillis();
            if (System.currentTimeMillis() - l >= 1800000L) {
              return "diner_returning";
            }
          }
        }
      }
    }
    else {
      return "diner_unknown";
    }
    return "diner_new";
  }
  
  public void a(Context paramContext)
  {
    n localn = n.a(paramContext);
    localn.a(paramContext.getResources().getBoolean(2131361805));
    localn.a(paramContext.getResources().getString(2131231651), 2131165185).a(new w()
    {
      public void a(com.google.android.gms.tagmanager.f paramAnonymousf)
      {
        a.a(paramAnonymousf);
        paramAnonymousf.c();
        if (!paramAnonymousf.a().e()) {
          return;
        }
        a.a(paramAnonymousf);
      }
    }, 2000L, TimeUnit.MILLISECONDS);
  }
  
  public void a(final GHSICartDataModel paramGHSICartDataModel)
  {
    if (paramGHSICartDataModel == null) {
      return;
    }
    a(new HashMap() {});
  }
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    boolean bool2 = true;
    boolean bool1;
    if ((paramGHSIRestaurantDataModel != null) && (paramGHSIRestaurantDataModel.hasCoupons()))
    {
      bool1 = true;
      GHSIRestaurantDataModel localGHSIRestaurantDataModel = GHSApplication.a().b().U();
      String str = GHSApplication.a().b().u();
      if ((localGHSIRestaurantDataModel == null) || (paramGHSIRestaurantDataModel == null) || (!com.grubhub.AppBaseLibrary.android.utils.f.b(paramGHSIRestaurantDataModel.getRestaurantId())) || (!com.grubhub.AppBaseLibrary.android.utils.f.b(localGHSIRestaurantDataModel.getRestaurantId())) || (!paramGHSIRestaurantDataModel.getRestaurantId().equals(localGHSIRestaurantDataModel.getRestaurantId())) || (!com.grubhub.AppBaseLibrary.android.utils.f.b(str)) || (!a(paramGHSIRestaurantDataModel, str))) {
        break label126;
      }
    }
    for (;;)
    {
      a(bool1, bool2);
      return;
      bool1 = false;
      break;
      label126:
      bool2 = false;
    }
  }
  
  public void a(b paramb)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("screenName", paramb.c());
    localHashMap.put("PageGroup", paramb.a().toString());
    localHashMap.put("Page SubGroup", paramb.b().toString());
    localHashMap.put("PaymentMethod", null);
    localHashMap.put("Event Non-Interaction Hit", null);
    d(paramb);
    c(paramb);
    a("openScreen", localHashMap);
  }
  
  public void a(c paramc)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Event Category", paramc.a());
    localHashMap.put("Event Action", paramc.b());
    localHashMap.put("Event Label", paramc.c());
    localHashMap.put("Event Non-Interaction Hit", paramc.d());
    localHashMap.put("PaymentMethod", null);
    a("event", localHashMap);
  }
  
  public void a(d paramd)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("FeedbackID", paramd.a());
    localHashMap.put("FeedbackCategory", paramd.b());
    localHashMap.put("FeedbackSearchAddress", paramd.c());
    localHashMap.put("Event Non-Interaction Hit", null);
    localHashMap.put("PaymentMethod", null);
    a("feedback", localHashMap);
  }
  
  public void a(i parami)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("transactionId", parami.a());
    localHashMap.put("transactionAffiliation", parami.c());
    localHashMap.put("transactionTotal", parami.b());
    localHashMap.put("transactionTax", parami.d());
    localHashMap.put("transactionShipping", parami.e());
    localHashMap.put("transactionCurrency", parami.f());
    localHashMap.put("transactionProducts", parami.g());
    localHashMap.put("PaymentMethod", parami.h());
    localHashMap.put("futureorderflag", parami.i());
    a("transaction", localHashMap);
    localHashMap.put("transactionId", null);
    localHashMap.put("transactionAffiliation", null);
    localHashMap.put("transactionTotal", null);
    localHashMap.put("transactionTax", null);
    localHashMap.put("transactionShipping", null);
    localHashMap.put("transactionCurrency", null);
    localHashMap.put("transactionProducts", null);
    localHashMap.put("PaymentMethod", null);
    localHashMap.put("futureorderflag", null);
    a(localHashMap);
  }
  
  public void a(String paramString)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("AppsFlyerDeviceID", paramString);
    a(localHashMap);
    c = true;
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5)
  {
    HashMap localHashMap = new HashMap();
    if ((com.grubhub.AppBaseLibrary.android.utils.f.b(paramString1)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(paramString2)))
    {
      localHashMap.put("utm_medium", paramString1);
      localHashMap.put("utm_source", paramString2);
      if (com.grubhub.AppBaseLibrary.android.utils.f.b(paramString3)) {
        localHashMap.put("utm_campaign", paramString3);
      }
      if (com.grubhub.AppBaseLibrary.android.utils.f.b(paramString4)) {
        localHashMap.put("utm_content", paramString4);
      }
      if (com.grubhub.AppBaseLibrary.android.utils.f.b(paramString5)) {
        localHashMap.put("utm_term", paramString5);
      }
    }
    a(localHashMap);
  }
  
  public void a(String paramString, Map<String, Object> paramMap)
  {
    Context localContext = GHSApplication.a().getApplicationContext();
    com.google.android.gms.tagmanager.h localh = n.a(localContext).a();
    a(localh, paramMap);
    localh.a(paramString, paramMap);
    n.a(localContext).b();
    j();
  }
  
  public void a(Map<String, Object> paramMap)
  {
    n.a(GHSApplication.a().getApplicationContext()).a().a(paramMap);
  }
  
  public void a(boolean paramBoolean)
  {
    HashMap localHashMap = new HashMap();
    if (paramBoolean) {}
    for (String str = "real-time order tracking";; str = "basic order tracking")
    {
      localHashMap.put("manageddeliveryorder", str);
      a(localHashMap);
      return;
    }
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    HashMap localHashMap = new HashMap();
    if (paramBoolean)
    {
      localHashMap.put("LoggedInStatus", "Logged In");
      if (paramString != null) {
        localHashMap.put("UserID", paramString);
      }
    }
    for (;;)
    {
      a(localHashMap);
      d = true;
      return;
      localHashMap.put("LoggedInStatus", "Not Logged In");
    }
  }
  
  public void a(boolean paramBoolean1, boolean paramBoolean2)
  {
    HashMap localHashMap = new HashMap();
    if (paramBoolean1)
    {
      str = "YES";
      localHashMap.put("restaurant coupons_available", str);
      if (!paramBoolean2) {
        break label63;
      }
    }
    label63:
    for (String str = "YES";; str = "NO")
    {
      localHashMap.put("restaurant coupons_applied", str);
      a(localHashMap);
      return;
      str = "NO";
      break;
    }
  }
  
  public void b()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("New_Or_RepeatOrder", null);
    localHashMap.put("RestaurantID", null);
    localHashMap.put("futureorderflag", null);
    a(localHashMap);
  }
  
  public void b(b paramb)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("screenName", paramb.c());
    localHashMap.put("PageGroup", paramb.a().toString());
    localHashMap.put("Page SubGroup", paramb.b().toString());
    localHashMap.put("PaymentMethod", paramb.e());
    localHashMap.put("Event Non-Interaction Hit", null);
    d(paramb);
    c(paramb);
    a("openScreen", localHashMap);
  }
  
  public void b(c paramc)
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("Event Category", paramc.a());
    localHashMap.put("Event Action", paramc.b());
    localHashMap.put("Event Label", paramc.c());
    localHashMap.put("PaymentMethod", paramc.d());
    localHashMap.put("Event Non-Interaction Hit", null);
    a("event", localHashMap);
  }
  
  public void c()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("New_Or_RepeatOrder", null);
    localHashMap.put("RestaurantID", null);
    localHashMap.put("UserID", null);
    localHashMap.put("futureorderflag", null);
    a(localHashMap);
  }
  
  public void d()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("FeedbackID", null);
    a(localHashMap);
  }
  
  public void e()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("restaurant coupons_available", null);
    localHashMap.put("restaurant coupons_applied", null);
    a(localHashMap);
  }
  
  public void f()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("manageddeliveryorder", null);
    a(localHashMap);
  }
  
  public boolean g()
  {
    return c;
  }
  
  public boolean h()
  {
    return d;
  }
  
  public void i()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("DinerType", k());
    a(localHashMap);
  }
  
  public void j()
  {
    HashMap localHashMap = new HashMap();
    localHashMap.put("utm_campaign", null);
    localHashMap.put("utm_content", null);
    localHashMap.put("utm_medium", null);
    localHashMap.put("utm_source", null);
    localHashMap.put("utm_term", null);
    a(localHashMap);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.c.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */