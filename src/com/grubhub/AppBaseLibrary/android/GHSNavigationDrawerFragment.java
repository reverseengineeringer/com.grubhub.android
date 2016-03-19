package com.grubhub.AppBaseLibrary.android;

import android.app.ActionBar;
import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.Configuration;
import android.os.Bundle;
import android.preference.PreferenceManager;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.support.v4.content.o;
import android.support.v4.widget.DrawerLayout;
import android.support.v4.widget.p;
import android.support.v7.app.n;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ListView;
import com.grubhub.AppBaseLibrary.android.account.GHSAccountSettingsActivity;
import com.grubhub.AppBaseLibrary.android.c.b.d;
import com.grubhub.AppBaseLibrary.android.dataServices.a.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.login.GHSLoginActivity;
import com.grubhub.AppBaseLibrary.android.order.cart.GHSCartActivity;
import com.grubhub.AppBaseLibrary.android.utils.c.h;
import com.grubhub.AppBaseLibrary.android.views.GHSTextView;
import com.grubhub.AppBaseLibrary.android.webContent.GHSWebViewActivity;

public class GHSNavigationDrawerFragment
  extends Fragment
{
  private Activity a;
  private View b;
  private DrawerLayout c;
  private n d;
  private boolean e;
  private p f;
  private e g;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.a.b h;
  
  private void a(Context paramContext)
  {
    Intent localIntent = new Intent(paramContext.getString(2131230829));
    o.a(paramContext).a(localIntent);
  }
  
  private void a(Context paramContext, int paramInt, String paramString)
  {
    startActivity(GHSWebViewActivity.a(paramContext, paramInt, paramString));
    if (2131231690 == paramInt) {}
    for (paramContext = "contact us";; paramContext = "about us")
    {
      h.a().a(new com.grubhub.AppBaseLibrary.android.utils.c.b(com.grubhub.AppBaseLibrary.android.utils.c.e.CONVENIENCE_FEATURES, com.grubhub.AppBaseLibrary.android.utils.c.f.HELP, paramContext));
      do
      {
        return;
      } while (2131231687 != paramInt);
    }
  }
  
  private void a(View paramView)
  {
    com.grubhub.AppBaseLibrary.android.c.b.b[] arrayOfb = new d(getResources()).a();
    ListView localListView = (ListView)paramView.findViewById(2131689921);
    localListView.setAdapter(new com.grubhub.AppBaseLibrary.android.a.b(a, arrayOfb));
    localListView.setOnItemClickListener(new f(this, a));
    paramView.findViewById(2131689910).setVisibility(0);
    paramView.findViewById(2131689913).setVisibility(8);
  }
  
  private void a(View paramView, GHSIUserAuthDataModel paramGHSIUserAuthDataModel)
  {
    com.grubhub.AppBaseLibrary.android.c.b.b[] arrayOfb = new d(getResources()).b();
    ListView localListView = (ListView)paramView.findViewById(2131689921);
    localListView.setAdapter(new com.grubhub.AppBaseLibrary.android.a.b(a, arrayOfb));
    localListView.setOnItemClickListener(new f(this, a));
    if ((TextUtils.isEmpty(paramGHSIUserAuthDataModel.getFirstName())) || (TextUtils.isEmpty(paramGHSIUserAuthDataModel.getLastName()))) {
      paramView.findViewById(2131689915).setVisibility(4);
    }
    for (;;)
    {
      ((GHSTextView)paramView.findViewById(2131689916)).setText(paramGHSIUserAuthDataModel.getEmail());
      paramView.findViewById(2131689910).setVisibility(8);
      paramView.findViewById(2131689913).setVisibility(0);
      return;
      ((GHSTextView)paramView.findViewById(2131689915)).setText(String.format("%s %s", new Object[] { paramGHSIUserAuthDataModel.getFirstName(), paramGHSIUserAuthDataModel.getLastName() }));
      paramView.findViewById(2131689915).setVisibility(0);
    }
  }
  
  private void c()
  {
    View localView = getView();
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.d(getActivity());
    if ((localGHSIUserAuthDataModel == null) || (TextUtils.isEmpty(localGHSIUserAuthDataModel.getEmail())))
    {
      a(localView);
      return;
    }
    a(localView, localGHSIUserAuthDataModel);
  }
  
  private void d()
  {
    ActionBar localActionBar = e();
    localActionBar.setDisplayShowTitleEnabled(true);
    localActionBar.setNavigationMode(0);
  }
  
  private ActionBar e()
  {
    return getActivity().getActionBar();
  }
  
  private void f()
  {
    q localq = getActivity();
    if (localq != null) {
      localq.startActivityForResult(new Intent(localq, GHSCartActivity.class), 1);
    }
  }
  
  private void g()
  {
    b();
    startActivity(GHSAccountSettingsActivity.a(getActivity()));
  }
  
  private void h()
  {
    final q localq = getActivity();
    if (localq != null)
    {
      h = new com.grubhub.AppBaseLibrary.android.dataServices.a.a.b(localq, new i()new i
      {
        public void a()
        {
          if ((localq instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)localq).a(true);
          }
        }
      }, new i()
      {
        public void a()
        {
          if ((localq instanceof GHSBaseActivity)) {
            ((GHSBaseActivity)localq).a(false);
          }
        }
      });
      h.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSIUserAuthDataModel paramAnonymousGHSIUserAuthDataModel)
        {
          GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this, localq);
        }
      });
      h.a();
      a(getView());
      com.grubhub.AppBaseLibrary.android.utils.e.a.a.a("UserLoggedOut");
    }
  }
  
  public void a(int paramInt)
  {
    n localn = d;
    if (paramInt == 0) {}
    for (boolean bool = true;; bool = false)
    {
      localn.a(bool);
      return;
    }
  }
  
  public void a(int paramInt, DrawerLayout paramDrawerLayout)
  {
    b = a.findViewById(paramInt);
    c = paramDrawerLayout;
    c.a(2130837733, 8388611);
    paramDrawerLayout = e();
    paramDrawerLayout.setDisplayHomeAsUpEnabled(true);
    paramDrawerLayout.setHomeButtonEnabled(true);
    d = new n(a, c, 2131231709, 2131231708)
    {
      public void onDrawerClosed(View paramAnonymousView)
      {
        super.onDrawerClosed(paramAnonymousView);
        if (!isAdded()) {}
        do
        {
          return;
          GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this).invalidateOptionsMenu();
        } while (GHSNavigationDrawerFragment.d(GHSNavigationDrawerFragment.this) == null);
        GHSNavigationDrawerFragment.d(GHSNavigationDrawerFragment.this).onDrawerClosed(paramAnonymousView);
      }
      
      public void onDrawerOpened(View paramAnonymousView)
      {
        super.onDrawerOpened(paramAnonymousView);
        if (!isAdded()) {}
        do
        {
          return;
          if (!GHSNavigationDrawerFragment.c(GHSNavigationDrawerFragment.this))
          {
            GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this, true);
            PreferenceManager.getDefaultSharedPreferences(GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this)).edit().putBoolean("navigation_drawer_learned", true).apply();
          }
          GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this).invalidateOptionsMenu();
        } while (GHSNavigationDrawerFragment.d(GHSNavigationDrawerFragment.this) == null);
        GHSNavigationDrawerFragment.d(GHSNavigationDrawerFragment.this).onDrawerOpened(paramAnonymousView);
      }
    };
    c.post(new Runnable()
    {
      public void run()
      {
        GHSNavigationDrawerFragment.e(GHSNavigationDrawerFragment.this).a();
      }
    });
    c.setDrawerListener(d);
  }
  
  public void a(p paramp)
  {
    f = paramp;
  }
  
  public void a(Boolean paramBoolean)
  {
    DrawerLayout localDrawerLayout = c;
    if (paramBoolean.booleanValue()) {}
    for (int i = 0;; i = 1)
    {
      localDrawerLayout.setDrawerLockMode(i);
      return;
    }
  }
  
  public boolean a()
  {
    return (c != null) && (c.j(b));
  }
  
  public void b()
  {
    if (c != null) {
      c.i(b);
    }
  }
  
  public void onActivityCreated(Bundle paramBundle)
  {
    super.onActivityCreated(paramBundle);
    setHasOptionsMenu(true);
  }
  
  public void onAttach(Activity paramActivity)
  {
    super.onAttach(paramActivity);
    a = paramActivity;
    if ((paramActivity instanceof e)) {
      g = ((e)paramActivity);
    }
  }
  
  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    d.a(paramConfiguration);
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    e = PreferenceManager.getDefaultSharedPreferences(a).getBoolean("navigation_drawer_learned", false);
  }
  
  public void onCreateOptionsMenu(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    if ((c != null) && (a())) {
      d();
    }
    super.onCreateOptionsMenu(paramMenu, paramMenuInflater);
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramLayoutInflater = paramLayoutInflater.inflate(2130903134, paramViewGroup, false);
    paramLayoutInflater.findViewById(2131689912).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        b();
        GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this).startActivityForResult(GHSLoginActivity.a(GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this), com.grubhub.AppBaseLibrary.android.login.a.LOGIN), 2);
      }
    });
    paramLayoutInflater.findViewById(2131689911).setOnClickListener(new View.OnClickListener()
    {
      public void onClick(View paramAnonymousView)
      {
        b();
        GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this).startActivityForResult(GHSLoginActivity.a(GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this), com.grubhub.AppBaseLibrary.android.login.a.CREATE_ACCOUNT), 2);
      }
    });
    if (GHSApplication.u())
    {
      paramLayoutInflater.findViewById(2131689917).setClickable(true);
      paramLayoutInflater.findViewById(2131689917).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          startActivity(new Intent(GHSNavigationDrawerFragment.a(GHSNavigationDrawerFragment.this), GHSPreferences.class));
        }
      });
    }
    for (;;)
    {
      paramLayoutInflater.findViewById(2131689913).setOnClickListener(new View.OnClickListener()
      {
        public void onClick(View paramAnonymousView)
        {
          GHSNavigationDrawerFragment.b(GHSNavigationDrawerFragment.this);
        }
      });
      return paramLayoutInflater;
      paramLayoutInflater.findViewById(2131689917).setVisibility(8);
    }
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getTitle() == null) && (d.a(paramMenuItem))) {
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  public void onResume()
  {
    super.onResume();
    c();
  }
  
  public void onStop()
  {
    super.onStop();
    if ((h != null) && (h.h())) {
      h.g();
    }
    if ((a instanceof GHSBaseActivity)) {
      ((GHSBaseActivity)a).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.GHSNavigationDrawerFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */