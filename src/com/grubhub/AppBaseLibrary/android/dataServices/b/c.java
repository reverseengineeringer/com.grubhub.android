package com.grubhub.AppBaseLibrary.android.dataServices.b;

import android.content.Context;
import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoValueDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSTipModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1CartDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1FoodMenuDTO.GHSMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1PastOrdersDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1RestaurantInfoDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1RestaurantListDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1ReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1SavedAddressDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1UserAuthDTO;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIDeliveryDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIFoodMenuDataModel.GHSIMenuItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;

public class c
  extends a
{
  private static final String a = c.class.getSimpleName();
  private static c b;
  
  private c(Context paramContext)
  {
    super(paramContext);
  }
  
  public static c a(Context paramContext)
  {
    if (b == null) {
      b = new c(paramContext);
    }
    return b;
  }
  
  public GHSIReviewsDataModel C()
  {
    return (GHSIReviewsDataModel)a("com.grubhub.persistence.reviews", V1ReviewsDataModel.class);
  }
  
  public ArrayList<GHSIOrderReviewDataModel> M()
  {
    return null;
  }
  
  public GHSIUserAuthDataModel N()
  {
    return (GHSIUserAuthDataModel)a("com.grubhub.persistence.user", V1UserAuthDTO.class);
  }
  
  public GHSIUserAuthDataModel O()
  {
    return (GHSIUserAuthDataModel)a("com.grubhub.persistence.anonymousUser", V1UserAuthDTO.class);
  }
  
  public GHSIFoodMenuDataModel P()
  {
    return (GHSIFoodMenuDataModel)a("com.grubhub.persistence.foodMenu", V1FoodMenuDTO.class);
  }
  
  public List<GHSIFoodMenuDataModel.GHSIMenuItem> Q()
  {
    (List)a("com.grubhub.persistence.cartMenuItems", new TypeToken() {}.getType());
  }
  
  public ArrayList<GHSIAddressDataModel> R()
  {
    (ArrayList)a("com.grubhub.persistence.savedAddressList", new TypeToken() {}.getType());
  }
  
  public ArrayList<GHSIVaultedPayPalModel> S()
  {
    return null;
  }
  
  public GHSIRestaurantDataModel T()
  {
    return (GHSIRestaurantDataModel)a("com.grubhub.persistence.searchedRestaurant", V1RestaurantInfoDTO.class);
  }
  
  public GHSIRestaurantDataModel U()
  {
    return (GHSIRestaurantDataModel)a("com.grubhub.persistence.selectedRestaurant", V1RestaurantInfoDTO.class);
  }
  
  public GHSIRestaurantDataModel V()
  {
    return (GHSIRestaurantDataModel)a("com.grubhub.persistence.receiptRestaurant", V1RestaurantInfoDTO.class);
  }
  
  public GHSIRestaurantListDataModel W()
  {
    return (GHSIRestaurantListDataModel)a("com.grubhub.persistence.restaurantList", V1RestaurantListDTO.class);
  }
  
  public GHSICartDataModel X()
  {
    return (GHSICartDataModel)a("com.grubhub.persistence.cartData", V1CartDTO.class);
  }
  
  public GHSIBillModel Y()
  {
    return null;
  }
  
  public GHSICartDataModel Z()
  {
    return (GHSICartDataModel)a("com.grubhub.persistence.receipt", V1CartDTO.class);
  }
  
  protected String a()
  {
    return "V1SharedPreferences";
  }
  
  public void a(GHSTipModel paramGHSTipModel)
  {
    a("com.grubhub.persistence.tip", paramGHSTipModel);
  }
  
  public void a(GHSIBillModel paramGHSIBillModel) {}
  
  public void a(GHSICartDataModel paramGHSICartDataModel)
  {
    a("com.grubhub.persistence.cartData", paramGHSICartDataModel);
  }
  
  public void a(GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem)
  {
    Object localObject = (List)a("com.grubhub.persistence.cartMenuItems", new TypeToken() {}.getType());
    if (localObject == null) {
      localObject = new ArrayList();
    }
    for (;;)
    {
      Iterator localIterator = ((List)localObject).iterator();
      while (localIterator.hasNext()) {
        if (((GHSIFoodMenuDataModel.GHSIMenuItem)localIterator.next()).getMenuItemId().equals(paramGHSIMenuItem.getMenuItemId())) {
          return;
        }
      }
      ((List)localObject).add(paramGHSIMenuItem);
      a("com.grubhub.persistence.cartMenuItems", localObject);
      return;
    }
  }
  
  public void a(GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel)
  {
    try
    {
      a("com.grubhub.persistence.foodMenu", paramGHSIFoodMenuDataModel);
      return;
    }
    catch (OutOfMemoryError paramGHSIFoodMenuDataModel)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, paramGHSIFoodMenuDataModel.getMessage());
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("OUT_OF_MEMORY", new HashMap() {});
    }
  }
  
  public void a(GHSIMessage paramGHSIMessage) {}
  
  public void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    a("com.grubhub.persistence.searchedRestaurant", paramGHSIRestaurantDataModel);
  }
  
  public void a(GHSIRestaurantListDataModel paramGHSIRestaurantListDataModel)
  {
    try
    {
      a("com.grubhub.persistence.restaurantList", paramGHSIRestaurantListDataModel);
      return;
    }
    catch (OutOfMemoryError paramGHSIRestaurantListDataModel)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, paramGHSIRestaurantListDataModel.getMessage());
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("OUT_OF_MEMORY", new HashMap() {});
    }
  }
  
  public void a(GHSIReviewsDataModel paramGHSIReviewsDataModel)
  {
    a("com.grubhub.persistence.reviews", paramGHSIReviewsDataModel);
  }
  
  public void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    a("com.grubhub.persistence.user", paramGHSIUserAuthDataModel);
  }
  
  public void a(GHSIPastOrderListDataModel paramGHSIPastOrderListDataModel)
  {
    a("com.grubhub.persistence.pastOrders", paramGHSIPastOrderListDataModel);
  }
  
  public void a(LinkedHashMap<String, GHSIDeliveryDataModel> paramLinkedHashMap) {}
  
  public void a(List<GHSIFoodMenuDataModel.GHSIMenuItem> paramList)
  {
    try
    {
      a("com.grubhub.persistence.cartMenuItems", paramList);
      return;
    }
    catch (OutOfMemoryError paramList)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, paramList.getMessage());
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("OUT_OF_MEMORY", new HashMap() {});
    }
  }
  
  public GHSTipModel aa()
  {
    return (GHSTipModel)a("com.grubhub.persistence.tip", GHSTipModel.class);
  }
  
  public GHSIPastOrderListDataModel ab()
  {
    return (GHSIPastOrderListDataModel)a("com.grubhub.persistence.pastOrders", V1PastOrdersDTO.class);
  }
  
  public ArrayList<GHSSearchAutoValueDataModel> ac()
  {
    return null;
  }
  
  public ArrayList<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary> ad()
  {
    return null;
  }
  
  public LinkedHashMap<String, GHSIDeliveryDataModel> ae()
  {
    return null;
  }
  
  public void b(GHSICartDataModel paramGHSICartDataModel)
  {
    a("com.grubhub.persistence.receipt", paramGHSICartDataModel);
  }
  
  public void b(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    a("com.grubhub.persistence.selectedRestaurant", paramGHSIRestaurantDataModel);
  }
  
  public void b(GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    a("com.grubhub.persistence.anonymousUser", paramGHSIUserAuthDataModel);
  }
  
  public void c(GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    try
    {
      a("com.grubhub.persistence.receiptRestaurant", paramGHSIRestaurantDataModel);
      return;
    }
    catch (OutOfMemoryError paramGHSIRestaurantDataModel)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, paramGHSIRestaurantDataModel.getMessage());
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("OUT_OF_MEMORY", new HashMap() {});
    }
  }
  
  public void c(ArrayList<GHSIOrderReviewDataModel> paramArrayList) {}
  
  public void d(ArrayList<GHSIAddressDataModel> paramArrayList)
  {
    a("com.grubhub.persistence.savedAddressList", paramArrayList);
  }
  
  public void e(ArrayList<GHSIVaultedPayPalModel> paramArrayList) {}
  
  public void f(ArrayList<GHSSearchAutoValueDataModel> paramArrayList) {}
  
  public void g(ArrayList<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary> paramArrayList) {}
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.b.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */