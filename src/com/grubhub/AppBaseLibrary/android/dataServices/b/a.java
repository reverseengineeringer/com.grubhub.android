package com.grubhub.AppBaseLibrary.android.dataServices.b;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Resources;
import com.google.gson.Gson;
import com.google.gson.reflect.TypeToken;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIReviewsDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.utils.d.d;
import com.grubhub.AppBaseLibrary.android.utils.f;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashSet;

@SuppressLint({"CommitPrefEdits"})
abstract class a
  implements b
{
  private SharedPreferences a;
  private Gson b;
  
  public a(Context paramContext)
  {
    a = paramContext.getSharedPreferences(a(), 0);
    b = new Gson();
  }
  
  private static void a(String paramString, final Class<?> paramClass, final Exception paramException)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("ERROR_LOADING_OBJECT_FROM_STORAGE", new HashMap() {});
  }
  
  public boolean A()
  {
    return b("com.grubhub.persistence.savedAddressLoaded", false);
  }
  
  public String B()
  {
    return a("com.grubhub.persistence.savedPhoneNumber", "");
  }
  
  public GHSIReviewsDataModel C()
  {
    return (GHSIReviewsDataModel)a("com.grubhub.persistence.reviews", GHSIReviewsDataModel.class);
  }
  
  public com.grubhub.AppBaseLibrary.android.c.c.a D()
  {
    return (com.grubhub.AppBaseLibrary.android.c.c.a)a("com.grubhub.persistence.userSession", com.grubhub.AppBaseLibrary.android.c.c.a.class);
  }
  
  public LinkedHashSet<String> E()
  {
    (LinkedHashSet)a("com.grubhub.persistence.favoriteRestaurants", new TypeToken() {}.getType());
  }
  
  public boolean F()
  {
    return b("com.grubhub.persistence.feature.yummyRummy", false);
  }
  
  public ArrayList<GHSIVaultedCreditCardModel> G()
  {
    (ArrayList)a("com.grubhub.persistence.vaultedCC", new TypeToken() {}.getType());
  }
  
  public boolean H()
  {
    return b("com.grubhub.persistence.androidPayBrandingVisible", false);
  }
  
  public String I()
  {
    return a("com.grubhub.persistence.yummyRummyPlayUrl", "");
  }
  
  public boolean J()
  {
    return b("com.grubhub.persistence.yummyRummyCheck", true);
  }
  
  public String K()
  {
    return a("com.grubhub.persistence.yummyRummyRulesUrl", "");
  }
  
  public ArrayList<GHSICartPaymentDataModel.PaymentTypes> L()
  {
    (ArrayList)a("com.grubhub.persistence.savedBaseAvailablePayments", new TypeToken() {}.getType());
  }
  
  protected int a(String paramString, int paramInt)
  {
    return a.getInt(paramString, paramInt);
  }
  
  protected long a(String paramString, long paramLong)
  {
    return a.getLong(paramString, paramLong);
  }
  
  protected <T> T a(String paramString, Class<T> paramClass)
  {
    Object localObject = null;
    try
    {
      String str = a.getString(paramString, null);
      if (str != null) {
        localObject = b.fromJson(str, paramClass);
      }
      return (T)localObject;
    }
    catch (Exception localException)
    {
      a(paramString, paramClass.getClass(), localException);
    }
    return null;
  }
  
  protected <T> T a(String paramString, Type paramType)
  {
    Object localObject = null;
    try
    {
      String str = a.getString(paramString, null);
      if (str != null) {
        localObject = b.fromJson(str, paramType);
      }
      return (T)localObject;
    }
    catch (Exception localException)
    {
      a(paramString, paramType.getClass(), localException);
    }
    return null;
  }
  
  protected abstract String a();
  
  protected String a(String paramString1, String paramString2)
  {
    return a.getString(paramString1, paramString2);
  }
  
  public void a(int paramInt)
  {
    b("com.grubhub.persistence.orderHistory", paramInt);
  }
  
  public void a(long paramLong)
  {
    b("com.grubhub.persistence.messageLastCheckedTime", paramLong);
  }
  
  public void a(com.grubhub.AppBaseLibrary.android.c.c.a parama)
  {
    a("com.grubhub.persistence.userSession", parama);
  }
  
  public void a(GHSCreateOrderReviewDataModel paramGHSCreateOrderReviewDataModel)
  {
    if ((paramGHSCreateOrderReviewDataModel != null) && (f.b(paramGHSCreateOrderReviewDataModel.getOrderId())))
    {
      HashMap localHashMap2 = h();
      if ((localHashMap2 != null) && (!localHashMap2.isEmpty()))
      {
        localHashMap1 = localHashMap2;
        if (!localHashMap2.containsKey(paramGHSCreateOrderReviewDataModel.getOrderId())) {
          break label52;
        }
      }
    }
    else
    {
      return;
    }
    HashMap localHashMap1 = new HashMap();
    label52:
    localHashMap1.put(paramGHSCreateOrderReviewDataModel.getOrderId(), paramGHSCreateOrderReviewDataModel);
    a("com.grubhub.com.persistence.pendingOrderReviews", localHashMap1);
  }
  
  public void a(GHSFilterSortCriteria paramGHSFilterSortCriteria)
  {
    a("com.grubhub.persistence.filterSortCriteria", paramGHSFilterSortCriteria);
  }
  
  public void a(GHSSelectedPaymentModel paramGHSSelectedPaymentModel)
  {
    a("com.grubhub.persistence.selectedPaymentModel", paramGHSSelectedPaymentModel);
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    if ((paramGHSIAddressDataModel == null) || ((paramGHSIAddressDataModel instanceof GHSAddressDataModel)))
    {
      a("com.grubhub.persistence.cartAddressData", paramGHSIAddressDataModel);
      return;
    }
    GHSAddressDataModel localGHSAddressDataModel = new GHSAddressDataModel();
    localGHSAddressDataModel.setLabel(paramGHSIAddressDataModel.getLabel());
    localGHSAddressDataModel.setAddress1(paramGHSIAddressDataModel.getAddress1());
    localGHSAddressDataModel.setAddress2(paramGHSIAddressDataModel.getAddress2());
    localGHSAddressDataModel.setCity(paramGHSIAddressDataModel.getCity());
    localGHSAddressDataModel.setState(paramGHSIAddressDataModel.getState());
    localGHSAddressDataModel.setCrossStreet(paramGHSIAddressDataModel.getCrossStreet());
    localGHSAddressDataModel.setZip(paramGHSIAddressDataModel.getZip());
    localGHSAddressDataModel.setCountry(paramGHSIAddressDataModel.getCountry());
    localGHSAddressDataModel.setPhone(paramGHSIAddressDataModel.getPhone());
    localGHSAddressDataModel.setLatitude(paramGHSIAddressDataModel.getLatitude());
    localGHSAddressDataModel.setLongitude(paramGHSIAddressDataModel.getLongitude());
    localGHSAddressDataModel.setIsDefault(paramGHSIAddressDataModel.getIsDefault());
    localGHSAddressDataModel.setIsSavedAddress(paramGHSIAddressDataModel.getIsSavedAddress());
    localGHSAddressDataModel.setIsPrecise(paramGHSIAddressDataModel.getIsPrecise());
    localGHSAddressDataModel.setPickupRadius(paramGHSIAddressDataModel.getPickupRadius());
    localGHSAddressDataModel.setId(paramGHSIAddressDataModel.getId());
    a("com.grubhub.persistence.cartAddressData", localGHSAddressDataModel);
  }
  
  public void a(GHSIReviewsDataModel paramGHSIReviewsDataModel)
  {
    a("com.grubhub.persistence.reviews", paramGHSIReviewsDataModel);
  }
  
  @SuppressLint({"CommitPrefEdits"})
  protected void a(String paramString, Object paramObject)
  {
    SharedPreferences.Editor localEditor = a.edit();
    localEditor.putString(paramString, b.toJson(paramObject));
    localEditor.apply();
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    if (f.b(paramString)) {
      c("com.grubhub.persistence.messageRead." + paramString, paramBoolean);
    }
  }
  
  public void a(ArrayList<GHSIVaultedCreditCardModel> paramArrayList)
  {
    a("com.grubhub.persistence.vaultedCC", paramArrayList);
  }
  
  public void a(LinkedHashSet<String> paramLinkedHashSet)
  {
    a("com.grubhub.persistence.favoriteRestaurants", paramLinkedHashSet);
  }
  
  public void a(boolean paramBoolean)
  {
    c("com.grubhub.persistence.feature.googleNearby", paramBoolean);
  }
  
  public boolean a(String paramString)
  {
    boolean bool = false;
    if (f.b(paramString)) {
      bool = b("com.grubhub.persistence.messageRead." + paramString, false);
    }
    return bool;
  }
  
  public long b(long paramLong)
  {
    return a("com.grubhub.persistence.userSessionTimeout", paramLong);
  }
  
  public void b(int paramInt)
  {
    b("com.grubhub.persistence.sessionSequence", paramInt);
  }
  
  public void b(String paramString)
  {
    if (f.b(paramString))
    {
      HashMap localHashMap = h();
      if ((localHashMap != null) && (!localHashMap.isEmpty()) && ((GHSCreateOrderReviewDataModel)localHashMap.remove(paramString) != null)) {
        a("com.grubhub.com.persistence.pendingOrderReviews", localHashMap);
      }
    }
  }
  
  protected void b(String paramString, int paramInt)
  {
    SharedPreferences.Editor localEditor = a.edit();
    localEditor.putInt(paramString, paramInt);
    localEditor.apply();
  }
  
  protected void b(String paramString, long paramLong)
  {
    SharedPreferences.Editor localEditor = a.edit();
    localEditor.putLong(paramString, paramLong);
    localEditor.apply();
  }
  
  protected void b(String paramString1, String paramString2)
  {
    SharedPreferences.Editor localEditor = a.edit();
    localEditor.putString(paramString1, paramString2);
    localEditor.apply();
  }
  
  public void b(ArrayList<GHSICartPaymentDataModel.PaymentTypes> paramArrayList)
  {
    a("com.grubhub.persistence.savedBaseAvailablePayments", paramArrayList);
  }
  
  public void b(boolean paramBoolean)
  {
    c("com.grubhub.persistence.feature.urbanAirship", paramBoolean);
  }
  
  public boolean b()
  {
    return b("com.grubhub.persistence.feature.googleNearby", GHSApplication.a().getResources().getBoolean(2131361800));
  }
  
  protected boolean b(String paramString, boolean paramBoolean)
  {
    return a.getBoolean(paramString, paramBoolean);
  }
  
  public void c(int paramInt)
  {
    b("com.grubhub.persistence.feedbackSearchCount", paramInt);
  }
  
  public void c(long paramLong)
  {
    b("com.grubhub.persistence.userSessionTimeout", paramLong);
  }
  
  public void c(String paramString)
  {
    if (f.b(paramString))
    {
      ArrayList localArrayList2 = j();
      if ((localArrayList2 != null) && (!localArrayList2.isEmpty()))
      {
        localArrayList1 = localArrayList2;
        if (!localArrayList2.contains(paramString)) {
          break label42;
        }
      }
    }
    else
    {
      return;
    }
    ArrayList localArrayList1 = new ArrayList();
    label42:
    localArrayList1.add(paramString);
    a("com.grubhub.com.persistence.quitReviewSurveys", localArrayList1);
  }
  
  protected void c(String paramString, boolean paramBoolean)
  {
    SharedPreferences.Editor localEditor = a.edit();
    localEditor.putBoolean(paramString, paramBoolean);
    localEditor.apply();
  }
  
  public void c(boolean paramBoolean)
  {
    c("com.grubhub.persistence.feature.orderTracking", paramBoolean);
  }
  
  public boolean c()
  {
    return b("com.grubhub.persistence.feature.urbanAirship", GHSApplication.a().getResources().getBoolean(2131361803));
  }
  
  public long d(long paramLong)
  {
    return a("com.grubhub.persistence.cartSearchLifetime", paramLong);
  }
  
  public void d(String paramString)
  {
    if (f.b(paramString))
    {
      ArrayList localArrayList = j();
      if ((localArrayList != null) && (!localArrayList.isEmpty()) && (localArrayList.remove(paramString))) {
        a("com.grubhub.com.persistence.quitReviewSurveys", localArrayList);
      }
    }
  }
  
  public void d(boolean paramBoolean)
  {
    c("com.grubhub.persistence.feature.futureOrders", paramBoolean);
  }
  
  public boolean d()
  {
    return b("com.grubhub.persistence.feature.orderTracking", false);
  }
  
  public void e(long paramLong)
  {
    b("com.grubhub.persistence.cartSearchLifetime", paramLong);
  }
  
  public void e(String paramString)
  {
    if (f.b(paramString))
    {
      ArrayList localArrayList2 = l();
      if ((localArrayList2 != null) && (!localArrayList2.isEmpty()))
      {
        localArrayList1 = localArrayList2;
        if (!localArrayList2.contains(paramString)) {
          break label42;
        }
      }
    }
    else
    {
      return;
    }
    ArrayList localArrayList1 = new ArrayList();
    label42:
    localArrayList1.add(paramString);
    a("com.grubhub.com.persistence.submittedOrderReviews", localArrayList1);
  }
  
  public void e(boolean paramBoolean)
  {
    c("com.grubhub.com.persistence.promptUserReview", paramBoolean);
  }
  
  public boolean e()
  {
    return b("com.grubhub.persistence.feature.futureOrders", false);
  }
  
  public long f()
  {
    return a("com.grubhub.persistence.messageLastCheckedTime", 0L);
  }
  
  public void f(String paramString)
  {
    if (f.b(paramString))
    {
      ArrayList localArrayList = l();
      if ((localArrayList != null) && (!localArrayList.isEmpty()) && (localArrayList.remove(paramString))) {
        a("com.grubhub.com.persistence.submittedOrderReviews", localArrayList);
      }
    }
  }
  
  public void f(boolean paramBoolean)
  {
    c("com.grubhub.persistence.addressSearchCompleted", paramBoolean);
  }
  
  public void g(String paramString)
  {
    b("com.grubhub.persistence.cartAppliedCouponId", paramString);
  }
  
  public void g(boolean paramBoolean)
  {
    if ((d.a()) && (paramBoolean)) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      c("com.grubhub.persistence.feature.googleWallet", paramBoolean);
      return;
    }
  }
  
  public boolean g()
  {
    return b("com.grubhub.com.persistence.promptUserReview", false);
  }
  
  public HashMap<String, GHSCreateOrderReviewDataModel> h()
  {
    (HashMap)a("com.grubhub.com.persistence.pendingOrderReviews", new TypeToken() {}.getType());
  }
  
  public void h(String paramString)
  {
    b("com.grubhub.persistence.savedPhoneNumber", paramString);
  }
  
  public void h(boolean paramBoolean)
  {
    c("com.grubhub.persistence.googleWalletPreAuth", paramBoolean);
  }
  
  public void i()
  {
    a("com.grubhub.com.persistence.pendingOrderReviews", null);
  }
  
  public void i(String paramString)
  {
    b("com.grubhub.persistence.yummyRummyPlayUrl", paramString);
  }
  
  public void i(boolean paramBoolean)
  {
    c("com.grubhub.persistence.onboardingComplete", paramBoolean);
  }
  
  public ArrayList<String> j()
  {
    (ArrayList)a("com.grubhub.com.persistence.quitReviewSurveys", new TypeToken() {}.getType());
  }
  
  public void j(String paramString)
  {
    b("com.grubhub.persistence.yummyRummyRulesUrl", paramString);
  }
  
  public void j(boolean paramBoolean)
  {
    c("com.grubhub.persistence.feedbackGiven", paramBoolean);
  }
  
  public void k()
  {
    a("com.grubhub.com.persistence.quitReviewSurveys", null);
  }
  
  public void k(boolean paramBoolean)
  {
    c("com.grubhub.persistence.pastOrderViewedWithoutAddingItems", paramBoolean);
  }
  
  public ArrayList<String> l()
  {
    (ArrayList)a("com.grubhub.com.persistence.submittedOrderReviews", new TypeToken() {}.getType());
  }
  
  public void l(boolean paramBoolean)
  {
    c("com.grubhub.persistence.savedAddressLoaded", paramBoolean);
  }
  
  public void m()
  {
    a("com.grubhub.com.persistence.submittedOrderReviews", null);
  }
  
  public void m(boolean paramBoolean)
  {
    c("com.grubhub.persistence.feature.yummyRummy", paramBoolean);
  }
  
  public int n()
  {
    return a("com.grubhub.persistence.orderHistory", 0);
  }
  
  public void n(boolean paramBoolean)
  {
    c("com.grubhub.persistence.androidPayBrandingVisible", paramBoolean);
  }
  
  public void o(boolean paramBoolean)
  {
    c("com.grubhub.persistence.yummyRummyCheck", paramBoolean);
  }
  
  public boolean o()
  {
    return b("com.grubhub.persistence.addressSearchCompleted", false);
  }
  
  public int p()
  {
    return a("com.grubhub.persistence.sessionSequence", -1);
  }
  
  public boolean q()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (d.a())
    {
      bool1 = bool2;
      if (b("com.grubhub.persistence.feature.googleWallet", false)) {
        bool1 = true;
      }
    }
    return bool1;
  }
  
  public boolean r()
  {
    return b("com.grubhub.persistence.googleWalletPreAuth", false);
  }
  
  public GHSSelectedPaymentModel s()
  {
    return (GHSSelectedPaymentModel)a("com.grubhub.persistence.selectedPaymentModel", GHSSelectedPaymentModel.class);
  }
  
  public GHSIAddressDataModel t()
  {
    return (GHSIAddressDataModel)a("com.grubhub.persistence.cartAddressData", GHSAddressDataModel.class);
  }
  
  public String u()
  {
    return a("com.grubhub.persistence.cartAppliedCouponId", null);
  }
  
  public boolean v()
  {
    return b("com.grubhub.persistence.onboardingComplete", false);
  }
  
  public boolean w()
  {
    return b("com.grubhub.persistence.feedbackGiven", false);
  }
  
  public int x()
  {
    return a("com.grubhub.persistence.feedbackSearchCount", 0);
  }
  
  public boolean y()
  {
    return b("com.grubhub.persistence.pastOrderViewedWithoutAddingItems", false);
  }
  
  public GHSFilterSortCriteria z()
  {
    return (GHSFilterSortCriteria)a("com.grubhub.persistence.filterSortCriteria", GHSFilterSortCriteria.class);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.b.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */