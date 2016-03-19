package com.grubhub.AppBaseLibrary.android.feedback;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.w;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ArrayAdapter;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.HashMap;
import java.util.Map;

public class GHSFeedbackSelectionDialogFragment
  extends DialogFragment
{
  private b a;
  private ArrayAdapter<String> b;
  private c c;
  private boolean d;
  
  public static GHSFeedbackSelectionDialogFragment a(b paramb)
  {
    Bundle localBundle = new Bundle();
    localBundle.putSerializable("mode", paramb);
    paramb = new GHSFeedbackSelectionDialogFragment();
    paramb.setArguments(localBundle);
    return paramb;
  }
  
  private void a(String paramString)
  {
    d = true;
    String str = d.a();
    Object localObject = GHSApplication.a().b().z();
    if (localObject != null) {}
    for (localObject = ((GHSFilterSortCriteria)localObject).getAddressString();; localObject = "")
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("FeedbackID", str);
      h.a().a(localHashMap);
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("in-app feedback", "feedback categories modal_CTA", paramString));
      localObject = new com.grubhub.AppBaseLibrary.android.utils.c.d(str, paramString, (String)localObject);
      h.a().a((com.grubhub.AppBaseLibrary.android.utils.c.d)localObject);
      if (c != null) {
        c.a(a, str, paramString);
      }
      dismiss();
      return;
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() instanceof c)) {
      c = ((c)getParentFragment());
    }
    while (!(paramActivity instanceof c)) {
      return;
    }
    c = ((c)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = ((b)getArguments().getSerializable("mode"));
    int i = 3.a[a.ordinal()];
    paramBundle = getResources().getStringArray(2131623936);
    b = new ArrayAdapter(getActivity(), 2130903178, 2131690195);
    if (paramBundle != null)
    {
      b.addAll(paramBundle);
      b.notifyDataSetChanged();
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new Dialog(getActivity(), 2131296792);
    paramBundle.setContentView(2130903107);
    paramBundle.setCanceledOnTouchOutside(false);
    ListView localListView = (ListView)paramBundle.findViewById(2131689732);
    localListView.setAdapter(b);
    localListView.setOnItemClickListener(new AdapterView.OnItemClickListener()
    {
      public void onItemClick(AdapterView<?> paramAnonymousAdapterView, View paramAnonymousView, int paramAnonymousInt, long paramAnonymousLong)
      {
        if ((GHSFeedbackSelectionDialogFragment.a(GHSFeedbackSelectionDialogFragment.this) != null) && (paramAnonymousInt < GHSFeedbackSelectionDialogFragment.a(GHSFeedbackSelectionDialogFragment.this).getCount()))
        {
          GHSFeedbackSelectionDialogFragment.a(GHSFeedbackSelectionDialogFragment.this, (String)GHSFeedbackSelectionDialogFragment.a(GHSFeedbackSelectionDialogFragment.this).getItem(paramAnonymousInt));
          return;
        }
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
    if (!d) {}
  }
  
  public void show(w paramw, String paramString)
  {
    super.show(paramw, paramString);
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("in-app feedback", "modal_impression", "give feedback categories modal step 2", "1"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.feedback.GHSFeedbackSelectionDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */