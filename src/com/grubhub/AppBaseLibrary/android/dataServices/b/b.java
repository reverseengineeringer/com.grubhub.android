package com.grubhub.AppBaseLibrary.android.dataServices.b;

import com.grubhub.AppBaseLibrary.android.c.c.a;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSearchAutoValueDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSSelectedPaymentModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSTipModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
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
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedCreditCardModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIVaultedPayPalModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.LinkedHashSet;
import java.util.List;

public abstract interface b
{
  public abstract boolean A();
  
  public abstract String B();
  
  public abstract GHSIReviewsDataModel C();
  
  public abstract a D();
  
  public abstract LinkedHashSet<String> E();
  
  public abstract boolean F();
  
  public abstract ArrayList<GHSIVaultedCreditCardModel> G();
  
  public abstract boolean H();
  
  public abstract String I();
  
  public abstract boolean J();
  
  public abstract String K();
  
  public abstract ArrayList<GHSICartPaymentDataModel.PaymentTypes> L();
  
  public abstract ArrayList<GHSIOrderReviewDataModel> M();
  
  public abstract GHSIUserAuthDataModel N();
  
  public abstract GHSIUserAuthDataModel O();
  
  public abstract GHSIFoodMenuDataModel P();
  
  public abstract List<GHSIFoodMenuDataModel.GHSIMenuItem> Q();
  
  public abstract ArrayList<GHSIAddressDataModel> R();
  
  public abstract ArrayList<GHSIVaultedPayPalModel> S();
  
  public abstract GHSIRestaurantDataModel T();
  
  public abstract GHSIRestaurantDataModel U();
  
  public abstract GHSIRestaurantDataModel V();
  
  public abstract GHSIRestaurantListDataModel W();
  
  public abstract GHSICartDataModel X();
  
  public abstract GHSIBillModel Y();
  
  public abstract GHSICartDataModel Z();
  
  public abstract void a(int paramInt);
  
  public abstract void a(long paramLong);
  
  public abstract void a(a parama);
  
  public abstract void a(GHSCreateOrderReviewDataModel paramGHSCreateOrderReviewDataModel);
  
  public abstract void a(GHSFilterSortCriteria paramGHSFilterSortCriteria);
  
  public abstract void a(GHSSelectedPaymentModel paramGHSSelectedPaymentModel);
  
  public abstract void a(GHSTipModel paramGHSTipModel);
  
  public abstract void a(GHSIAddressDataModel paramGHSIAddressDataModel);
  
  public abstract void a(GHSIBillModel paramGHSIBillModel);
  
  public abstract void a(GHSICartDataModel paramGHSICartDataModel);
  
  public abstract void a(GHSIFoodMenuDataModel.GHSIMenuItem paramGHSIMenuItem);
  
  public abstract void a(GHSIFoodMenuDataModel paramGHSIFoodMenuDataModel);
  
  public abstract void a(GHSIMessage paramGHSIMessage);
  
  public abstract void a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel);
  
  public abstract void a(GHSIRestaurantListDataModel paramGHSIRestaurantListDataModel);
  
  public abstract void a(GHSIReviewsDataModel paramGHSIReviewsDataModel);
  
  public abstract void a(GHSIUserAuthDataModel paramGHSIUserAuthDataModel);
  
  public abstract void a(GHSIPastOrderListDataModel paramGHSIPastOrderListDataModel);
  
  public abstract void a(String paramString, boolean paramBoolean);
  
  public abstract void a(ArrayList<GHSIVaultedCreditCardModel> paramArrayList);
  
  public abstract void a(LinkedHashMap<String, GHSIDeliveryDataModel> paramLinkedHashMap);
  
  public abstract void a(LinkedHashSet<String> paramLinkedHashSet);
  
  public abstract void a(List<GHSIFoodMenuDataModel.GHSIMenuItem> paramList);
  
  public abstract void a(boolean paramBoolean);
  
  public abstract boolean a(String paramString);
  
  public abstract GHSTipModel aa();
  
  public abstract GHSIPastOrderListDataModel ab();
  
  public abstract ArrayList<GHSSearchAutoValueDataModel> ac();
  
  public abstract ArrayList<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary> ad();
  
  public abstract LinkedHashMap<String, GHSIDeliveryDataModel> ae();
  
  public abstract long b(long paramLong);
  
  public abstract void b(int paramInt);
  
  public abstract void b(GHSICartDataModel paramGHSICartDataModel);
  
  public abstract void b(GHSIRestaurantDataModel paramGHSIRestaurantDataModel);
  
  public abstract void b(GHSIUserAuthDataModel paramGHSIUserAuthDataModel);
  
  public abstract void b(String paramString);
  
  public abstract void b(ArrayList<GHSICartPaymentDataModel.PaymentTypes> paramArrayList);
  
  public abstract void b(boolean paramBoolean);
  
  public abstract boolean b();
  
  public abstract void c(int paramInt);
  
  public abstract void c(long paramLong);
  
  public abstract void c(GHSIRestaurantDataModel paramGHSIRestaurantDataModel);
  
  public abstract void c(String paramString);
  
  public abstract void c(ArrayList<GHSIOrderReviewDataModel> paramArrayList);
  
  public abstract void c(boolean paramBoolean);
  
  public abstract boolean c();
  
  public abstract long d(long paramLong);
  
  public abstract void d(String paramString);
  
  public abstract void d(ArrayList<GHSIAddressDataModel> paramArrayList);
  
  public abstract void d(boolean paramBoolean);
  
  public abstract boolean d();
  
  public abstract void e(long paramLong);
  
  public abstract void e(String paramString);
  
  public abstract void e(ArrayList<GHSIVaultedPayPalModel> paramArrayList);
  
  public abstract void e(boolean paramBoolean);
  
  public abstract boolean e();
  
  public abstract long f();
  
  public abstract void f(String paramString);
  
  public abstract void f(ArrayList<GHSSearchAutoValueDataModel> paramArrayList);
  
  public abstract void f(boolean paramBoolean);
  
  public abstract void g(String paramString);
  
  public abstract void g(ArrayList<GHSIRestaurantAvailabilityDataModel.GHSIRestaurantAvailabilitySummary> paramArrayList);
  
  public abstract void g(boolean paramBoolean);
  
  public abstract boolean g();
  
  public abstract HashMap<String, GHSCreateOrderReviewDataModel> h();
  
  public abstract void h(String paramString);
  
  public abstract void h(boolean paramBoolean);
  
  public abstract void i();
  
  public abstract void i(String paramString);
  
  public abstract void i(boolean paramBoolean);
  
  public abstract ArrayList<String> j();
  
  public abstract void j(String paramString);
  
  public abstract void j(boolean paramBoolean);
  
  public abstract void k();
  
  public abstract void k(boolean paramBoolean);
  
  public abstract ArrayList<String> l();
  
  public abstract void l(boolean paramBoolean);
  
  public abstract void m();
  
  public abstract void m(boolean paramBoolean);
  
  public abstract int n();
  
  public abstract void n(boolean paramBoolean);
  
  public abstract void o(boolean paramBoolean);
  
  public abstract boolean o();
  
  public abstract int p();
  
  public abstract boolean q();
  
  public abstract boolean r();
  
  public abstract GHSSelectedPaymentModel s();
  
  public abstract GHSIAddressDataModel t();
  
  public abstract String u();
  
  public abstract boolean v();
  
  public abstract boolean w();
  
  public abstract int x();
  
  public abstract boolean y();
  
  public abstract GHSFilterSortCriteria z();
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */