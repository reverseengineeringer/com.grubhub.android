package com.grubhub.AppBaseLibrary.android.feedback;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;

class GHSFeedbackSelectionDialogFragment$1
  implements AdapterView.OnItemClickListener
{
  GHSFeedbackSelectionDialogFragment$1(GHSFeedbackSelectionDialogFragment paramGHSFeedbackSelectionDialogFragment) {}
  
  public void onItemClick(AdapterView<?> paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((GHSFeedbackSelectionDialogFragment.a(a) != null) && (paramInt < GHSFeedbackSelectionDialogFragment.a(a).getCount()))
    {
      GHSFeedbackSelectionDialogFragment.a(a, (String)GHSFeedbackSelectionDialogFragment.a(a).getItem(paramInt));
      return;
    }
    a.dismiss();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.feedback.GHSFeedbackSelectionDialogFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */