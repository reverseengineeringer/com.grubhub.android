package com.grubhub.AppBaseLibrary.android.account;

import android.app.ActionBar;
import android.app.Activity;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.CompoundButton;
import android.widget.CompoundButton.OnCheckedChangeListener;
import android.widget.EditText;
import android.widget.ToggleButton;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.f;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.g;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

public class GHSChangePasswordInfoFragment
  extends GHSInfoFragment
{
  private d a;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.j.b b;
  private boolean c;
  private EditText d;
  private EditText e;
  private ToggleButton f;
  private Button g;
  private Button h;
  private TextWatcher i = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      GHSChangePasswordInfoFragment.a(GHSChangePasswordInfoFragment.this);
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  
  private void a(String paramString)
  {
    h.a().a(new c("user account settings", "password_save", paramString));
  }
  
  public static GHSChangePasswordInfoFragment b()
  {
    GHSChangePasswordInfoFragment localGHSChangePasswordInfoFragment = new GHSChangePasswordInfoFragment();
    localGHSChangePasswordInfoFragment.setArguments(new Bundle());
    return localGHSChangePasswordInfoFragment;
  }
  
  private void b(View paramView)
  {
    d = ((EditText)paramView.findViewById(2131689942));
    d.addTextChangedListener(i);
    e = ((EditText)paramView.findViewById(2131689944));
    e.addTextChangedListener(i);
    f = ((ToggleButton)paramView.findViewById(2131689945));
    f.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener()
    {
      public void onCheckedChanged(CompoundButton paramAnonymousCompoundButton, boolean paramAnonymousBoolean)
      {
        boolean bool1 = GHSChangePasswordInfoFragment.b(GHSChangePasswordInfoFragment.this).hasFocus();
        boolean bool2 = GHSChangePasswordInfoFragment.c(GHSChangePasswordInfoFragment.this).hasFocus();
        int i = 0;
        if (bool1)
        {
          i = GHSChangePasswordInfoFragment.b(GHSChangePasswordInfoFragment.this).getSelectionStart();
          GHSChangePasswordInfoFragment.b(GHSChangePasswordInfoFragment.this).setSelection(i);
        }
        label118:
        label197:
        do
        {
          break label118;
          if (paramAnonymousBoolean)
          {
            GHSChangePasswordInfoFragment.d(GHSChangePasswordInfoFragment.this).setContentDescription(getString(2131231146));
            GHSChangePasswordInfoFragment.b(GHSChangePasswordInfoFragment.this).setInputType(145);
            GHSChangePasswordInfoFragment.c(GHSChangePasswordInfoFragment.this).setInputType(145);
          }
          for (;;)
          {
            if (!bool1) {
              break label197;
            }
            GHSChangePasswordInfoFragment.b(GHSChangePasswordInfoFragment.this).setSelection(i);
            return;
            if (!bool2) {
              break;
            }
            i = GHSChangePasswordInfoFragment.c(GHSChangePasswordInfoFragment.this).getSelectionStart();
            GHSChangePasswordInfoFragment.c(GHSChangePasswordInfoFragment.this).setSelection(i);
            break;
            GHSChangePasswordInfoFragment.d(GHSChangePasswordInfoFragment.this).setContentDescription(getString(2131231152));
            GHSChangePasswordInfoFragment.b(GHSChangePasswordInfoFragment.this).setInputType(129);
            GHSChangePasswordInfoFragment.c(GHSChangePasswordInfoFragment.this).setInputType(129);
          }
        } while (!bool2);
        GHSChangePasswordInfoFragment.c(GHSChangePasswordInfoFragment.this).setSelection(i);
      }
    });
    f.setChecked(true);
    g = ((Button)paramView.findViewById(2131689946));
    g.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSChangePasswordInfoFragment.e(GHSChangePasswordInfoFragment.this);
      }
    });
    h = ((Button)paramView.findViewById(2131689947));
    h.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        paramAnonymousView = GHSWebViewActivity.a(getActivity(), 2131230847, String.format("%s%s", new Object[] { getResources().getString(2131231611), getResources().getString(2131231613) }));
        startActivity(paramAnonymousView);
      }
    });
  }
  
  private void c()
  {
    d_();
    if (c)
    {
      d();
      b = new com.grubhub.AppBaseLibrary.android.dataServices.a.j.b(getActivity(), null, null, null, e.getText().toString(), d.getText().toString(), new i()new i
      {
        public void a()
        {
          ((GHSBaseActivity)getActivity()).a(true);
        }
      }, new i()
      {
        public void a()
        {
          GHSChangePasswordInfoFragment.a(GHSChangePasswordInfoFragment.this, null);
          ((GHSBaseActivity)getActivity()).a(false);
        }
      });
      b.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          if ((paramAnonymousGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramAnonymousGHSIUserAuthDataModel.getToken())))
          {
            GHSChangePasswordInfoFragment.a(GHSChangePasswordInfoFragment.this, "successful");
            GHSChangePasswordInfoFragment.f(GHSChangePasswordInfoFragment.this).k();
            return;
          }
          GHSChangePasswordInfoFragment.a(GHSChangePasswordInfoFragment.this, "error");
        }
      });
      b.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          GHSChangePasswordInfoFragment.b(GHSChangePasswordInfoFragment.this).setText(null);
          GHSChangePasswordInfoFragment.c(GHSChangePasswordInfoFragment.this).setText(null);
          a(paramAnonymousb.getMessage(), true);
          GHSChangePasswordInfoFragment.a(GHSChangePasswordInfoFragment.this, "error");
        }
      });
      b.a();
      return;
    }
    Resources localResources = getResources();
    String str2 = localResources.getString(2131231602) + " ";
    String str1;
    if (!g.b(d.getText().toString()))
    {
      str1 = str2 + localResources.getString(2131231737);
      a(d);
    }
    for (;;)
    {
      a(str1, true);
      a("incomplete fields required");
      return;
      str1 = str2;
      if (!g.b(e.getText().toString()))
      {
        str1 = str2 + localResources.getString(2131231738);
        a(e);
      }
    }
  }
  
  private void e()
  {
    if (g != null) {
      if ((!g.b(d.getText().toString())) || (!g.b(e.getText().toString()))) {
        break label63;
      }
    }
    label63:
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      if (!c) {
        break;
      }
      g.setBackgroundResource(2130837627);
      return;
    }
    g.setBackgroundResource(2130837628);
  }
  
  protected void d_()
  {
    d.setBackgroundResource(2130837569);
    e.setBackgroundResource(2130837569);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof d)) {
      a = ((d)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903138, paramViewGroup, false);
    if (a == null) {
      a = ((d)getParentFragment());
    }
    b(paramLayoutInflater);
    e();
    return paramLayoutInflater;
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
    if ((paramMenu instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)paramMenu).b(2131230858);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, f.USER_ACCOUNT_INFO, "edit info_password"));
  }
  
  public void onStop()
  {
    super.onStop();
    if (b != null)
    {
      b.g();
      b = null;
      ((GHSBaseActivity)getActivity()).a(false);
      e();
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSChangePasswordInfoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */