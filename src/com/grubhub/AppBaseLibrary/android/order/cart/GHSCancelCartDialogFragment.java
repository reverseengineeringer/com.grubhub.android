package com.grubhub.AppBaseLibrary.android.order.cart;

import android.app.Activity;
import android.app.Dialog;
import android.graphics.Point;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.SpannableString;
import android.text.style.StyleSpan;
import android.view.Display;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.TextView;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class GHSCancelCartDialogFragment
  extends DialogFragment
{
  private String a;
  private long b;
  private Activity c;
  private b d;
  
  public static GHSCancelCartDialogFragment a(String paramString, long paramLong)
  {
    Bundle localBundle = new Bundle();
    localBundle.putString("restaurantName", paramString);
    localBundle.putLong("expectedTimeMillis", paramLong);
    paramString = new GHSCancelCartDialogFragment();
    paramString.setArguments(localBundle);
    return paramString;
  }
  
  private void a(SpannableString paramSpannableString, String paramString1, String paramString2)
  {
    paramSpannableString.setSpan(new StyleSpan(1), paramString1.indexOf(paramString2), paramString1.indexOf(paramString2) + paramString2.length(), 33);
  }
  
  private void a(Button paramButton1, Button paramButton2)
  {
    paramButton1.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        dismiss();
      }
    });
    paramButton2.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        if (GHSCancelCartDialogFragment.a(GHSCancelCartDialogFragment.this) != null) {
          GHSCancelCartDialogFragment.a(GHSCancelCartDialogFragment.this).a();
        }
        dismiss();
        h.a().a(new c("future ordering", "open order interactions_cta", "stop order step 2 confirm"));
      }
    });
  }
  
  private void a(TextView paramTextView)
  {
    String str1 = new SimpleDateFormat("MMM d, h:mm a", Locale.US).format(new Date(b));
    String str2 = String.format(getString(2131231634), new Object[] { a, str1 });
    SpannableString localSpannableString = new SpannableString(str2);
    a(localSpannableString, str2, a);
    a(localSpannableString, str2, str1);
    paramTextView.setText(localSpannableString);
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    paramBundle = getDialog().getWindow();
    Point localPoint = new Point();
    paramBundle.getWindowManager().getDefaultDisplay().getSize(localPoint);
    paramBundle.setLayout(Float.valueOf(x * 0.9F).intValue(), Float.valueOf(y * 0.45F).intValue());
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    c = paramActivity;
    paramActivity = getParentFragment();
    if ((paramActivity instanceof b)) {
      d = ((b)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    paramBundle = getArguments();
    if (paramBundle != null)
    {
      a = paramBundle.getString("restaurantName");
      b = paramBundle.getLong("expectedTimeMillis");
    }
    if (a == null) {
      a = "";
    }
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = new Dialog(c);
    paramBundle.requestWindowFeature(1);
    return paramBundle;
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return paramLayoutInflater.inflate(2130903115, null);
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
    d = null;
  }
  
  public void onViewCreated(View paramView, Bundle paramBundle)
  {
    super.onViewCreated(paramView, paramBundle);
    paramBundle = (TextView)paramView.findViewById(2131689792);
    Button localButton = (Button)paramView.findViewById(2131689793);
    paramView = (Button)paramView.findViewById(2131689794);
    a(paramBundle);
    a(localButton, paramView);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCancelCartDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */