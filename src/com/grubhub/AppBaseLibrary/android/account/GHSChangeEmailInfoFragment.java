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
import android.widget.EditText;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.net.d;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.utils.g;

public class GHSChangeEmailInfoFragment
  extends GHSInfoFragment
{
  private c a;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.j.b b;
  private boolean c;
  private EditText d;
  private Button e;
  private TextWatcher f = new TextWatcher()
  {
    public void afterTextChanged(Editable paramAnonymousEditable)
    {
      GHSChangeEmailInfoFragment.a(GHSChangeEmailInfoFragment.this);
    }
    
    public void beforeTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
    
    public void onTextChanged(CharSequence paramAnonymousCharSequence, int paramAnonymousInt1, int paramAnonymousInt2, int paramAnonymousInt3) {}
  };
  
  private void a(String paramString)
  {
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.c("user account settings", "email_save", paramString));
  }
  
  public static GHSChangeEmailInfoFragment b()
  {
    GHSChangeEmailInfoFragment localGHSChangeEmailInfoFragment = new GHSChangeEmailInfoFragment();
    localGHSChangeEmailInfoFragment.setArguments(new Bundle());
    return localGHSChangeEmailInfoFragment;
  }
  
  private void b(View paramView)
  {
    d = ((EditText)paramView.findViewById(2131689845));
    d.addTextChangedListener(f);
    e = ((Button)paramView.findViewById(2131689846));
    e.setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        GHSChangeEmailInfoFragment.b(GHSChangeEmailInfoFragment.this);
      }
    });
  }
  
  private void c()
  {
    d_();
    if (c)
    {
      d();
      b = new com.grubhub.AppBaseLibrary.android.dataServices.a.j.b(getActivity(), null, null, d.getText().toString(), null, null, new i()new i
      {
        public void a()
        {
          ((GHSBaseActivity)getActivity()).a(true);
        }
      }, new i()
      {
        public void a()
        {
          GHSChangeEmailInfoFragment.a(GHSChangeEmailInfoFragment.this, null);
          ((GHSBaseActivity)getActivity()).a(false);
        }
      });
      b.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          if ((paramAnonymousGHSIUserAuthDataModel != null) && (!TextUtils.isEmpty(paramAnonymousGHSIUserAuthDataModel.getToken())))
          {
            GHSChangeEmailInfoFragment.a(GHSChangeEmailInfoFragment.this, "successful");
            GHSChangeEmailInfoFragment.c(GHSChangeEmailInfoFragment.this).j();
            return;
          }
          GHSChangeEmailInfoFragment.a(GHSChangeEmailInfoFragment.this, "error");
        }
      });
      b.a(new d()
      {
        public void a(com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          a(paramAnonymousb.getMessage(), true);
          GHSChangeEmailInfoFragment.a(GHSChangeEmailInfoFragment.this, "error");
        }
      });
      b.a();
      return;
    }
    Resources localResources = getResources();
    String str2 = localResources.getString(2131231602) + " ";
    String str1;
    if (!g.a(d.getText().toString()))
    {
      str1 = localResources.getString(2131231314);
      a(d);
    }
    for (;;)
    {
      a(str1, true);
      a("incomplete fields required");
      return;
      str1 = str2;
      if (com.grubhub.AppBaseLibrary.android.utils.f.a(d.getText().toString()))
      {
        str1 = str2 + localResources.getString(2131231313);
        a(d);
      }
    }
  }
  
  private void e()
  {
    if (e != null)
    {
      c = g.a(d.getText().toString());
      if (c) {
        e.setBackgroundResource(2130837627);
      }
    }
    else
    {
      return;
    }
    e.setBackgroundResource(2130837628);
  }
  
  protected void d_()
  {
    d.setBackgroundResource(2130837569);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    if ((paramActivity instanceof c)) {
      a = ((c)paramActivity);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903122, paramViewGroup, false);
    if (a == null) {
      a = ((c)getParentFragment());
    }
    b(paramLayoutInflater);
    if (paramBundle == null)
    {
      paramViewGroup = GHSApplication.d(getActivity());
      if (paramViewGroup != null) {
        d.setText(paramViewGroup.getEmail());
      }
    }
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
      ((GHSBaseActivity)paramMenu).b(2131230844);
    }
  }
  
  public void onStart()
  {
    super.onStart();
    h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.USER_ACCOUNT_INFO, "edit info_email"));
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
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSChangeEmailInfoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */