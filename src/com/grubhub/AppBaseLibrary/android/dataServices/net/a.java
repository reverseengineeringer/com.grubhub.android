package com.grubhub.AppBaseLibrary.android.dataServices.net;

import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import com.android.volley.Request;
import com.android.volley.RequestQueue;
import com.android.volley.toolbox.Volley;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.a.a.c;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSReorderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICheckoutResponse;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryLookupDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSILoggableRequest;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMenuItemUpdateModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewSurveyDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderStatus;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentResourceCreatedDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPaymentTokenModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIPickupInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSITokenizeCreditCardDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel.GHSISession;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyStatusModel;
import com.grubhub.AppBaseLibrary.android.login.GHSLoginActivity;
import com.grubhub.AppBaseLibrary.android.order.cart.i;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.l;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;

public abstract class a
{
  protected static RequestQueue a;
  protected Context b;
  protected String c;
  protected String d;
  protected String e;
  protected String f;
  protected int g;
  protected int h;
  
  protected a(Context paramContext)
  {
    b = paramContext.getApplicationContext();
    g = paramContext.getResources().getInteger(2131492873);
    h = paramContext.getResources().getInteger(2131492874);
    e = paramContext.getResources().getString(2131232054);
    if (a == null) {
      a = Volley.newRequestQueue(paramContext);
    }
  }
  
  public static boolean b(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    boolean bool2 = true;
    boolean bool3 = false;
    boolean bool1 = bool3;
    if (paramb != null)
    {
      bool1 = bool3;
      if (b != null)
      {
        if (!b.equals("UnknownHostException")) {
          break label47;
        }
        paramb.a(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_HTTP_UNKNOWN_HOST);
        bool1 = bool2;
      }
    }
    for (;;)
    {
      paramb.a(bool1);
      return bool1;
      label47:
      if (b.equals("HttpHostConnectException"))
      {
        paramb.a(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_HTTP_BAD_CONNECTION);
        bool1 = bool2;
      }
      else if (b.equals("ConnectException"))
      {
        paramb.a(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_HTTP_BAD_CONNECTION);
        bool1 = bool2;
      }
      else if (b.equals("TimeoutError"))
      {
        paramb.a(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_HTTP_TIMEOUT);
        bool1 = bool2;
      }
      else
      {
        bool1 = false;
      }
    }
  }
  
  protected GHSIUserAuthDataModel a(d paramd)
  {
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = b();
    if (localGHSIUserAuthDataModel == null) {
      a(b);
    }
    do
    {
      Date localDate;
      do
      {
        return localGHSIUserAuthDataModel;
        localDate = new Date();
      } while (!com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), localDate, false));
      if (!com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), localDate)) {
        break;
      }
      new c(b, localGHSIUserAuthDataModel.getSession().getRefresh_token(), null, null).a();
    } while (paramd == null);
    paramd.a(new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
    return localGHSIUserAuthDataModel;
    a(b);
    return localGHSIUserAuthDataModel;
  }
  
  public abstract ArrayList<String> a(String paramString, Double paramDouble1, Double paramDouble2);
  
  public abstract ArrayList<GHSIOrderReviewDataModel> a(ArrayList<GHSOrderReviewCheckDataModel> paramArrayList);
  
  public void a()
  {
    com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
    i.a();
    localb.c(null);
    localb.a(null);
    localb.a(null);
    localb.e(null);
    localb.d(null);
    localb.h(null);
    localb.a(0);
    localb.a(null);
    localb.a(null);
    localb.i();
    localb.k();
    localb.m();
    localb.j(false);
    localb.c(0);
    localb.k(false);
    localb.l(false);
    localb.a(null);
    localb.f(null);
    GHSFilterSortCriteria localGHSFilterSortCriteria1 = localb.z();
    if ((localGHSFilterSortCriteria1 != null) && (localGHSFilterSortCriteria1.getAddress() != null))
    {
      GHSFilterSortCriteria localGHSFilterSortCriteria2 = new GHSFilterSortCriteria();
      localGHSFilterSortCriteria2.setAddress(localGHSFilterSortCriteria1.getAddress(), localGHSFilterSortCriteria1.getAddressString());
      localb.a(localGHSFilterSortCriteria2);
    }
  }
  
  public abstract void a(double paramDouble1, double paramDouble2, e<GHSIAddressDataModel> parame, d paramd, String paramString);
  
  protected void a(Context paramContext)
  {
    if (paramContext != null)
    {
      Intent localIntent = GHSLoginActivity.a(paramContext, com.grubhub.AppBaseLibrary.android.login.a.LOGIN, true);
      localIntent.addFlags(268435456);
      paramContext.startActivity(localIntent);
    }
  }
  
  protected void a(Request<?> paramRequest)
  {
    if ((paramRequest instanceof GHSILoggableRequest)) {
      ((GHSILoggableRequest)paramRequest).logRequest();
    }
    a.add(paramRequest);
  }
  
  public abstract void a(GHSFilterSortCriteria paramGHSFilterSortCriteria, int paramInt1, int paramInt2, String paramString1, e<GHSIRestaurantListDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(GHSPaymentTokenEnum paramGHSPaymentTokenEnum, e<GHSIPaymentTokenModel> parame, d paramd, String paramString);
  
  public abstract void a(GHSReorderDataModel paramGHSReorderDataModel, e<GHSICartDataModel> parame, d paramd, String paramString);
  
  public abstract void a(GHSIYummyRummyAccessModel paramGHSIYummyRummyAccessModel, e<GHSIYummyRummyModel> parame, d paramd, String paramString);
  
  public abstract void a(Long paramLong, e<GHSICartDataModel> parame, d paramd, String paramString);
  
  public void a(Object paramObject)
  {
    a.cancelAll(paramObject);
  }
  
  public void a(String paramString)
  {
    c = paramString;
  }
  
  public abstract void a(String paramString1, float paramFloat, GHSICartDataModel.TipTypes paramTipTypes, e<GHSICartDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, int paramInt1, int paramInt2, String paramString2, e<GHSIReviewsDataModel> parame, d paramd, String paramString3);
  
  public abstract void a(String paramString1, long paramLong, e<GHSICartDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, GHSIAddressDataModel paramGHSIAddressDataModel, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, GHSICartPaymentDataModel paramGHSICartPaymentDataModel, e<GHSICartDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel, e<GHSICartDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString2);
  
  protected void a(final String paramString1, final f paramf, final int paramInt, final String paramString2)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("REQUEST_AUTH_CANCELED", new HashMap() {});
  }
  
  public abstract void a(String paramString1, g paramg, String paramString2, e<ArrayList<GHSIOrderReviewSurveyDataModel>> parame, d paramd, String paramString3);
  
  public abstract void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString3);
  
  public abstract void a(String paramString1, String paramString2, GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel, e<GHSICartDataModel> parame, d paramd, String paramString3);
  
  public abstract void a(String paramString1, String paramString2, e<GHSIFoodMenuDataModel.GHSIMenuItem> parame, d paramd, String paramString3);
  
  public abstract void a(String paramString1, String paramString2, String paramString3, e<GHSICartDataModel> parame, d paramd, String paramString4);
  
  public abstract void a(String paramString1, String paramString2, String paramString3, l paraml, Long paramLong, e<GHSIRestaurantDataModel> parame, d paramd, String paramString4);
  
  public abstract void a(String paramString1, String paramString2, String paramString3, String paramString4, e<GHSIUserAuthDataModel> parame, d paramd, String paramString5);
  
  public abstract void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, e<GHSIUserAuthDataModel> parame, d paramd, String paramString6);
  
  public abstract void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean, e<GHSITokenizeCreditCardDataModel> parame, d paramd, String paramString8);
  
  public abstract void a(String paramString1, String paramString2, boolean paramBoolean, GHSPaymentTokenEnum paramGHSPaymentTokenEnum, e<GHSIPaymentResourceCreatedDataModel> parame, d paramd, String paramString3);
  
  public abstract void a(String paramString1, boolean paramBoolean, GHSIDeliveryInfo paramGHSIDeliveryInfo, e<GHSICartDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, boolean paramBoolean, GHSIPickupInfo paramGHSIPickupInfo, e<GHSICartDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, boolean paramBoolean, e<GHSIGetPaymentsModel> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, boolean paramBoolean1, boolean paramBoolean2, e<GHSIPastOrderListDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(String paramString1, String[] paramArrayOfString, Double paramDouble1, Double paramDouble2, g paramg, l paraml, Long paramLong, e<GHSIAutoCompleteDataModel> parame, d paramd, String paramString2);
  
  public abstract void a(ArrayList<String> paramArrayList, String paramString1, String paramString2, e<GHSIRestaurantAvailabilityDataModel> parame, d paramd, String paramString3);
  
  public abstract void a(ArrayList<GHSOrderReviewCheckDataModel> paramArrayList, boolean paramBoolean, e<ArrayList<GHSIOrderReviewDataModel>> parame, d paramd, String paramString);
  
  public abstract void a(boolean paramBoolean, e<GHSIUserCartsDataModel> parame, d paramd, String paramString);
  
  protected boolean a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    if ((paramb != null) && (paramb.c() != null)) {}
    switch (2.a[paramb.c().ordinal()])
    {
    default: 
      return false;
    }
    return true;
  }
  
  public abstract boolean a(GHSCreateOrderReviewDataModel paramGHSCreateOrderReviewDataModel);
  
  public abstract GHSIUserAuthDataModel b();
  
  public void b(String paramString)
  {
    d = paramString;
  }
  
  public abstract void b(String paramString1, e<GHSIMessage> parame, d paramd, String paramString2);
  
  public abstract void b(String paramString1, String paramString2, e<GHSIUserAuthDataModel> parame, d paramd, String paramString3);
  
  public abstract void b(String paramString1, String paramString2, String paramString3, e<Void> parame, d paramd, String paramString4);
  
  public abstract void b(String paramString1, boolean paramBoolean, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString2);
  
  public abstract void b(String paramString1, boolean paramBoolean1, boolean paramBoolean2, e<GHSIFavoriteListDataModel> parame, d paramd, String paramString2);
  
  public abstract GHSIUserAuthDataModel c();
  
  public abstract void c(String paramString1, e<GHSIUserAuthDataModel> parame, d paramd, String paramString2);
  
  public abstract void c(String paramString1, String paramString2, e<GHSICartDataModel> parame, d paramd, String paramString3);
  
  public abstract boolean c(String paramString);
  
  public abstract void d(String paramString1, e<GHSIUserAuthDataModel> parame, d paramd, String paramString2);
  
  public abstract void d(String paramString1, String paramString2, e<GHSICartDataModel> parame, d paramd, String paramString3);
  
  public abstract boolean d();
  
  public abstract void e(String paramString1, e<Void> parame, d paramd, String paramString2);
  
  public abstract void e(String paramString1, String paramString2, e<GHSICheckoutResponse> parame, d paramd, String paramString3);
  
  public abstract void f(String paramString1, e<GHSICartDataModel> parame, d paramd, String paramString2);
  
  public abstract void f(String paramString1, String paramString2, e<GHSICartDataModel> parame, d paramd, String paramString3);
  
  public abstract void g(String paramString1, e<GHSIBillModel> parame, d paramd, String paramString2);
  
  public abstract void g(String paramString1, String paramString2, e<GHSIDeletedPaymentModel> parame, d paramd, String paramString3);
  
  public abstract void h(String paramString1, e<GHSIYummyRummyStatusModel> parame, d paramd, String paramString2);
  
  public abstract void h(String paramString1, String paramString2, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString3);
  
  public abstract void i(String paramString1, e<GHSIDeliveryLookupDataModel> parame, d paramd, String paramString2);
  
  public abstract void i(String paramString1, String paramString2, e<GHSIOrderStatus> parame, d paramd, String paramString3);
  
  public abstract void j(String paramString1, String paramString2, e<GHSIFavoriteListDataModel> parame, d paramd, String paramString3);
  
  public abstract void k(String paramString1, String paramString2, e<GHSIFavoriteListDataModel> parame, d paramd, String paramString3);
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */