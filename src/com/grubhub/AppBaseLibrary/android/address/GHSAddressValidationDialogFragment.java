package com.grubhub.AppBaseLibrary.android.address;

import android.app.Activity;
import android.app.AlertDialog.Builder;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;

public class GHSAddressValidationDialogFragment
  extends DialogFragment
{
  private String a;
  private boolean b;
  private boolean c;
  private EditText d;
  private b e;
  
  public static GHSAddressValidationDialogFragment a(String paramString, boolean paramBoolean1, boolean paramBoolean2)
  {
    GHSAddressValidationDialogFragment localGHSAddressValidationDialogFragment = new GHSAddressValidationDialogFragment();
    Bundle localBundle = new Bundle();
    localBundle.putString("address_text", paramString);
    localBundle.putBoolean("show_pickup_option", paramBoolean1);
    localBundle.putBoolean("show_retry_text", paramBoolean2);
    localGHSAddressValidationDialogFragment.setArguments(localBundle);
    return localGHSAddressValidationDialogFragment;
  }
  
  private void a()
  {
    if (e != null) {
      e.a(a);
    }
    dismiss();
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() != null) && ((getParentFragment() instanceof b))) {
      e = ((b)getParentFragment());
    }
    while (!(paramActivity instanceof b)) {
      return;
    }
    e = ((b)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    a = getArguments().getString("address_text");
    b = getArguments().getBoolean("show_pickup_option", false);
    c = getArguments().getBoolean("show_retry_text", false);
  }
  
  public Dialog onCreateDialog(Bundle paramBundle)
  {
    paramBundle = LayoutInflater.from(getActivity()).inflate(2130903114, null);
    d = ((EditText)paramBundle.findViewById(2131689791));
    d.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        GHSAddressValidationDialogFragment.a(GHSAddressValidationDialogFragment.this, paramAnonymousEditable.toString());
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    d.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 6)
        {
          GHSAddressValidationDialogFragment.a(GHSAddressValidationDialogFragment.this);
          return true;
        }
        return false;
      }
    });
    d.setText(a);
    Object localObject = paramBundle.findViewById(2131689790);
    if (c)
    {
      i = 0;
      ((View)localObject).setVisibility(i);
      localObject = new AlertDialog.Builder(getActivity());
      paramBundle = ((AlertDialog.Builder)localObject).setTitle(getString(2131230921)).setView(paramBundle);
      if (!b) {
        break label205;
      }
    }
    label205:
    for (int i = 2131230918;; i = 2131231717)
    {
      paramBundle.setPositiveButton(i, new DialogInterface.OnClickListener()
      {
        public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          GHSAddressValidationDialogFragment.a(GHSAddressValidationDialogFragment.this);
        }
      }).setNegativeButton(2131230945, null);
      if (b) {
        ((AlertDialog.Builder)localObject).setNeutralButton(2131230919, new DialogInterface.OnClickListener()
        {
          public void onClick(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            if (GHSAddressValidationDialogFragment.b(GHSAddressValidationDialogFragment.this) != null) {
              GHSAddressValidationDialogFragment.b(GHSAddressValidationDialogFragment.this).d();
            }
          }
        });
      }
      paramBundle = ((AlertDialog.Builder)localObject).create();
      paramBundle.setCanceledOnTouchOutside(false);
      paramBundle.getWindow().setLayout((int)getResources().getDimension(2131427339), -2);
      return paramBundle;
      i = 8;
      break;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    getDialog().getWindow().setSoftInputMode(4);
    return super.onCreateView(paramLayoutInflater, paramViewGroup, paramBundle);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.address.GHSAddressValidationDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */