package com.grubhub.AppBaseLibrary.android.utils;

import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIBillModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIDiscountCodeInfo;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.GHSIOrderItem;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel.TipTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponDataModel;
import java.util.Arrays;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

public class c
{
  public static Set<GHSICartPaymentDataModel.PaymentTypes> a(b paramb, boolean paramBoolean)
  {
    if (paramb == null) {}
    for (;;)
    {
      return null;
      if (paramBoolean) {
        paramb = paramb.L();
      }
      while ((paramb != null) && (!paramb.isEmpty()))
      {
        return new HashSet(paramb);
        paramb = paramb.Y();
        if (paramb != null) {
          paramb = paramb.getAvailablePaymentTypes();
        } else {
          paramb = null;
        }
      }
    }
  }
  
  public static boolean a(GHSICartDataModel paramGHSICartDataModel, GHSIBillModel paramGHSIBillModel)
  {
    if ((paramGHSICartDataModel == null) || (paramGHSIBillModel == null)) {}
    while ((!b(paramGHSICartDataModel, paramGHSIBillModel)) || (!c(paramGHSICartDataModel, paramGHSIBillModel)) || (!d(paramGHSICartDataModel, paramGHSIBillModel)) || (!e(paramGHSICartDataModel, paramGHSIBillModel)) || (!f(paramGHSICartDataModel, paramGHSIBillModel))) {
      return false;
    }
    return true;
  }
  
  protected static boolean b(GHSICartDataModel paramGHSICartDataModel, GHSIBillModel paramGHSIBillModel)
  {
    return (paramGHSICartDataModel.getSubtotal() != null) && (paramGHSIBillModel.getSubtotal() != null) && (paramGHSICartDataModel.getSubtotal().equals(paramGHSIBillModel.getSubtotal()));
  }
  
  protected static boolean c(GHSICartDataModel paramGHSICartDataModel, GHSIBillModel paramGHSIBillModel)
  {
    boolean bool2 = false;
    int i;
    int j;
    label40:
    int k;
    if ((paramGHSICartDataModel.getTip() == null) && (paramGHSIBillModel.getTip() == null))
    {
      i = 1;
      if (paramGHSICartDataModel.getTipType() != paramGHSIBillModel.getTipType()) {
        break label143;
      }
      j = 1;
      if ((paramGHSICartDataModel.getTipType() != GHSICartDataModel.TipTypes.CASH) || (paramGHSIBillModel.getTipType() != GHSICartDataModel.TipTypes.CASH)) {
        break label148;
      }
      k = 1;
      label67:
      if ((paramGHSICartDataModel.getTip() == null) || (paramGHSIBillModel.getTip() == null) || (!paramGHSICartDataModel.getTip().equals(paramGHSIBillModel.getTip()))) {
        break label154;
      }
    }
    label143:
    label148:
    label154:
    for (int m = 1;; m = 0)
    {
      boolean bool1;
      if ((i == 0) && (k == 0))
      {
        bool1 = bool2;
        if (j != 0)
        {
          bool1 = bool2;
          if (m == 0) {}
        }
      }
      else
      {
        bool1 = true;
      }
      return bool1;
      i = 0;
      break;
      j = 0;
      break label40;
      k = 0;
      break label67;
    }
  }
  
  protected static boolean d(GHSICartDataModel paramGHSICartDataModel, GHSIBillModel paramGHSIBillModel)
  {
    boolean bool = false;
    int i;
    label48:
    int k;
    if ((paramGHSICartDataModel.getAppliedDiscount() == null) && (paramGHSIBillModel.getAppliedDiscount() == null))
    {
      i = 1;
      if ((paramGHSICartDataModel.getAppliedDiscount() == null) || (paramGHSICartDataModel.getAppliedDiscount().getDiscountValueCents() == null)) {
        break label132;
      }
      j = 1;
      if ((paramGHSIBillModel.getAppliedDiscount() == null) || (paramGHSIBillModel.getAppliedDiscount().getDiscountValueCents() == null)) {
        break label137;
      }
      k = 1;
      label74:
      if ((j == 0) || (k == 0) || (!paramGHSICartDataModel.getAppliedDiscount().getDiscountValueCents().equals(paramGHSIBillModel.getAppliedDiscount().getDiscountValueCents()))) {
        break label143;
      }
    }
    label132:
    label137:
    label143:
    for (int j = 1;; j = 0)
    {
      if ((i != 0) || (j != 0)) {
        bool = true;
      }
      return bool;
      i = 0;
      break;
      j = 0;
      break label48;
      k = 0;
      break label74;
    }
  }
  
  protected static boolean e(GHSICartDataModel paramGHSICartDataModel, GHSIBillModel paramGHSIBillModel)
  {
    if ((paramGHSICartDataModel.getOrderItems() == null) || (paramGHSIBillModel.getOrderItems() == null) || (paramGHSICartDataModel.getOrderItems().size() != paramGHSIBillModel.getOrderItems().size()) || (paramGHSICartDataModel.getOrderItems().isEmpty())) {
      return false;
    }
    Integer[] arrayOfInteger1 = new Integer[paramGHSICartDataModel.getOrderItems().size()];
    Integer[] arrayOfInteger2 = new Integer[paramGHSIBillModel.getOrderItems().size()];
    int i = 0;
    while (i < paramGHSICartDataModel.getOrderItems().size())
    {
      arrayOfInteger1[i] = ((GHSICartDataModel.GHSIOrderItem)paramGHSICartDataModel.getOrderItems().get(i)).getDinerTotalInCents();
      arrayOfInteger2[i] = ((GHSICartDataModel.GHSIOrderItem)paramGHSIBillModel.getOrderItems().get(i)).getDinerTotalInCents();
      i += 1;
    }
    Arrays.sort(arrayOfInteger1);
    Arrays.sort(arrayOfInteger2);
    i = 0;
    for (;;)
    {
      if (i >= arrayOfInteger1.length) {
        break label211;
      }
      if ((arrayOfInteger1[i] == null) || (arrayOfInteger2[i] == null) || (!arrayOfInteger1[i].equals(arrayOfInteger2[i]))) {
        break;
      }
      i += 1;
    }
    label211:
    return true;
  }
  
  protected static boolean f(GHSICartDataModel paramGHSICartDataModel, GHSIBillModel paramGHSIBillModel)
  {
    boolean bool = false;
    int i;
    if ((paramGHSICartDataModel.getCoupon() == null) && (paramGHSIBillModel.getCoupon() == null))
    {
      i = 1;
      if ((paramGHSICartDataModel.getCoupon() == null) || (paramGHSIBillModel.getCoupon() == null)) {
        break label130;
      }
      j = 1;
      label43:
      if ((j == 0) || (paramGHSICartDataModel.getCoupon().getAmount() == null) || (paramGHSIBillModel.getCoupon().getAmount() == null)) {
        break label135;
      }
      j = 1;
      label77:
      if ((j == 0) || (!paramGHSICartDataModel.getCoupon().getAmount().equals(paramGHSIBillModel.getCoupon().getAmount()))) {
        break label140;
      }
    }
    label130:
    label135:
    label140:
    for (int j = 1;; j = 0)
    {
      if ((i != 0) || (j != 0)) {
        bool = true;
      }
      return bool;
      i = 0;
      break;
      j = 0;
      break label43;
      j = 0;
      break label77;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */