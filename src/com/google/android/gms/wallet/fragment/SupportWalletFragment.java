package com.google.android.gms.wallet.fragment;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.q;
import android.support.v4.app.w;
import android.util.AttributeSet;
import android.util.Log;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.c.n;
import com.google.android.gms.wallet.MaskedWallet;
import com.google.android.gms.wallet.MaskedWalletRequest;

public final class SupportWalletFragment
  extends Fragment
{
  private d a;
  private boolean b = false;
  private final n c = n.a(this);
  private final e d = new e(this, null);
  private c e = new c(this);
  private final Fragment f = this;
  private WalletFragmentOptions g;
  private WalletFragmentInitParams h;
  private MaskedWalletRequest i;
  private MaskedWallet j;
  private Boolean k;
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (a != null) {
      d.a(a, paramInt1, paramInt2, paramIntent);
    }
  }
  
  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object localObject;
    if (paramBundle != null)
    {
      paramBundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
      localObject = (WalletFragmentInitParams)paramBundle.getParcelable("walletFragmentInitParams");
      if (localObject != null)
      {
        if (h != null) {
          Log.w("SupportWalletFragment", "initialize(WalletFragmentInitParams) was called more than once.Ignoring.");
        }
        h = ((WalletFragmentInitParams)localObject);
      }
      if (i == null) {
        i = ((MaskedWalletRequest)paramBundle.getParcelable("maskedWalletRequest"));
      }
      if (j == null) {
        j = ((MaskedWallet)paramBundle.getParcelable("maskedWallet"));
      }
      if (paramBundle.containsKey("walletFragmentOptions")) {
        g = ((WalletFragmentOptions)paramBundle.getParcelable("walletFragmentOptions"));
      }
      if (paramBundle.containsKey("enabled")) {
        k = Boolean.valueOf(paramBundle.getBoolean("enabled"));
      }
    }
    for (;;)
    {
      b = true;
      d.a(paramBundle);
      return;
      if (f.getArguments() != null)
      {
        localObject = (WalletFragmentOptions)f.getArguments().getParcelable("extraWalletFragmentOptions");
        if (localObject != null)
        {
          ((WalletFragmentOptions)localObject).a(f.getActivity());
          g = ((WalletFragmentOptions)localObject);
        }
      }
    }
  }
  
  public View onCreateView(LayoutInflater paramLayoutInflater, ViewGroup paramViewGroup, Bundle paramBundle)
  {
    return d.a(paramLayoutInflater, paramViewGroup, paramBundle);
  }
  
  public void onDestroy()
  {
    super.onDestroy();
    b = false;
  }
  
  public void onInflate(Activity paramActivity, AttributeSet paramAttributeSet, Bundle paramBundle)
  {
    super.onInflate(paramActivity, paramAttributeSet, paramBundle);
    if (g == null) {
      g = WalletFragmentOptions.a(paramActivity, paramAttributeSet);
    }
    paramAttributeSet = new Bundle();
    paramAttributeSet.putParcelable("attrKeyWalletFragmentOptions", g);
    d.a(paramActivity, paramAttributeSet, paramBundle);
  }
  
  public void onPause()
  {
    super.onPause();
    d.d();
  }
  
  public void onResume()
  {
    super.onResume();
    d.c();
    w localw = f.getActivity().getSupportFragmentManager();
    Fragment localFragment = localw.a("GooglePlayServicesErrorDialog");
    if (localFragment != null)
    {
      localw.a().a(localFragment).a();
      com.google.android.gms.common.e.b(com.google.android.gms.common.e.a(f.getActivity()), f.getActivity(), -1);
    }
  }
  
  public void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.setClassLoader(WalletFragmentOptions.class.getClassLoader());
    d.b(paramBundle);
    if (h != null)
    {
      paramBundle.putParcelable("walletFragmentInitParams", h);
      h = null;
    }
    if (i != null)
    {
      paramBundle.putParcelable("maskedWalletRequest", i);
      i = null;
    }
    if (j != null)
    {
      paramBundle.putParcelable("maskedWallet", j);
      j = null;
    }
    if (g != null)
    {
      paramBundle.putParcelable("walletFragmentOptions", g);
      g = null;
    }
    if (k != null)
    {
      paramBundle.putBoolean("enabled", k.booleanValue());
      k = null;
    }
  }
  
  public void onStart()
  {
    super.onStart();
    d.b();
  }
  
  public void onStop()
  {
    super.onStop();
    d.e();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.SupportWalletFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */