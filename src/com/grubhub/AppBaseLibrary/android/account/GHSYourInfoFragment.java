package com.grubhub.AppBaseLibrary.android.account;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.TextView.OnEditorActionListener;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.p;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPickupInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.h.a;

public class GHSYourInfoFragment
  extends GHSInfoFragment
{
  private static final String a = GHSInfoFragment.class.getSimpleName();
  private boolean b;
  private s c;
  private p d;
  private String e;
  private String f;
  private String g;
  private String h;
  private String i;
  private r j;
  private com.grubhub.AppBaseLibrary.android.order.g k;
  private EditText l;
  private EditText m;
  private EditText n;
  private Button o;
  
  public static GHSYourInfoFragment a(r paramr, com.grubhub.AppBaseLibrary.android.order.g paramg, String paramString1, String paramString2, String paramString3)
  {
    GHSYourInfoFragment localGHSYourInfoFragment = new GHSYourInfoFragment();
    Bundle localBundle = new Bundle();
    if (paramString1 != null) {
      localBundle.putString("first_name_prefill", paramString1);
    }
    if (paramString2 != null) {
      localBundle.putString("last_name_prefill", paramString2);
    }
    if (paramString3 != null) {
      localBundle.putString("phone_number", paramString3);
    }
    localBundle.putInt("info_type", paramr.getValue());
    localBundle.putSerializable("order_type", paramg);
    localGHSYourInfoFragment.setArguments(localBundle);
    return localGHSYourInfoFragment;
  }
  
  private void c()
  {
    d_();
    if ((com.grubhub.AppBaseLibrary.android.utils.f.b(e)) && (com.grubhub.AppBaseLibrary.android.utils.f.b(f)) && ((j == r.SETTINGS) || (a.b(i))))
    {
      d();
      if (((j == r.ENTER) || (j == r.EDIT)) && (k == com.grubhub.AppBaseLibrary.android.order.g.PICKUP))
      {
        e();
        return;
      }
      f();
      return;
    }
    Resources localResources = getResources();
    String str = localResources.getString(2131231602) + " ";
    if (!com.grubhub.AppBaseLibrary.android.utils.g.c(e))
    {
      str = str + localResources.getString(2131231769);
      a(l);
    }
    for (;;)
    {
      a(str, true);
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("user account settings", "name_save", "incomplete fields required"));
      return;
      if (!com.grubhub.AppBaseLibrary.android.utils.g.c(f))
      {
        str = str + localResources.getString(2131231770);
        a(m);
      }
      else if (!a.b(i))
      {
        str = getResources().getString(2131231459);
        a(n);
      }
    }
  }
  
  private void e()
  {
    GHSPickupInfoDataModel localGHSPickupInfoDataModel = new GHSPickupInfoDataModel();
    localGHSPickupInfoDataModel.setName(String.format("%s %s", new Object[] { e, f }));
    localGHSPickupInfoDataModel.setPhone(i);
    localGHSPickupInfoDataModel.setEmail(GHSApplication.a().b().N().getEmail());
    d = new p(getActivity(), false, localGHSPickupInfoDataModel, new i()new i
    {
      public void a()
      {
        q localq = getActivity();
        if ((localq instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)localq).a(true);
        }
      }
    }, new i()
    {
      public void a()
      {
        GHSYourInfoFragment.a(GHSYourInfoFragment.this, null);
        q localq = getActivity();
        if ((localq instanceof GHSBaseActivity)) {
          ((GHSBaseActivity)localq).a(false);
        }
      }
    });
    d.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
    {
      public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
      {
        GHSYourInfoFragment.d(GHSYourInfoFragment.this);
      }
    });
    d.a(new d()
    {
      public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
      {
        q localq = getActivity();
        if (localq != null) {
          com.grubhub.AppBaseLibrary.android.c.a(localq, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), null);
        }
      }
    });
    d.a();
  }
  
  private void f()
  {
    if (c != null) {
      if ((e.equals(g)) && (f.equals(h))) {
        break label60;
      }
    }
    label60:
    for (boolean bool = true;; bool = false)
    {
      c.a(e, f, i, bool);
      return;
    }
  }
  
  private void g()
  {
    if (o != null) {
      if ((!com.grubhub.AppBaseLibrary.android.utils.g.c(e)) || (!com.grubhub.AppBaseLibrary.android.utils.g.c(f)) || ((j != r.SETTINGS) && (!a.b(i)))) {
        break label72;
      }
    }
    label72:
    for (boolean bool = true;; bool = false)
    {
      b = bool;
      if (!b) {
        break;
      }
      o.setBackgroundResource(2130837627);
      return;
    }
    o.setBackgroundResource(2130837628);
  }
  
  protected void d_()
  {
    l.setBackgroundResource(2130837569);
    m.setBackgroundResource(2130837569);
    n.setBackgroundResource(2130837569);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((getParentFragment() instanceof s)) {
      c = ((s)getParentFragment());
    }
    while (!(paramActivity instanceof s)) {
      return;
    }
    c = ((s)paramActivity);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (c == null)
    {
      Fragment localFragment = getParentFragment();
      if ((localFragment != null) && ((localFragment instanceof s))) {
        c = ((s)localFragment);
      }
    }
    if (paramBundle != null) {
      e = paramBundle.getString("first_name");
    }
    for (f = paramBundle.getString("last_name");; f = paramBundle.getString("last_name_prefill"))
    {
      i = paramBundle.getString("phone_number");
      g = getArguments().getString("first_name_prefill");
      h = getArguments().getString("last_name_prefill");
      j = r.getInfoEnum(getArguments().getInt("info_type"));
      k = ((com.grubhub.AppBaseLibrary.android.order.g)getArguments().getSerializable("order_type"));
      setHasOptionsMenu(true);
      return;
      paramBundle = getArguments();
      e = paramBundle.getString("first_name_prefill");
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903164, null);
    l = ((EditText)paramLayoutInflater.findViewById(2131689752));
    l.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        GHSYourInfoFragment.a(GHSYourInfoFragment.this, paramAnonymousEditable.toString());
        GHSYourInfoFragment.a(GHSYourInfoFragment.this);
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    l.setText(e);
    m = ((EditText)paramLayoutInflater.findViewById(2131689754));
    m.addTextChangedListener(new TextWatcher()
    {
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        GHSYourInfoFragment.b(GHSYourInfoFragment.this, paramAnonymousEditable.toString());
        GHSYourInfoFragment.a(GHSYourInfoFragment.this);
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    m.setText(f);
    n = ((EditText)paramLayoutInflater.findViewById(2131689756));
    n.addTextChangedListener(new TextWatcher()
    {
      String a = null;
      
      public void afterTextChanged(Editable paramAnonymousEditable)
      {
        if (paramAnonymousEditable != null)
        {
          paramAnonymousEditable = paramAnonymousEditable.toString();
          GHSYourInfoFragment.c(GHSYourInfoFragment.this, paramAnonymousEditable);
          if ((!paramAnonymousEditable.equals(a)) && (a.c(paramAnonymousEditable)))
          {
            a = a.a(paramAnonymousEditable);
            if (a != null)
            {
              GHSYourInfoFragment.b(GHSYourInfoFragment.this).setText(a);
              GHSYourInfoFragment.b(GHSYourInfoFragment.this).setSelection(a.length());
              GHSYourInfoFragment.c(GHSYourInfoFragment.this, a);
            }
          }
        }
        GHSYourInfoFragment.a(GHSYourInfoFragment.this);
      }
      
      public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
      
      public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    });
    n.setText(i);
    n.setOnEditorActionListener(new TextView.OnEditorActionListener()
    {
      public boolean onEditorAction(TextView paramAnonymousTextView, int paramAnonymousInt, KeyEvent paramAnonymousKeyEvent)
      {
        if (paramAnonymousInt == 2)
        {
          GHSYourInfoFragment.c(GHSYourInfoFragment.this);
          return true;
        }
        return false;
      }
    });
    if (j == r.SETTINGS)
    {
      n.setVisibility(8);
      paramLayoutInflater.findViewById(2131689755).setVisibility(8);
    }
    o = ((Button)paramLayoutInflater.findViewById(2131690150));
    o.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSYourInfoFragment.c(GHSYourInfoFragment.this);
      }
    });
    g();
    return paramLayoutInflater;
  }
  
  public void onDetach()
  {
    super.onDetach();
    c = null;
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      d();
      paramMenuItem = getActivity();
      if ((paramMenuItem instanceof GHSBaseActivity)) {
        ((GHSBaseActivity)paramMenuItem).b(getClass().getSimpleName());
      }
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity();
    paramMenu.getActionBar().setDisplayHomeAsUpEnabled(true);
    int i1;
    if ((paramMenu instanceof GHSBaseActivity))
    {
      if (j != r.SETTINGS) {
        break label48;
      }
      i1 = 2131230849;
    }
    for (;;)
    {
      ((GHSBaseActivity)paramMenu).b(i1);
      return;
      label48:
      if (j == r.EDIT) {
        i1 = 2131230843;
      } else {
        i1 = 2131230877;
      }
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    Bundle localBundle = paramBundle;
    if (paramBundle == null) {
      localBundle = new Bundle();
    }
    localBundle.putString("first_name", e);
    localBundle.putString("last_name", f);
    localBundle.putString("phone_number", i);
    super.onSaveInstanceState(localBundle);
  }
  
  public void onStart()
  {
    super.onStart();
    if (j == r.SETTINGS)
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "edit info_name"));
      return;
    }
    if (j == r.EDIT)
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "edit info_personal"));
      return;
    }
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CORE_ORDERING_EXP, com.grubhub.AppBaseLibrary.android.utils.c.f.ORDER_PROCESSING, "enter info_personal"));
  }
  
  public void onStop()
  {
    super.onStop();
    if (d != null)
    {
      d.g();
      d = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSYourInfoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */