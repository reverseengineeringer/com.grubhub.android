package com.grubhub.AppBaseLibrary.android.account;

import android.app.Activity;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.support.v4.app.q;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.ScrollView;
import android.widget.TextView;
import android.widget.Toast;

public abstract class GHSInfoFragment
  extends Fragment
{
  protected void a(View paramView)
  {
    a(paramView, null);
  }
  
  protected void a(View paramView, ScrollView paramScrollView)
  {
    a(paramView, paramScrollView, paramView.getTop());
  }
  
  protected void a(View paramView, ScrollView paramScrollView, int paramInt)
  {
    paramView.setBackgroundResource(2130837570);
    if (paramView.isFocused())
    {
      if (paramScrollView != null) {
        paramScrollView.scrollTo(0, paramInt);
      }
      return;
    }
    paramView.requestFocus();
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    View localView = getActivity().getLayoutInflater().inflate(2130903210, null, false);
    ((TextView)localView.findViewById(2131690262)).setText(paramString);
    if (paramBoolean) {
      localView.setBackgroundColor(getActivity().getResources().getColor(2131558466));
    }
    for (;;)
    {
      paramString = new Toast(getActivity());
      paramString.setView(localView);
      paramString.setGravity(55, 0, getResources().getDimensionPixelSize(2131427350));
      paramString.setDuration(1);
      paramString.show();
      return;
      localView.setBackgroundColor(getActivity().getResources().getColor(2131558487));
    }
  }
  
  protected void d()
  {
    q localq = getActivity();
    View localView = getView();
    if ((localq != null) && (localView != null)) {
      ((InputMethodManager)localq.getSystemService("input_method")).hideSoftInputFromWindow(localView.getWindowToken(), 2);
    }
  }
  
  protected abstract void d_();
  
  public void onPrepareOptionsMenu(Menu paramMenu)
  {
    super.onPrepareOptionsMenu(paramMenu);
    paramMenu = paramMenu.findItem(2131690345);
    if (paramMenu != null) {
      paramMenu.setVisible(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.account.GHSInfoFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */