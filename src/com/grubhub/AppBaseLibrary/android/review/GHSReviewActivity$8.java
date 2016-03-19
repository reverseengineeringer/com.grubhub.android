package com.grubhub.AppBaseLibrary.android.review;

import android.content.DialogInterface;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.views.GHSLoadingViewFlipper;

class GHSReviewActivity$8
  implements d
{
  GHSReviewActivity$8(GHSReviewActivity paramGHSReviewActivity, com.grubhub.AppBaseLibrary.android.dataServices.a.h.a parama) {}
  
  public void a(com.grubhub.AppBaseLibrary.android.b.b paramb)
  {
    GHSReviewActivity.b(b, true);
    if (paramb.d())
    {
      c.a(b, paramb.f(), paramb.getLocalizedMessage(), paramb.g(), paramb.h(), paramb.i(), new com.grubhub.AppBaseLibrary.android.b()
      {
        public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          a.a();
        }
      });
      GHSReviewActivity.g(b).a(2131231596, new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSReviewActivity.e(b);
        }
      });
      return;
    }
    GHSReviewActivity.a(b, com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_REVIEW_SURVEY_INVALID);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.review.GHSReviewActivity.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */