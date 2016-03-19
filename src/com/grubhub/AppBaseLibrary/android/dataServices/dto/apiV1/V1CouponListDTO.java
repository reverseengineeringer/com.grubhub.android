package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICouponListDataModel.GHSICouponDataModel;
import java.util.ArrayList;

public class V1CouponListDTO
  implements GHSICouponListDataModel
{
  private ArrayList<V1CouponListDTO.V1CouponDTO> coupon;
  
  public int getCount()
  {
    if (coupon != null) {
      return coupon.size();
    }
    return 0;
  }
  
  public ArrayList<GHSICouponListDataModel.GHSICouponDataModel> getCoupons()
  {
    return new ArrayList(coupon);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV1.V1CouponListDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */