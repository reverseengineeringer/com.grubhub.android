package com.grubhub.AppBaseLibrary.android.review;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.grubhub.AppBaseLibrary.android.b.a;

class GHSReviewActivity$1
  extends BroadcastReceiver
{
  GHSReviewActivity$1(GHSReviewActivity paramGHSReviewActivity) {}
  
  public void onReceive(Context paramContext, Intent paramIntent)
  {
    paramContext = paramIntent.getAction();
    String str = paramIntent.getStringExtra("com.grubhub.service.GHSReviewService.ORDER_ID");
    int i;
    if ((paramContext != null) && (paramContext.equals("com.grubhub.service.GHSReviewService.BROADCAST")) && (str != null) && (str.equals(GHSReviewActivity.a(a))))
    {
      if (paramIntent.getIntExtra("com.grubhub.service.GHSReviewService.STATUS_CODE", 0) != -1) {
        break label101;
      }
      i = 1;
      if (!GHSReviewActivity.b(a)) {
        break label136;
      }
      a.a(false);
      if (i == 0) {
        break label106;
      }
      GHSReviewActivity.a(a, a.ERROR_CODE_UNKNOWN);
    }
    for (;;)
    {
      GHSReviewActivity.a(a, false);
      return;
      label101:
      i = 0;
      break;
      label106:
      if (GHSReviewActivity.c(a)) {
        GHSReviewActivity.d(a);
      } else {
        a.finish();
      }
    }
    label136:
    paramIntent = a;
    if (i != 0) {
      paramContext = b.ERROR;
    }
    for (;;)
    {
      GHSReviewActivity.a(paramIntent, paramContext);
      break;
      if (GHSReviewActivity.c(a)) {
        paramContext = b.SURVEY_COMPLETE;
      } else {
        paramContext = b.QUIT;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */