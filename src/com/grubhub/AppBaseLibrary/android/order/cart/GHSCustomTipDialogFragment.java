package com.grubhub.AppBaseLibrary.android.order.cart;

import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.DialogFragment;
import android.support.v4.app.q;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import java.util.Locale;

public class GHSCustomTipDialogFragment
  extends DialogFragment
{
  private static final String a = GHSCustomTipDialogFragment.class.getSimpleName();
  private float b;
  private float c;
  private j d;
  private GHSIRestaurantDataModel e;
  private GHSICartDataModel f;
  private EditText g;
  private String h;
  
  private float a(String paramString)
  {
    try
    {
      int i = Integer.parseInt(paramString);
      return i;
    }
    catch (NumberFormatException paramString)
    {
      com.grubhub.AppBaseLibrary.android.utils.e.a.b(a, paramString.getMessage());
    }
    return 0.0F;
  }
  
  public static GHSCustomTipDialogFragment a(Float paramFloat)
  {
    GHSCustomTipDialogFragment localGHSCustomTipDialogFragment = new GHSCustomTipDialogFragment();
    Bundle localBundle = new Bundle();
    if (paramFloat != null) {
      localBundle.putFloat("current_amount", paramFloat.floatValue());
    }
    localGHSCustomTipDialogFragment.setArguments(localBundle);
    return localGHSCustomTipDialogFragment;
  }
  
  private String a(float paramFloat)
  {
    paramFloat = Math.round(paramFloat * 100.0F) / 100.0F;
    return String.format(Locale.US, getActivity().getString(2131231830), new Object[] { Float.valueOf(paramFloat) });
  }
  
  private void a()
  {
    if (((e != null) && (e.isCashTipAllowed())) || ((f != null) && (f.getOrderType() == g.PICKUP)) || (b >= c))
    {
      float f1 = Math.round(b * 100.0F) / 100.0F;
      if (d != null) {
        d.a(f1);
      }
    }
    for (;;)
    {
      dismiss();
      return;
      String str = String.format(getString(2131231012), new Object[] { Float.valueOf(c) });
      com.grubhub.AppBaseLibrary.android.c.a(getActivity(), str, getString(2131231010), getString(2131231011), null, null, new com.grubhub.AppBaseLibrary.android.b()
      {
        public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
        {
          if (GHSCustomTipDialogFragment.e(GHSCustomTipDialogFragment.this) != null) {
            GHSCustomTipDialogFragment.e(GHSCustomTipDialogFragment.this).a(GHSCustomTipDialogFragment.f(GHSCustomTipDialogFragment.this));
          }
        }
      });
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("order tip selection", "tip minimum unfulfilled modal_impression", str, "1"));
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() != null) && ((getParentFragment() instanceof j))) {
      d = ((j)getParentFragment());
    }
    while (!(paramActivity instanceof j)) {
      return;
    }
    d = ((j)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setStyle(1, 0);
    if (getArguments().containsKey("current_amount")) {}
    for (b = getArguments().getFloat("current_amount");; b = 0.0F)
    {
      e = GHSApplication.a().b().U();
      f = GHSApplication.a().b().X();
      c = 0.0F;
      if ((e != null) && (f != null)) {
        c = com.grubhub.AppBaseLibrary.android.utils.j.a.a(f, e);
      }
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903120, null);
    g = ((EditText)paramLayoutInflater.findViewById(2131689833));
    g.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        paramAnonymousEditable = paramAnonymousEditable.toString();
        if (!paramAnonymousEditable.equals(GHSCustomTipDialogFragment.a(GHSCustomTipDialogFragment.this)))
        {
          GHSCustomTipDialogFragment.b(GHSCustomTipDialogFragment.this).removeTextChangedListener(this);
          String str = paramAnonymousEditable.replaceAll("[$.]", "");
          paramAnonymousEditable = str;
          if (str.length() == 0) {
            paramAnonymousEditable = "0";
          }
          if (paramAnonymousEditable.length() <= 7) {
            GHSCustomTipDialogFragment.a(GHSCustomTipDialogFragment.this, GHSCustomTipDialogFragment.a(GHSCustomTipDialogFragment.this, paramAnonymousEditable) / 100.0F);
          }
          paramAnonymousEditable = GHSCustomTipDialogFragment.b(GHSCustomTipDialogFragment.this, GHSCustomTipDialogFragment.c(GHSCustomTipDialogFragment.this));
          GHSCustomTipDialogFragment.b(GHSCustomTipDialogFragment.this, paramAnonymousEditable);
          GHSCustomTipDialogFragment.b(GHSCustomTipDialogFragment.this).setText(paramAnonymousEditable);
          GHSCustomTipDialogFragment.b(GHSCustomTipDialogFragment.this).setSelection(paramAnonymousEditable.length());
          GHSCustomTipDialogFragment.b(GHSCustomTipDialogFragment.this).addTextChangedListener(this);
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    g.setText(a(b));
    g.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 6)
        {
          GHSCustomTipDialogFragment.d(GHSCustomTipDialogFragment.this);
          return true;
        }
        return false;
      }
    });
    ((Button)paramLayoutInflater.findViewById(2131689835)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSCustomTipDialogFragment.d(GHSCustomTipDialogFragment.this);
      }
    });
    ((Button)paramLayoutInflater.findViewById(2131689834)).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        dismiss();
      }
    });
    paramViewGroup = getDialog();
    paramViewGroup.setCanceledOnTouchOutside(false);
    paramViewGroup = paramViewGroup.getWindow();
    paramViewGroup.setLayout((int)getResources().getDimension(2131427344), -2);
    paramViewGroup.setSoftInputMode(4);
    if (c > 0.0F) {
      g.setHint(String.format(getString(2131231009), new Object[] { Float.valueOf(c) }));
    }
    return paramLayoutInflater;
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCustomTipDialogFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */