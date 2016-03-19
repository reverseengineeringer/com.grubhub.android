package com.google.android.gms.wallet.fragment;

import android.os.Bundle;
import com.google.android.gms.d.dg;

class c
  extends dg
{
  private b a;
  private final SupportWalletFragment b;
  
  c(SupportWalletFragment paramSupportWalletFragment)
  {
    b = paramSupportWalletFragment;
  }
  
  public void a(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    if (a != null) {
      a.a(b, paramInt1, paramInt2, paramBundle);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.fragment.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */