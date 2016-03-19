package com.grubhub.AppBaseLibrary.android.feedback;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.w;
import android.view.View;
import android.view.View.OnClickListener;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

public class GHSFeedbackConfirmationDialogFragment
  extends DialogFragment
{
  private b a;
  private String b;
  private String c;
  private a d;
  private boolean e;
  
  public static GHSFeedbackConfirmationDialogFragment a(b paramb, String paramString1, String paramString2)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("mode", paramb);
    localBundle.putString("feedback_id", paramString1);
    localBundle.putString("feedback", paramString2);
    paramb = new GHSFeedbackConfirmationDialogFragment();
    paramb.setArguments(localBundle);
    return paramb;
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() instanceof a)) {
      d = ((a)getParentFragment());
    }
    while (!(paramActivity instanceof a)) {
      return;
    }
    d = ((a)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((b)getArguments().getSerializable("mode"));
    b = getArguments().getString("feedback_id");
    c = getArguments().getString("feedback");
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new Dialog(getActivity(), 2131296792);
    paramBundle.setContentView(2130903106);
    paramBundle.setCanceledOnTouchOutside(false);
    paramBundle.findViewById(2131689730).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSFeedbackConfirmationDialogFragment.a(GHSFeedbackConfirmationDialogFragment.this) != null) {
          GHSFeedbackConfirmationDialogFragment.a(GHSFeedbackConfirmationDialogFragment.this).b(GHSFeedbackConfirmationDialogFragment.b(GHSFeedbackConfirmationDialogFragment.this), GHSFeedbackConfirmationDialogFragment.c(GHSFeedbackConfirmationDialogFragment.this), GHSFeedbackConfirmationDialogFragment.d(GHSFeedbackConfirmationDialogFragment.this));
        }
        GHSFeedbackConfirmationDialogFragment.a(GHSFeedbackConfirmationDialogFragment.this, true);
        dismiss();
      }
    });
    paramBundle.findViewById(2131689731).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        dismiss();
      }
    });
    paramBundle.findViewById(2131689729).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        dismiss();
      }
    });
    return paramBundle;
  }
  
  public void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    if (!e) {
      h.a().d();
    }
  }
  
  public void show(w paramw, String paramString)
  {
    super.show(paramw, paramString);
    h.a().a(new c("in-app feedback", "modal_impression", "give feedback modal step 3", "1"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.feedback.GHSFeedbackConfirmationDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */