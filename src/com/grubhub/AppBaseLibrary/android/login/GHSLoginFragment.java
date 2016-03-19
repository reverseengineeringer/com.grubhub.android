package com.grubhub.AppBaseLibrary.android.login;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.text.Editable;
import android.text.SpannableString;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.text.style.UnderlineSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
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
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIMessage;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.pastOrders.GHSIPastOrderListDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.e;
import com.grubhub.AppBaseLibrary.android.utils.f;
import com.grubhub.AppBaseLibrary.android.utils.g;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;
import java.util.ArrayList;
import java.util.Date;

public class GHSLoginFragment
  extends Fragment
{
  private static final String a = GHSLoginFragment.class.getSimpleName();
  private b b;
  private boolean c;
  private ViewGroup d;
  private TextView e;
  private EditText f;
  private TextView g;
  private EditText h;
  private ToggleButton i;
  private Button j;
  private Button k;
  private TextView l;
  private boolean[] m;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.a.a n;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.i.b o;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.e.c p;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.c.b q;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.f.c r;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.d.a s;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.h.b t;
  
  public static GHSLoginFragment a(boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putBoolean("prefill_email", paramBoolean);
    GHSLoginFragment localGHSLoginFragment = new GHSLoginFragment();
    localGHSLoginFragment.setArguments(localBundle);
    return localGHSLoginFragment;
  }
  
  private void b()
  {
    final q localq = getActivity();
    final Object localObject = GHSApplication.a().b().N();
    if (localObject != null) {}
    for (localObject = ((GHSIUserAuthDataModel)localObject).getEmail();; localObject = null)
    {
      n = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.a(localq, f.getText().toString(), h.getText().toString(), (String)localObject, new i()new i
      {
        public void a()
        {
          GHSLoginFragment.a(GHSLoginFragment.this, new boolean[5]);
          GHSLoginFragment.a(GHSLoginFragment.this, false);
        }
      }, new i()
      {
        public void a()
        {
          GHSLoginFragment.a(GHSLoginFragment.this, null);
        }
      });
      n.a(new e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          boolean bool2 = false;
          if ((paramAnonymousGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramAnonymousGHSIUserAuthDataModel.getToken())))
          {
            GHSLoginFragment localGHSLoginFragment = GHSLoginFragment.this;
            boolean bool1 = bool2;
            if (localObject != null)
            {
              bool1 = bool2;
              if (!localObject.equalsIgnoreCase(paramAnonymousGHSIUserAuthDataModel.getEmail())) {
                bool1 = true;
              }
            }
            GHSLoginFragment.b(localGHSLoginFragment, bool1);
            GHSLoginFragment.a(GHSLoginFragment.this, new com.grubhub.AppBaseLibrary.android.dataServices.a.i.b(localq, null, new i()
            {
              public void a()
              {
                GHSLoginFragment.h(GHSLoginFragment.this)[0] = 1;
                GHSLoginFragment.a(GHSLoginFragment.this, null);
                GHSLoginFragment.i(GHSLoginFragment.this);
              }
            }));
            GHSLoginFragment.j(GHSLoginFragment.this).a();
            GHSLoginFragment.a(GHSLoginFragment.this, new com.grubhub.AppBaseLibrary.android.dataServices.a.f.c(localq, null, new i()
            {
              public void a()
              {
                GHSLoginFragment.h(GHSLoginFragment.this)[1] = 1;
                GHSLoginFragment.a(GHSLoginFragment.this, null);
                GHSLoginFragment.i(GHSLoginFragment.this);
              }
            }));
            GHSLoginFragment.k(GHSLoginFragment.this).a();
            GHSLoginFragment.a(GHSLoginFragment.this, new com.grubhub.AppBaseLibrary.android.dataServices.a.c.b(localq, paramAnonymousGHSIUserAuthDataModel.getUdid(), null, new i()
            {
              public void a()
              {
                GHSLoginFragment.h(GHSLoginFragment.this)[2] = 1;
                GHSLoginFragment.a(GHSLoginFragment.this, null);
                GHSLoginFragment.i(GHSLoginFragment.this);
              }
            }));
            GHSLoginFragment.l(GHSLoginFragment.this).a();
            GHSLoginFragment.a(GHSLoginFragment.this, new com.grubhub.AppBaseLibrary.android.dataServices.a.e.c(localq, paramAnonymousGHSIUserAuthDataModel.getUdid(), null, new i()
            {
              public void a()
              {
                GHSLoginFragment.h(GHSLoginFragment.this)[3] = 1;
                GHSLoginFragment.a(GHSLoginFragment.this, null);
                GHSLoginFragment.i(GHSLoginFragment.this);
              }
            }));
            GHSLoginFragment.n(GHSLoginFragment.this).a(new e()
            {
              public void a(GHSIPastOrderListDataModel paramAnonymous2GHSIPastOrderListDataModel)
              {
                paramAnonymous2GHSIPastOrderListDataModel = com.grubhub.AppBaseLibrary.android.utils.d.a(paramAnonymous2GHSIPastOrderListDataModel.getPastOrders(), null);
                if ((paramAnonymous2GHSIPastOrderListDataModel != null) && (!paramAnonymous2GHSIPastOrderListDataModel.isEmpty()))
                {
                  GHSLoginFragment.a(GHSLoginFragment.this, new com.grubhub.AppBaseLibrary.android.dataServices.a.h.b(b, paramAnonymous2GHSIPastOrderListDataModel, true, null, new i()
                  {
                    public void a()
                    {
                      GHSLoginFragment.h(GHSLoginFragment.this)[4] = 1;
                      GHSLoginFragment.a(GHSLoginFragment.this, null);
                      GHSLoginFragment.i(GHSLoginFragment.this);
                    }
                  }));
                  GHSLoginFragment.m(GHSLoginFragment.this).a();
                  return;
                }
                GHSLoginFragment.h(GHSLoginFragment.this)[4] = 1;
                GHSLoginFragment.i(GHSLoginFragment.this);
              }
            });
            GHSLoginFragment.n(GHSLoginFragment.this).a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
            {
              public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymous2b)
              {
                GHSLoginFragment.h(GHSLoginFragment.this)[4] = 1;
                GHSLoginFragment.i(GHSLoginFragment.this);
              }
            });
            GHSLoginFragment.n(GHSLoginFragment.this).a();
          }
          do
          {
            return;
            paramAnonymousGHSIUserAuthDataModel = getActivity();
          } while (paramAnonymousGHSIUserAuthDataModel == null);
          com.grubhub.AppBaseLibrary.android.c.a(paramAnonymousGHSIUserAuthDataModel, 2131231398, 2131231535, 2131231717, 0, 0, null);
          GHSLoginFragment.a(GHSLoginFragment.this, true);
        }
      });
      n.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          q localq = getActivity();
          if (localq != null)
          {
            if (!paramAnonymousb.d()) {
              break label55;
            }
            com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getString(2131231717), null, null, null);
          }
          for (;;)
          {
            GHSLoginFragment.a(GHSLoginFragment.this, true);
            return;
            label55:
            com.grubhub.AppBaseLibrary.android.c.a(getActivity(), paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), localq.getString(2131231717), null, null, null);
          }
        }
      });
      n.a();
      return;
    }
  }
  
  private void b(boolean paramBoolean)
  {
    boolean bool2 = true;
    boolean bool1;
    GHSBaseActivity localGHSBaseActivity;
    if (getActivity() != null)
    {
      f.setEnabled(paramBoolean);
      h.setEnabled(paramBoolean);
      i.setEnabled(paramBoolean);
      if ((!g.a(f.getText().toString())) || (!g.b(h.getText().toString()))) {
        break label105;
      }
      bool1 = true;
      j.setEnabled(bool1);
      k.setEnabled(paramBoolean);
      localGHSBaseActivity = (GHSBaseActivity)getActivity();
      if (paramBoolean) {
        break label110;
      }
    }
    label105:
    label110:
    for (paramBoolean = bool2;; paramBoolean = false)
    {
      localGHSBaseActivity.a(paramBoolean);
      return;
      bool1 = false;
      break;
    }
  }
  
  private void c()
  {
    if ((m != null) && (m.length == 5))
    {
      boolean[] arrayOfBoolean = m;
      int i3 = arrayOfBoolean.length;
      int i2 = 0;
      int i1 = 1;
      if (i2 < i3)
      {
        int i4 = arrayOfBoolean[i2];
        if ((i1 != 0) && (i4 != 0)) {}
        for (i1 = 1;; i1 = 0)
        {
          i2 += 1;
          break;
        }
      }
      if (i1 != 0)
      {
        b(true);
        if (b != null) {
          b.d(c);
        }
      }
    }
  }
  
  private void d()
  {
    Date localDate = new Date();
    if ((s == null) && (localDate.getTime() > GHSApplication.a().b().f() + 86400000L))
    {
      s = new com.grubhub.AppBaseLibrary.android.dataServices.a.d.a(getActivity(), null, null);
      s.a(new e()
      {
        public void a(final GHSIMessage paramAnonymousGHSIMessage)
        {
          if (paramAnonymousGHSIMessage == null)
          {
            GHSLoginFragment.o(GHSLoginFragment.this).setVisibility(8);
            GHSLoginFragment.p(GHSLoginFragment.this);
            return;
          }
          Object localObject = getActivity();
          com.grubhub.AppBaseLibrary.android.dataServices.b.b localb = GHSApplication.a().b();
          final String str = paramAnonymousGHSIMessage.getBody();
          if ((localObject != null) && (paramAnonymousGHSIMessage.appliesToVersion(com.grubhub.AppBaseLibrary.android.utils.b.a((Context)localObject))) && (!localb.a(paramAnonymousGHSIMessage.getETag())) && (f.b(str)))
          {
            localObject = paramAnonymousGHSIMessage.getPositiveButtonText();
            if (f.b((String)localObject))
            {
              localObject = new SpannableString(String.format("%s %s", new Object[] { str, localObject }));
              ((SpannableString)localObject).setSpan(new UnderlineSpan(), str.length() + 1, ((SpannableString)localObject).length(), 33);
              GHSLoginFragment.o(GHSLoginFragment.this).setText((CharSequence)localObject);
              label168:
              GHSLoginFragment.o(GHSLoginFragment.this).setVisibility(0);
              str = paramAnonymousGHSIMessage.getUrl();
              if (!f.b(str)) {
                break label257;
              }
              GHSLoginFragment.o(GHSLoginFragment.this).setOnClickListener(new View.OnClickListener()
              {
                public void onClick(View paramAnonymous2View)
                {
                  if (paramAnonymousGHSIMessage.isWebView())
                  {
                    startActivity(GHSWebViewActivity.a(getActivity(), paramAnonymousGHSIMessage.getTitle(), str));
                    return;
                  }
                  try
                  {
                    paramAnonymous2View = new Intent("android.intent.action.VIEW", Uri.parse(str));
                    startActivity(paramAnonymous2View);
                    return;
                  }
                  catch (Exception paramAnonymous2View)
                  {
                    com.grubhub.AppBaseLibrary.android.utils.e.a.b(GHSLoginFragment.a(), paramAnonymous2View.getMessage());
                  }
                }
              });
            }
            for (;;)
            {
              GHSLoginFragment.p(GHSLoginFragment.this);
              if (paramAnonymousGHSIMessage.isRepeat()) {
                break;
              }
              localb.a(paramAnonymousGHSIMessage.getETag(), true);
              return;
              GHSLoginFragment.o(GHSLoginFragment.this).setText(str);
              break label168;
              label257:
              GHSLoginFragment.o(GHSLoginFragment.this).setOnClickListener(null);
            }
          }
          GHSLoginFragment.o(GHSLoginFragment.this).setVisibility(8);
          GHSLoginFragment.p(GHSLoginFragment.this);
        }
      });
      s.a();
    }
  }
  
  private void e()
  {
    if ((d != null) && (l != null))
    {
      int i1 = View.MeasureSpec.makeMeasureSpec(GHSApplication.p(), Integer.MIN_VALUE);
      int i2 = View.MeasureSpec.makeMeasureSpec(0, 0);
      l.measure(i1, i2);
      i1 = l.getMeasuredHeight();
      if (i1 > 0) {
        d.setPadding(d.getPaddingLeft(), d.getPaddingTop(), d.getPaddingRight(), i1);
      }
    }
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof b)) {
      b = ((b)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903128, null);
    d = ((ViewGroup)paramLayoutInflater.findViewById(2131689875));
    e = ((TextView)paramLayoutInflater.findViewById(2131689876));
    f = ((EditText)paramLayoutInflater.findViewById(2131689877));
    g = ((TextView)paramLayoutInflater.findViewById(2131689878));
    h = ((EditText)paramLayoutInflater.findViewById(2131689879));
    i = ((ToggleButton)paramLayoutInflater.findViewById(2131689880));
    j = ((Button)paramLayoutInflater.findViewById(2131689881));
    k = ((Button)paramLayoutInflater.findViewById(2131689882));
    l = ((TextView)paramLayoutInflater.findViewById(2131689883));
    f.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        if ((g.a(GHSLoginFragment.a(GHSLoginFragment.this).getText().toString())) && (g.b(GHSLoginFragment.b(GHSLoginFragment.this).getText().toString()))) {}
        for (boolean bool = true;; bool = false)
        {
          GHSLoginFragment.c(GHSLoginFragment.this).setEnabled(bool);
          return;
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    f.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        GHSLoginFragment.d(GHSLoginFragment.this).setSelected(paramAnonymousBoolean);
      }
    });
    if (getArguments().getBoolean("prefill_email", false))
    {
      paramViewGroup = GHSApplication.a().b().N();
      if ((paramViewGroup != null) && (f.b(paramViewGroup.getEmail()))) {
        f.setText(paramViewGroup.getEmail());
      }
    }
    h.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        if ((g.a(GHSLoginFragment.a(GHSLoginFragment.this).getText().toString())) && (g.b(GHSLoginFragment.b(GHSLoginFragment.this).getText().toString()))) {}
        for (boolean bool = true;; bool = false)
        {
          GHSLoginFragment.c(GHSLoginFragment.this).setEnabled(bool);
          return;
        }
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    h.setOnFocusChangeListener(new View.OnFocusChangeListener()
    {
      public void onFocusChange(View paramAnonymousView, boolean paramAnonymousBoolean)
      {
        GHSLoginFragment.e(GHSLoginFragment.this).setSelected(paramAnonymousBoolean);
      }
    });
    h.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 2)
        {
          GHSLoginFragment.f(GHSLoginFragment.this);
          return true;
        }
        return false;
      }
    });
    i.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        boolean bool = GHSLoginFragment.b(GHSLoginFragment.this).hasFocus();
        int i = 0;
        if (bool)
        {
          i = GHSLoginFragment.b(GHSLoginFragment.this).getSelectionStart();
          GHSLoginFragment.b(GHSLoginFragment.this).setSelection(i);
        }
        if (paramAnonymousBoolean)
        {
          GHSLoginFragment.g(GHSLoginFragment.this).setContentDescription(getString(2131231146));
          GHSLoginFragment.b(GHSLoginFragment.this).setInputType(145);
        }
        for (;;)
        {
          if (bool) {
            GHSLoginFragment.b(GHSLoginFragment.this).setSelection(i);
          }
          return;
          GHSLoginFragment.g(GHSLoginFragment.this).setContentDescription(getString(2131231152));
          GHSLoginFragment.b(GHSLoginFragment.this).setInputType(129);
        }
      }
    });
    j.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSLoginFragment.f(GHSLoginFragment.this);
      }
    });
    k.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = GHSWebViewActivity.a(getActivity(), 2131230847, String.format("%s%s", new Object[] { getResources().getString(2131231611), getResources().getString(2131231613) }));
        startActivity(paramAnonymousView);
      }
    });
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    b = null;
  }
  
  public void onStart()
  {
    super.onStart();
    d();
  }
  
  public void onStop()
  {
    super.onStop();
    if (n != null)
    {
      n.g();
      n = null;
    }
    if (o != null)
    {
      o.g();
      o = null;
    }
    if (r != null)
    {
      r.g();
      r = null;
    }
    if (p != null)
    {
      p.g();
      p = null;
    }
    if (q != null)
    {
      q.g();
      q = null;
    }
    if (s != null)
    {
      s.g();
      s = null;
    }
    if (t != null)
    {
      t.g();
      t = null;
    }
    b(true);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */