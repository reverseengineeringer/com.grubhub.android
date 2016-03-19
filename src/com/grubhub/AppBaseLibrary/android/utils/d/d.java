package com.grubhub.AppBaseLibrary.android.utils.d;

import android.accounts.Account;
import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.wallet.Cart;
import com.google.android.gms.wallet.FullWalletRequest;
import com.google.android.gms.wallet.LineItem;
import com.google.android.gms.wallet.MaskedWalletRequest;
import com.google.android.gms.wallet.a;
import com.google.android.gms.wallet.b;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIDiscountCodeInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;

public class d
{
  public static FullWalletRequest a(String paramString, GHSICartDataModel paramGHSICartDataModel)
  {
    return FullWalletRequest.a().a(paramString).a(Cart.a().b("USD").a(String.format("%.2f", new Object[] { paramGHSICartDataModel.getAmountDue() })).a(a(paramGHSICartDataModel)).a()).a();
  }
  
  public static MaskedWalletRequest a(Context paramContext, GHSICartDataModel paramGHSICartDataModel, com.braintreepayments.api.c paramc)
  {
    return MaskedWalletRequest.a().g(true).f(true).c(paramContext.getString(2131232058)).a(false).b(false).c(true).b("USD").d(true).a(String.format("%.2f", new Object[] { paramGHSICartDataModel.getAmountDue() })).a(paramc.k()).a(Cart.a().b("USD").a(String.format("%.2f", new Object[] { paramGHSICartDataModel.getAmountDue() })).a(a(paramGHSICartDataModel)).a()).a();
  }
  
  private static String a(String paramString)
  {
    paramString = GHSICartPaymentDataModel.PaymentTypes.fromString(paramString);
    if (paramString != null)
    {
      switch (1.a[paramString.ordinal()])
      {
      default: 
        return "Promo Code";
      }
      return "Gift Card";
    }
    return "Promo Code";
  }
  
  private static List<LineItem> a(GHSICartDataModel paramGHSICartDataModel)
  {
    ArrayList localArrayList = new ArrayList();
    Iterator localIterator = paramGHSICartDataModel.getOrderItems().iterator();
    while (localIterator.hasNext())
    {
      GHSICartDataModel.GHSIOrderItem localGHSIOrderItem = (GHSICartDataModel.GHSIOrderItem)localIterator.next();
      com.google.android.gms.wallet.c localc = LineItem.a().e("USD").a(localGHSIOrderItem.getItemName()).b(Integer.toString(localGHSIOrderItem.getItemQuantity().intValue())).c(String.format("%.2f", new Object[] { localGHSIOrderItem.getItemPrice() }));
      float f = localGHSIOrderItem.getItemPrice().floatValue();
      localArrayList.add(localc.d(String.format("%.2f", new Object[] { Float.valueOf(localGHSIOrderItem.getItemQuantity().intValue() * f) })).a(0).a());
    }
    if ((paramGHSICartDataModel.getTip() != null) && (paramGHSICartDataModel.getTip().floatValue() > 0.0F)) {
      localArrayList.add(LineItem.a().e("USD").a("Tip").a(0).d(String.format("%.2f", new Object[] { paramGHSICartDataModel.getTip() })).a());
    }
    if ((paramGHSICartDataModel.getTax() != null) && (paramGHSICartDataModel.getTax().floatValue() > 0.0F)) {
      localArrayList.add(LineItem.a().e("USD").a("Tax").a(1).d(String.format("%.2f", new Object[] { paramGHSICartDataModel.getTax() })).a());
    }
    if ((paramGHSICartDataModel.getDeliveryFee() != null) && (paramGHSICartDataModel.getDeliveryFee().floatValue() > 0.0F)) {
      localArrayList.add(LineItem.a().e("USD").a("Delivery Fee").a(0).d(String.format("%.2f", new Object[] { paramGHSICartDataModel.getDeliveryFee() })).a());
    }
    if ((paramGHSICartDataModel.getCoupon() != null) && (paramGHSICartDataModel.getCoupon().getAmount().floatValue() > 0.0F)) {
      localArrayList.add(LineItem.a().e("USD").a("Coupon").a(0).d(String.format("%.2f", new Object[] { Float.valueOf(-paramGHSICartDataModel.getCoupon().getAmount().floatValue()) })).a());
    }
    paramGHSICartDataModel = paramGHSICartDataModel.getAppliedDiscount();
    if ((paramGHSICartDataModel != null) && (paramGHSICartDataModel.getDiscountValue() != null) && (paramGHSICartDataModel.getDiscountValue().floatValue() > 0.0F)) {
      localArrayList.add(LineItem.a().e("USD").a(a(paramGHSICartDataModel.getDiscountCodeType())).a(0).d(String.format("%.2f", new Object[] { Float.valueOf(-paramGHSICartDataModel.getDiscountValue().floatValue()) })).a());
    }
    return localArrayList;
  }
  
  public static boolean a()
  {
    Object localObject = GHSApplication.a();
    if (!((GHSApplication)localObject).getResources().getBoolean(2131361809)) {}
    Account[] arrayOfAccount;
    do
    {
      return false;
      arrayOfAccount = ((GHSApplication)localObject).i();
      localObject = ((GHSApplication)localObject).h();
    } while ((localObject == null) || (!Locale.US.equals(localObject)) || (arrayOfAccount == null) || (arrayOfAccount.length <= 0));
    return true;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.d.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */