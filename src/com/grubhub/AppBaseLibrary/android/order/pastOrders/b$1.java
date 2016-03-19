package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.content.Context;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSInteractionType;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSLocationType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.review.GHSReviewActivity;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class b$1
  implements View.OnClickListener
{
  b$1(b paramb, GHSIPastOrderDataModel paramGHSIPastOrderDataModel) {}
  
  public void onClick(View paramView)
  {
    paramView = paramView.getContext();
    paramView.startActivity(GHSReviewActivity.a(paramView, a.getOrderId(), a.getRestaurantId(), a.getRestaurantName(), a.getOrderType(), GHSCreateOrderReviewDataModel.GHSInteractionType.USER_INITIATED_MODAL, GHSCreateOrderReviewDataModel.GHSLocationType.ORDER_HISTORY));
    if (b.a(b) == d.RATE_MORE)
    {
      h.a().a(new c("submit ratings and reviews", "rate more restaurants modal-rate_cta", ""));
      return;
    }
    h.a().a(new c("submit ratings and reviews", "submit ratings prompt-rate_cta", "order history_link"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.b.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */