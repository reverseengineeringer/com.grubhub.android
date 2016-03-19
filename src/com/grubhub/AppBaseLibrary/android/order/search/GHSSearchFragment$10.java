package com.grubhub.AppBaseLibrary.android.order.search;

import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSCreateOrderReviewDataModel.GHSLocationType;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel.GHSOrderReviewState;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.review.a;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;

class GHSSearchFragment$10
  implements e<ArrayList<GHSIOrderReviewDataModel>>
{
  GHSSearchFragment$10(GHSSearchFragment paramGHSSearchFragment, HashMap paramHashMap, b paramb) {}
  
  public void a(ArrayList<GHSIOrderReviewDataModel> paramArrayList)
  {
    GHSIOrderReviewDataModel localGHSIOrderReviewDataModel;
    if ((c.getActivity() != null) && (GHSSearchFragment.c(c) != null))
    {
      if ((paramArrayList == null) || (paramArrayList.isEmpty())) {
        break label144;
      }
      paramArrayList = paramArrayList.iterator();
      do
      {
        if (!paramArrayList.hasNext()) {
          break;
        }
        localGHSIOrderReviewDataModel = (GHSIOrderReviewDataModel)paramArrayList.next();
      } while ((localGHSIOrderReviewDataModel == null) || (localGHSIOrderReviewDataModel.getState() != GHSIOrderReviewDataModel.GHSOrderReviewState.AVAILABLE));
    }
    label144:
    for (paramArrayList = localGHSIOrderReviewDataModel.getOrderId();; paramArrayList = null)
    {
      if (paramArrayList != null)
      {
        GHSSearchFragment.c(c).a(GHSCreateOrderReviewDataModel.GHSLocationType.HOME_SCREEN);
        GHSSearchFragment.c(c).a((GHSIPastOrderDataModel)a.get(paramArrayList));
        GHSSearchFragment.c(c).c(true);
      }
      b.e(false);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSSearchFragment.10
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */