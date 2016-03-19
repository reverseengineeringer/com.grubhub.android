package com.grubhub.AppBaseLibrary.android.feedback;

import android.view.View;
import android.view.View.OnClickListener;

class GHSFeedbackConfirmationDialogFragment$1
  implements View.OnClickListener
{
  GHSFeedbackConfirmationDialogFragment$1(GHSFeedbackConfirmationDialogFragment paramGHSFeedbackConfirmationDialogFragment) {}
  
  public void onClick(View paramView)
  {
    if (GHSFeedbackConfirmationDialogFragment.a(a) != null) {
      GHSFeedbackConfirmationDialogFragment.a(a).b(GHSFeedbackConfirmationDialogFragment.b(a), GHSFeedbackConfirmationDialogFragment.c(a), GHSFeedbackConfirmationDialogFragment.d(a));
    }
    GHSFeedbackConfirmationDialogFragment.a(a, true);
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.feedback.GHSFeedbackConfirmationDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */