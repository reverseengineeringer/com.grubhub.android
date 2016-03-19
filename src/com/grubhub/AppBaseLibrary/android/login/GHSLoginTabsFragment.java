package com.grubhub.AppBaseLibrary.android.login;

import android.app.ActionBar;
import android.app.ActionBar.Tab;
import android.app.ActionBar.TabListener;
import android.app.Activity;
import android.app.FragmentTransaction;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.Typeface;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ac;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.support.v4.view.ViewPager;
import android.support.v4.view.dh;
import android.text.SpannableString;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.grubhub.AppBaseLibrary.android.utils.c.b;
import com.grubhub.AppBaseLibrary.android.utils.c.e;
import com.grubhub.AppBaseLibrary.android.utils.c.f;
import com.grubhub.AppBaseLibrary.android.views.GHSTypefaceSpan;

public class GHSLoginTabsFragment
  extends Fragment
{
  private ViewPager a;
  private ac b;
  private int c;
  private boolean d;
  private boolean e;
  private c f;
  private ActionBar.TabListener g = new ActionBar.TabListener()
  {
    public void onTabReselected(ActionBar.Tab paramAnonymousTab, FragmentTransaction paramAnonymousFragmentTransaction) {}
    
    public void onTabSelected(ActionBar.Tab paramAnonymousTab, FragmentTransaction paramAnonymousFragmentTransaction)
    {
      if ((GHSLoginTabsFragment.a(GHSLoginTabsFragment.this)) && (GHSLoginTabsFragment.b(GHSLoginTabsFragment.this) != null))
      {
        GHSLoginTabsFragment.b(GHSLoginTabsFragment.this).setCurrentItem(paramAnonymousTab.getPosition());
        if ((paramAnonymousTab.getPosition() == 0) && (GHSLoginTabsFragment.c(GHSLoginTabsFragment.this) != null)) {
          GHSLoginTabsFragment.c(GHSLoginTabsFragment.this).c();
        }
      }
    }
    
    public void onTabUnselected(ActionBar.Tab paramAnonymousTab, FragmentTransaction paramAnonymousFragmentTransaction) {}
  };
  
  public static GHSLoginTabsFragment a(int paramInt, boolean paramBoolean)
  {
    Bundle localBundle = new Bundle();
    localBundle.putInt("initial_tab_position", paramInt);
    localBundle.putBoolean("prefill_login_email", paramBoolean);
    GHSLoginTabsFragment localGHSLoginTabsFragment = new GHSLoginTabsFragment();
    localGHSLoginTabsFragment.setArguments(localBundle);
    return localGHSLoginTabsFragment;
  }
  
  private void a(int paramInt)
  {
    switch (paramInt)
    {
    default: 
      return;
    case 0: 
      com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new b(e.CORE_ORDERING_EXP, f.USER_AUTHENTICATION, "create account"));
      return;
    }
    com.grubhub.AppBaseLibrary.android.utils.c.h.a().a(new b(e.CORE_ORDERING_EXP, f.USER_AUTHENTICATION, "login"));
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {}
    for (c = paramBundle.getInt("initial_tab_position", 0);; c = getArguments().getInt("initial_tab_position", 0))
    {
      setHasOptionsMenu(true);
      return;
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    paramBundle = paramViewGroup.getContext();
    paramLayoutInflater = paramLayoutInflater.inflate(2130903129, paramViewGroup, false);
    a = ((ViewPager)paramLayoutInflater.findViewById(2131689884));
    b = new ac(getChildFragmentManager())
    {
      public Fragment a(int paramAnonymousInt)
      {
        if (paramAnonymousInt == 0)
        {
          GHSCreateAccountFragment localGHSCreateAccountFragment = GHSCreateAccountFragment.b();
          GHSLoginTabsFragment.a(GHSLoginTabsFragment.this, (c)localGHSCreateAccountFragment);
          return localGHSCreateAccountFragment;
        }
        return GHSLoginFragment.a(getArguments().getBoolean("prefill_login_email", false));
      }
      
      public int b()
      {
        return 2;
      }
    };
    a.setOnPageChangeListener(new dh()
    {
      public void a(int paramAnonymousInt)
      {
        q localq = getActivity();
        ActionBar localActionBar = localq.getActionBar();
        if ((localq != null) && (localActionBar != null) && (localActionBar.getNavigationMode() == 2)) {
          localActionBar.setSelectedNavigationItem(paramAnonymousInt);
        }
        GHSLoginTabsFragment.a(GHSLoginTabsFragment.this, paramAnonymousInt);
      }
    });
    a.setAdapter(b);
    if (d) {
      a.setCurrentItem(c);
    }
    getActivity().getWindow().setBackgroundDrawable(paramBundle.getResources().getDrawable(2130837958));
    return paramLayoutInflater;
  }
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = getActivity().getActionBar();
    if (paramMenu != null)
    {
      d = false;
      paramMenu.setNavigationMode(2);
      if (paramMenu.getTabCount() == 0)
      {
        Typeface localTypeface = com.grubhub.AppBaseLibrary.android.views.h.a(getActivity(), getString(2131231646));
        int i = getResources().getDimensionPixelSize(2131427460);
        SpannableString localSpannableString = new SpannableString(getString(2131230841));
        localSpannableString.setSpan(new GHSTypefaceSpan(null, localTypeface, i), 0, localSpannableString.length(), 33);
        paramMenu.addTab(paramMenu.newTab().setText(localSpannableString).setTabListener(g).setContentDescription(2131231148));
        localSpannableString = new SpannableString(getString(2131230850));
        localSpannableString.setSpan(new GHSTypefaceSpan(null, localTypeface, i), 0, localSpannableString.length(), 33);
        paramMenu.addTab(paramMenu.newTab().setText(localSpannableString).setTabListener(g).setContentDescription(2131231149));
        if (a != null) {
          a.setCurrentItem(c);
        }
        paramMenu.setSelectedNavigationItem(c);
      }
      d = true;
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    if (a != null) {}
    for (int i = a.getCurrentItem();; i = 0)
    {
      paramBundle.putInt("initial_tab_position", i);
      super.onSaveInstanceState(paramBundle);
      return;
    }
  }
  
  public void onStart()
  {
    super.onStart();
    if (!e)
    {
      if (c == 0) {
        a(0);
      }
      e = true;
    }
    while (a == null) {
      return;
    }
    a(a.getCurrentItem());
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.login.GHSLoginTabsFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */