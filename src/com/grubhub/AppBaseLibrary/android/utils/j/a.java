package com.grubhub.AppBaseLibrary.android.utils.j;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAmount;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;

public class a
{
  private static final String a = a.class.getSimpleName();
  
  public static float a(float paramFloat1, float paramFloat2)
  {
    return Math.round(paramFloat1 * paramFloat2 * 100.0F) / 100.0F;
  }
  
  public static float a(GHSICartDataModel paramGHSICartDataModel, float paramFloat)
  {
    if ((paramGHSICartDataModel == null) || (paramGHSICartDataModel.getAmountDueMinusTipAndDiscounts().floatValue() < 0.0F) || (paramFloat < 0.0F))
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, "Total and percentage must be non-negative.");
      return 0.0F;
    }
    return a(paramGHSICartDataModel.getAmountDueMinusTipAndDiscounts().floatValue(), paramFloat);
  }
  
  public static float a(GHSICartDataModel paramGHSICartDataModel, GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    if ((paramGHSICartDataModel == null) || (paramGHSIRestaurantDataModel == null)) {
      return 0.0F;
    }
    return a(paramGHSICartDataModel.getOrderType(), paramGHSICartDataModel.getAmountDueMinusTipAndDiscounts().floatValue(), paramGHSIRestaurantDataModel.getMinimumTipPercent(), paramGHSIRestaurantDataModel.getMinimumTip());
  }
  
  public static float a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel, GHSICartDataModel paramGHSICartDataModel)
  {
    return a(paramGHSIRestaurantDataModel, paramGHSICartDataModel, 0.0F, 0.0F);
  }
  
  private static float a(GHSIRestaurantDataModel paramGHSIRestaurantDataModel, GHSICartDataModel paramGHSICartDataModel, float paramFloat1, float paramFloat2)
  {
    float f;
    if (paramFloat1 < 0.0F)
    {
      paramFloat1 = 0.0F;
      f = paramFloat2;
      if (paramFloat2 < 0.0F) {
        f = 0.0F;
      }
      if ((paramGHSIRestaurantDataModel == null) || (!paramGHSIRestaurantDataModel.isCashTipAllowed())) {
        break label38;
      }
    }
    label38:
    while ((paramGHSIRestaurantDataModel == null) || (paramGHSICartDataModel == null))
    {
      return paramFloat1;
      break;
    }
    if (paramGHSICartDataModel.getAmountDueMinusTipAndDiscounts().floatValue() > 0.0F) {
      return Math.round((a(paramGHSICartDataModel, paramGHSIRestaurantDataModel) / paramGHSICartDataModel.getAmountDueMinusTipAndDiscounts().floatValue() + f) * 100.0F) / 100.0F;
    }
    return 0.0F;
  }
  
  public static float a(g paramg, float paramFloat, double paramDouble, GHSIAmount paramGHSIAmount)
  {
    float f1 = 0.0F;
    float f2 = 0.0F;
    if (paramFloat > 0.0F) {
      if (paramDouble < 0.0D) {
        break label70;
      }
    }
    label70:
    for (paramFloat = (float)paramDouble / 100.0F * paramFloat;; paramFloat = 0.0F)
    {
      f1 = f2;
      if (paramGHSIAmount != null) {
        f1 = paramGHSIAmount.getAmount().floatValue();
      }
      if (paramFloat <= f1) {
        break;
      }
      f1 = Math.round(paramFloat * 100.0F) / 100.0F;
      return f1;
    }
    return Math.round(f1 * 100.0F) / 100.0F;
  }
  
  public static float b(GHSIRestaurantDataModel paramGHSIRestaurantDataModel, GHSICartDataModel paramGHSICartDataModel)
  {
    return a(paramGHSIRestaurantDataModel, paramGHSICartDataModel, 0.1F, 0.05F);
  }
  
  public static float c(GHSIRestaurantDataModel paramGHSIRestaurantDataModel, GHSICartDataModel paramGHSICartDataModel)
  {
    return a(paramGHSIRestaurantDataModel, paramGHSICartDataModel, 0.15F, 0.1F);
  }
  
  public static float d(GHSIRestaurantDataModel paramGHSIRestaurantDataModel, GHSICartDataModel paramGHSICartDataModel)
  {
    return a(paramGHSIRestaurantDataModel, paramGHSICartDataModel, 0.2F, 0.15F);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.j.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */