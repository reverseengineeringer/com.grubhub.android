package com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2;

import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIOrderReviewDataModel.GHSOrderReviewState;

public class V2OrderReviewDTO
  implements GHSIOrderReviewDataModel
{
  private String order_id;
  private Integer rating;
  private String state;
  private String written_review;
  
  public String getOrderId()
  {
    return order_id;
  }
  
  public Integer getRating()
  {
    return rating;
  }
  
  public GHSIOrderReviewDataModel.GHSOrderReviewState getState()
  {
    if (state != null)
    {
      String str = state;
      int i = -1;
      switch (str.hashCode())
      {
      }
      for (;;)
      {
        switch (i)
        {
        default: 
          return GHSIOrderReviewDataModel.GHSOrderReviewState.UNAVAILABLE;
          if (str.equals("available"))
          {
            i = 0;
            continue;
            if (str.equals("started"))
            {
              i = 1;
              continue;
              if (str.equals("completed"))
              {
                i = 2;
                continue;
                if (str.equals("pending"))
                {
                  i = 3;
                  continue;
                  if (str.equals("submitted"))
                  {
                    i = 4;
                    continue;
                    if (str.equals("expired"))
                    {
                      i = 5;
                      continue;
                      if (str.equals("quit"))
                      {
                        i = 6;
                        continue;
                        if (str.equals("not_available")) {
                          i = 7;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
          break;
        }
      }
      return GHSIOrderReviewDataModel.GHSOrderReviewState.AVAILABLE;
      return GHSIOrderReviewDataModel.GHSOrderReviewState.SKIPPED;
      return GHSIOrderReviewDataModel.GHSOrderReviewState.COMPLETED;
      return GHSIOrderReviewDataModel.GHSOrderReviewState.PENDING;
      return GHSIOrderReviewDataModel.GHSOrderReviewState.SUBMITTED;
      return GHSIOrderReviewDataModel.GHSOrderReviewState.EXPIRED;
      return GHSIOrderReviewDataModel.GHSOrderReviewState.QUIT;
    }
    return null;
  }
  
  public String getWrittenReview()
  {
    return written_review;
  }
  
  public void setState(GHSIOrderReviewDataModel.GHSOrderReviewState paramGHSOrderReviewState)
  {
    if (paramGHSOrderReviewState != null)
    {
      switch (1.$SwitchMap$com$grubhub$AppBaseLibrary$android$dataServices$interfaces$GHSIOrderReviewDataModel$GHSOrderReviewState[paramGHSOrderReviewState.ordinal()])
      {
      default: 
        state = "not_available";
        return;
      case 1: 
        state = "available";
        return;
      case 2: 
        state = "started";
        return;
      case 3: 
        state = "completed";
        return;
      case 4: 
        state = "pending";
        return;
      case 5: 
        state = "submitted";
        return;
      case 6: 
        state = "expired";
        return;
      }
      state = "quit";
      return;
    }
    state = null;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.dataServices.dto.apiV2.V2OrderReviewDTO
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */