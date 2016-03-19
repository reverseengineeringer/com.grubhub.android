package com.grubhub.AppBaseLibrary.android.login;

import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.q;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.View.OnFocusChangeListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import android.widget.ToggleButton;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.account.GHSInfoFragment;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.utils.g;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

public class GHSCreateAccountFragment
  extends GHSInfoFragment
  implements c
{
  private b a;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.j.a b;
  private boolean c;
  private TextView d;
  private EditText e;
  private TextView f;
  private EditText g;
  private ToggleButton h;
  private Button i;
  private TextView j;
  private TextView k;
  private TextWatcher l = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      GHSCreateAccountFragment.g(GHSCreateAccountFragment.this);
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  
  private void a(boolean paramBoolean)
  {
    if (getActivity() != null)
    {
      e.setEnabled(paramBoolean);
      g.setEnabled(paramBoolean);
      h.setEnabled(paramBoolean);
      f();
      j.setEnabled(paramBoolean);
    }
  }
  
  public static GHSCreateAccountFragment b()
  {
    return new GHSCreateAccountFragment();
  }
  
  private void e()
  {
    d_();
    final Object localObject;
    if (c)
    {
      localObject = GHSApplication.a().b().N();
      if (localObject != null)
      {
        localObject = ((GHSIUserAuthDataModel)localObject).getEmail();
        b = new com.grubhub.AppBaseLibrary.android.dataServices.a.j.a(getActivity(), e.getText().toString(), g.getText().toString(), "", "", new i()new i
        {
          public void a()
          {
            GHSCreateAccountFragment.a(GHSCreateAccountFragment.this, false);
            ((GHSBaseActivity)getActivity()).a(true);
          }
        }, new i()
        {
          public void a()
          {
            GHSCreateAccountFragment.a(GHSCreateAccountFragment.this, null);
            ((GHSBaseActivity)getActivity()).a(false);
          }
        });
        b.a(new e()
        {
          public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
          {
            if ((paramAnonymousGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramAnonymousGHSIUserAuthDataModel.getToken())))
            {
              GHSCreateAccountFragment.a(GHSCreateAccountFragment.this, true);
              if (GHSCreateAccountFragment.f(GHSCreateAccountFragment.this) != null) {
                GHSCreateAccountFragment.f(GHSCreateAccountFragment.this).d(f.b(localObject));
              }
            }
            q localq;
            do
            {
              return;
              paramAnonymousGHSIUserAuthDataModel = new com.grubhub.AppBaseLibrary.android.b.b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN);
              localq = getActivity();
            } while (localq == null);
            com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousGHSIUserAuthDataModel.f(), paramAnonymousGHSIUserAuthDataModel.getLocalizedMessage(), paramAnonymousGHSIUserAuthDataModel.g(), paramAnonymousGHSIUserAuthDataModel.h(), paramAnonymousGHSIUserAuthDataModel.i(), null);
          }
        });
        b.a(new d()
        {
          public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
          {
            q localq = getActivity();
            if (localq != null) {
              com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getString(2131231717), null, null, null);
            }
            GHSCreateAccountFragment.a(GHSCreateAccountFragment.this, true);
            ((GHSBaseActivity)getActivity()).a(false);
          }
        });
        b.a();
      }
    }
    do
    {
      return;
      localObject = null;
      break;
      if (!g.a(e.getText().toString()))
      {
        a(e);
        return;
      }
    } while (g.b(g.getText().toString()));
    a(g);
  }
  
  private void f()
  {
    if (i != null) {
      if ((!g.a(e.getText().toString())) || (!g.b(g.getText().toString()))) {
        break label58;
      }
    }
    label58:
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      i.setEnabled(c);
      return;
    }
  }
  
  public void c()
  {
    if (!e.isFocused()) {
      e.requestFocus();
    }
  }
  
  protected void d_()
  {
    e.setBackgroundResource(2130837569);
    g.setBackgroundResource(2130837569);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof b)) {
      a = ((b)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903118, null);
    d = ((TextView)paramLayoutInflater.findViewById(2131689822));
    e = ((EditText)paramLayoutInflater.findViewById(2131689823));
    f = ((TextView)paramLayoutInflater.findViewById(2131689824));
    g = ((EditText)paramLayoutInflater.findViewById(2131689825));
    h = ((ToggleButton)paramLayoutInflater.findViewById(2131689826));
    i = ((Button)paramLayoutInflater.findViewById(2131689827));
    j = ((TextView)paramLayoutInflater.findViewById(2131689829));
    k = ((TextView)paramLayoutInflater.findViewById(2131689830));
    e.addTextChangedListener(l);
    e.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        GHSCreateAccountFragment.a(GHSCreateAccountFragment.this).setSelected(paramAnonymousBoolean);
      }
    });
    g.addTextChangedListener(l);
    g.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        GHSCreateAccountFragment.b(GHSCreateAccountFragment.this).setSelected(paramAnonymousBoolean);
      }
    });
    g.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 2)
        {
          GHSCreateAccountFragment.c(GHSCreateAccountFragment.this);
          return true;
        }
        return false;
      }
    });
    h.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        boolean bool = GHSCreateAccountFragment.d(GHSCreateAccountFragment.this).hasFocus();
        int i = 0;
        if (bool)
        {
          i = GHSCreateAccountFragment.d(GHSCreateAccountFragment.this).getSelectionStart();
          GHSCreateAccountFragment.d(GHSCreateAccountFragment.this).setSelection(i);
        }
        if (paramAnonymousBoolean)
        {
          GHSCreateAccountFragment.e(GHSCreateAccountFragment.this).setContentDescription(getString(2131231146));
          GHSCreateAccountFragment.d(GHSCreateAccountFragment.this).setInputType(145);
        }
        for (;;)
        {
          if (bool) {
            GHSCreateAccountFragment.d(GHSCreateAccountFragment.this).setSelection(i);
          }
          return;
          GHSCreateAccountFragment.e(GHSCreateAccountFragment.this).setContentDescription(getString(2131231152));
          GHSCreateAccountFragment.d(GHSCreateAccountFragment.this).setInputType(129);
        }
      }
    });
    i.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSCreateAccountFragment.c(GHSCreateAccountFragment.this);
      }
    });
    j.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = GHSWebViewActivity.a(getActivity(), 2131230874, String.format("%s%s", new Object[] { getResources().getString(2131231611), getResources().getString(2131231615) }));
        startActivity(paramAnonymousView);
      }
    });
    k.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = GHSWebViewActivity.a(getActivity(), 2131230862, String.format("%s%s", new Object[] { getResources().getString(2131231611), getResources().getString(2131231614) }));
        startActivity(paramAnonymousView);
      }
    });
    f();
    h.setChecked(true);
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    a = null;
  }
  
  public void onStop()
  {
    super.onStop();
    if (b != null)
    {
      b.g();
      b = null;
      a(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSCreateAccountFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */