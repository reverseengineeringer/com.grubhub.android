package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.res.Resources;
import android.support.v4.app.Fragment;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup.LayoutParams;
import android.widget.Button;
import android.widget.FrameLayout;
import com.google.android.gms.c.k;
import com.google.android.gms.common.c;
import com.google.android.gms.d.dc;
import com.google.android.gms.d.dy;

class e
  extends com.google.android.gms.c.b<d>
  implements View.OnClickListener
{
  private e(SupportWalletFragment paramSupportWalletFragment) {}
  
  protected void a(FrameLayout paramFrameLayout)
  {
    Button localButton = new Button(SupportWalletFragment.a(a).getActivity());
    localButton.setText(com.google.android.gms.b.wallet_buy_button_place_holder);
    int k = -1;
    int m = -2;
    int j = m;
    int i = k;
    if (SupportWalletFragment.e(a) != null)
    {
      WalletFragmentStyle localWalletFragmentStyle = SupportWalletFragment.e(a).c();
      j = m;
      i = k;
      if (localWalletFragmentStyle != null)
      {
        DisplayMetrics localDisplayMetrics = SupportWalletFragment.a(a).getResources().getDisplayMetrics();
        i = localWalletFragmentStyle.a("buyButtonWidth", localDisplayMetrics, -1);
        j = localWalletFragmentStyle.a("buyButtonHeight", localDisplayMetrics, -2);
      }
    }
    localButton.setLayoutParams(new ViewGroup.LayoutParams(i, j));
    localButton.setOnClickListener(this);
    paramFrameLayout.addView(localButton);
  }
  
  protected void a(k<d> paramk)
  {
    Object localObject = SupportWalletFragment.a(a).getActivity();
    if ((SupportWalletFragment.b(a) == null) && (SupportWalletFragment.c(a)) && (localObject != null)) {}
    try
    {
      localObject = dy.a((Activity)localObject, SupportWalletFragment.d(a), SupportWalletFragment.e(a), SupportWalletFragment.f(a));
      SupportWalletFragment.a(a, new d((dc)localObject, null));
      SupportWalletFragment.a(a, null);
      paramk.a(SupportWalletFragment.b(a));
      if (SupportWalletFragment.g(a) != null)
      {
        d.a(SupportWalletFragment.b(a), SupportWalletFragment.g(a));
        SupportWalletFragment.a(a, null);
      }
      if (SupportWalletFragment.h(a) != null)
      {
        d.a(SupportWalletFragment.b(a), SupportWalletFragment.h(a));
        SupportWalletFragment.a(a, null);
      }
      if (SupportWalletFragment.i(a) != null)
      {
        d.a(SupportWalletFragment.b(a), SupportWalletFragment.i(a));
        SupportWalletFragment.a(a, null);
      }
      if (SupportWalletFragment.j(a) != null)
      {
        d.a(SupportWalletFragment.b(a), SupportWalletFragment.j(a).booleanValue());
        SupportWalletFragment.a(a, null);
      }
      return;
    }
    catch (c paramk) {}
  }
  
  public void onClick(View paramView)
  {
    paramView = SupportWalletFragment.a(a).getActivity();
    com.google.android.gms.common.e.b(com.google.android.gms.common.e.a(paramView), paramView, -1);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */