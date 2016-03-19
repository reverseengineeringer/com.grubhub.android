package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSOrderReviewCheckDataModel;
import java.text.SimpleDateFormat;
import java.util.Date;

public class V2OrderReviewCheckDTO
{
  public final String order_date;
  public final String order_id;
  public final String order_state;
  
  public V2OrderReviewCheckDTO(GHSOrderReviewCheckDataModel paramGHSOrderReviewCheckDataModel)
  {
    order_id = orderId;
    order_state = state;
    order_date = new SimpleDateFormat("yyyy-MM-dd'T'HH:mm:ss.SSS'Z'").format(new Date(timePlaced));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewCheckDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */