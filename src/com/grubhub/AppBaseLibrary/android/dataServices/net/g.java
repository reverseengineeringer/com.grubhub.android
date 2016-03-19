package com.grubhub.AppBaseLibrary.android.dataServices.net;

import android.content.Context;
import android.content.res.Resources;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSPreferences;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSIAutoCompleteDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPaymentTokenEnum;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSReorderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ErrorMapper;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICheckoutResponse;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeletedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryLookupDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIErrorMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIGetPaymentsModel;
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
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserCartsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.favorites.GHSIFavoriteListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyAccessModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.yummyRummy.GHSIYummyRummyStatusModel;
import com.grubhub.AppBaseLibrary.android.k;
import com.grubhub.AppBaseLibrary.android.order.l;
import java.util.ArrayList;
import java.util.Iterator;

public class g
  extends a
{
  private static final String i = g.class.getSimpleName();
  private static g j;
  
  private g(Context paramContext)
  {
    super(paramContext);
    c = paramContext.getResources().getString(2131231026);
    d = paramContext.getResources().getString(2131231022);
    f = "V1";
  }
  
  private d b(final d paramd)
  {
    new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        if (!a.b(paramAnonymousb)) {
          V1ErrorMapper.mapToAppError(paramAnonymousb);
        }
        if (a(paramAnonymousb)) {
          new c(g.this, paramAnonymousb).a(b, paramd, f.USER);
        }
        while (paramd == null) {
          return;
        }
        paramd.a(paramAnonymousb);
      }
    };
  }
  
  public static g b(Context paramContext)
  {
    if (j == null) {
      j = new g(paramContext);
    }
    if (GHSApplication.u())
    {
      paramContext = GHSPreferences.a();
      if (paramContext != null)
      {
        j.a(paramContext.c());
        j.b(paramContext.d());
      }
    }
    return j;
  }
  
  private static void b(com.grubhub.AppBaseLibrary.android.b.b paramb, ArrayList<GHSIErrorMessage> paramArrayList)
  {
    if ((paramb != null) && (paramArrayList != null) && (!paramArrayList.isEmpty()))
    {
      paramArrayList = paramArrayList.iterator();
      while (paramArrayList.hasNext())
      {
        GHSIErrorMessage localGHSIErrorMessage = (GHSIErrorMessage)paramArrayList.next();
        if (localGHSIErrorMessage != null) {
          paramb.a(new com.grubhub.AppBaseLibrary.android.b.c(localGHSIErrorMessage.getCode(), localGHSIErrorMessage.getMessage()));
        }
      }
    }
  }
  
  public ArrayList<String> a(String paramString, Double paramDouble1, Double paramDouble2)
  {
    return i.b(b).a(paramString, paramDouble1, paramDouble2);
  }
  
  public ArrayList<GHSIOrderReviewDataModel> a(ArrayList<GHSOrderReviewCheckDataModel> paramArrayList)
  {
    return i.b(b).a(paramArrayList);
  }
  
  public void a(double paramDouble1, double paramDouble2, e<GHSIAddressDataModel> parame, d paramd, String paramString)
  {
    i.b(b).a(paramDouble1, paramDouble2, parame, paramd, paramString);
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria, int paramInt1, int paramInt2, String paramString1, e<GHSIRestaurantListDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramGHSFilterSortCriteria, paramInt1, paramInt2, paramString1, parame, paramd, paramString2);
  }
  
  public void a(GHSPaymentTokenEnum paramGHSPaymentTokenEnum, e<GHSIPaymentTokenModel> parame, d paramd, String paramString)
  {
    i.b(b).a(paramGHSPaymentTokenEnum, parame, paramd, paramString);
  }
  
  public void a(GHSReorderDataModel paramGHSReorderDataModel, e<GHSICartDataModel> parame, d paramd, String paramString)
  {
    i.b(b).a(paramGHSReorderDataModel, parame, paramd, paramString);
  }
  
  public void a(GHSIYummyRummyAccessModel paramGHSIYummyRummyAccessModel, e<GHSIYummyRummyModel> parame, d paramd, String paramString)
  {
    i.b(b).a(paramGHSIYummyRummyAccessModel, parame, paramd, paramString);
  }
  
  public void a(Long paramLong, e<GHSICartDataModel> parame, d paramd, String paramString)
  {
    i.b(b).a(paramLong, parame, paramd, paramString);
  }
  
  public void a(String paramString1, float paramFloat, GHSICartDataModel.TipTypes paramTipTypes, e<GHSICartDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramFloat, paramTipTypes, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, int paramInt1, int paramInt2, String paramString2, e<GHSIReviewsDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).a(paramString1, paramInt1, paramInt2, paramString2, parame, paramd, paramString3);
  }
  
  public void a(String paramString1, long paramLong, e<GHSICartDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramLong, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, GHSIAddressDataModel paramGHSIAddressDataModel, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramGHSIAddressDataModel, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, GHSICartPaymentDataModel paramGHSICartPaymentDataModel, e<GHSICartDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramGHSICartPaymentDataModel, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel, e<GHSICartDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramGHSIMenuItemUpdateModel, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, com.grubhub.AppBaseLibrary.android.order.g paramg, String paramString2, e<ArrayList<GHSIOrderReviewSurveyDataModel>> parame, d paramd, String paramString3)
  {
    i.b(b).a(paramString1, paramg, paramString2, parame, paramd, paramString3);
  }
  
  public void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString3)
  {
    i.b(b).a(paramString1, paramString2, paramGHSIAddressDataModel, parame, paramd, paramString3);
  }
  
  public void a(String paramString1, String paramString2, GHSIMenuItemUpdateModel paramGHSIMenuItemUpdateModel, e<GHSICartDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).a(paramString1, paramString2, paramGHSIMenuItemUpdateModel, parame, paramd, paramString3);
  }
  
  public void a(String paramString1, String paramString2, e<GHSIFoodMenuDataModel.GHSIMenuItem> parame, d paramd, String paramString3)
  {
    i.b(b).a(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, e<GHSICartDataModel> parame, d paramd, String paramString4)
  {
    i.b(b).a(paramString1, paramString2, paramString3, parame, paramd, paramString4);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, l paraml, Long paramLong, e<GHSIRestaurantDataModel> parame, d paramd, String paramString4)
  {
    i.b(b).a(paramString1, paramString2, paramString3, paraml, paramLong, parame, paramd, paramString4);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, e<GHSIUserAuthDataModel> parame, d paramd, String paramString5)
  {
    i.b(b).a(paramString1, paramString2, paramString3, paramString4, parame, paramd, paramString5);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, e<GHSIUserAuthDataModel> parame, d paramd, String paramString6)
  {
    i.b(b).a(paramString1, paramString2, paramString3, paramString4, paramString5, parame, paramd, paramString6);
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7, boolean paramBoolean, e<GHSITokenizeCreditCardDataModel> parame, d paramd, String paramString8)
  {
    i.b(b).a(paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7, paramBoolean, parame, paramd, paramString8);
  }
  
  public void a(String paramString1, String paramString2, boolean paramBoolean, GHSPaymentTokenEnum paramGHSPaymentTokenEnum, e<GHSIPaymentResourceCreatedDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).a(paramString1, paramString2, paramBoolean, paramGHSPaymentTokenEnum, parame, paramd, paramString3);
  }
  
  public void a(String paramString1, boolean paramBoolean, GHSIDeliveryInfo paramGHSIDeliveryInfo, e<GHSICartDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramBoolean, paramGHSIDeliveryInfo, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, boolean paramBoolean, GHSIPickupInfo paramGHSIPickupInfo, e<GHSICartDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramBoolean, paramGHSIPickupInfo, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, boolean paramBoolean, e<GHSIGetPaymentsModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramBoolean, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, boolean paramBoolean1, boolean paramBoolean2, e<GHSIPastOrderListDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramBoolean1, paramBoolean2, parame, paramd, paramString2);
  }
  
  public void a(String paramString1, String[] paramArrayOfString, Double paramDouble1, Double paramDouble2, com.grubhub.AppBaseLibrary.android.order.g paramg, l paraml, Long paramLong, e<GHSIAutoCompleteDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).a(paramString1, paramArrayOfString, paramDouble1, paramDouble2, paramg, paraml, paramLong, parame, paramd, paramString2);
  }
  
  public void a(ArrayList<String> paramArrayList, String paramString1, String paramString2, e<GHSIRestaurantAvailabilityDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).a(paramArrayList, paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void a(ArrayList<GHSOrderReviewCheckDataModel> paramArrayList, boolean paramBoolean, e<ArrayList<GHSIOrderReviewDataModel>> parame, d paramd, String paramString)
  {
    i.b(b).a(paramArrayList, paramBoolean, parame, paramd, paramString);
  }
  
  public void a(boolean paramBoolean, e<GHSIUserCartsDataModel> parame, d paramd, String paramString)
  {
    i.b(b).a(paramBoolean, parame, paramd, paramString);
  }
  
  public boolean a(GHSCreateOrderReviewDataModel paramGHSCreateOrderReviewDataModel)
  {
    return i.b(b).a(paramGHSCreateOrderReviewDataModel);
  }
  
  public GHSIUserAuthDataModel b()
  {
    return i.b(b).b();
  }
  
  public void b(String paramString1, e<GHSIMessage> parame, d paramd, String paramString2)
  {
    i.b(b).b(paramString1, parame, paramd, paramString2);
  }
  
  public void b(String paramString1, String paramString2, e<GHSIUserAuthDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).b(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void b(String paramString1, String paramString2, String paramString3, e<Void> parame, d paramd, String paramString4)
  {
    i.b(b).b(paramString1, paramString2, paramString3, parame, paramd, paramString4);
  }
  
  public void b(String paramString1, boolean paramBoolean, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString2)
  {
    i.b(b).b(paramString1, paramBoolean, parame, paramd, paramString2);
  }
  
  public void b(String paramString1, boolean paramBoolean1, boolean paramBoolean2, e<GHSIFavoriteListDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).b(paramString1, paramBoolean1, paramBoolean2, parame, paramd, paramString2);
  }
  
  public GHSIUserAuthDataModel c()
  {
    return i.b(b).c();
  }
  
  public void c(String paramString1, e<GHSIUserAuthDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).c(paramString1, parame, paramd, paramString2);
  }
  
  public void c(String paramString1, String paramString2, e<GHSICartDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).c(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public boolean c(String paramString)
  {
    return i.b(b).c(paramString);
  }
  
  public void d(String paramString1, e<GHSIUserAuthDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).d(paramString1, parame, paramd, paramString2);
  }
  
  public void d(String paramString1, String paramString2, e<GHSICartDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).d(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public boolean d()
  {
    return i.b(b).d();
  }
  
  public void e(String paramString1, e<Void> parame, d paramd, String paramString2)
  {
    i.b(b).e(paramString1, parame, paramd, paramString2);
  }
  
  public void e(String paramString1, String paramString2, e<GHSICheckoutResponse> parame, d paramd, String paramString3)
  {
    i.b(b).e(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void f(String paramString1, e<GHSICartDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).f(paramString1, parame, paramd, paramString2);
  }
  
  public void f(String paramString1, String paramString2, e<GHSICartDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).f(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void g(String paramString1, e<GHSIBillModel> parame, d paramd, String paramString2)
  {
    i.b(b).g(paramString1, parame, paramd, paramString2);
  }
  
  public void g(String paramString1, String paramString2, e<GHSIDeletedPaymentModel> parame, d paramd, String paramString3)
  {
    i.b(b).g(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void h(String paramString1, e<GHSIYummyRummyStatusModel> parame, d paramd, String paramString2)
  {
    i.b(b).h(paramString1, parame, paramd, paramString2);
  }
  
  public void h(String paramString1, String paramString2, e<ArrayList<GHSIAddressDataModel>> parame, d paramd, String paramString3)
  {
    i.b(b).h(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void i(String paramString1, e<GHSIDeliveryLookupDataModel> parame, d paramd, String paramString2)
  {
    i.b(b).i(paramString1, parame, paramd, paramString2);
  }
  
  public void i(String paramString1, String paramString2, e<GHSIOrderStatus> parame, d paramd, String paramString3)
  {
    ((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.e)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.e)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.e)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.e)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.e)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.e)((com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.e)new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.e(b).a(d)).c(c)).a(g)).b(paramString3)).e(paramString1).f(paramString2).g(e).a(parame)).a(b(paramd))).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.b.a.b()
    {
      public Void a(com.grubhub.AppBaseLibrary.android.dataServices.net.b.f paramAnonymousf)
      {
        a(paramAnonymousf);
        return null;
      }
    })).b().a();
  }
  
  public void j(String paramString1, String paramString2, e<GHSIFavoriteListDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).j(paramString1, paramString2, parame, paramd, paramString3);
  }
  
  public void k(String paramString1, String paramString2, e<GHSIFavoriteListDataModel> parame, d paramd, String paramString3)
  {
    i.b(b).k(paramString1, paramString2, parame, paramd, paramString3);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.net.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */