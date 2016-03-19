package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.Intent;
import android.os.Bundle;
import com.google.android.gms.wallet.g;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.dataServices.b.b;
import com.grubhub.AppBaseLibrary.android.order.cart.googleWallet.GHSGoogleWalletBaseFragment;

public class GHSGoogleWalletPreAuthFragment
  extends GHSGoogleWalletBaseFragment
{
  public static GHSGoogleWalletPreAuthFragment a()
  {
    return new GHSGoogleWalletPreAuthFragment();
  }
  
  private void a(Intent paramIntent)
  {
    if ((paramIntent != null) && (paramIntent.hasExtra("com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED")) && (paramIntent.getBooleanExtra("com.google.android.gm.wallet.EXTRA_IS_USER_PREAUTHORIZED", false)))
    {
      GHSApplication.a().b().h(true);
      return;
    }
    GHSApplication.a().b().h(false);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    switch (paramInt1)
    {
    default: 
      return;
    }
    a(paramIntent);
  }
  
  public void onConnected(Bundle paramBundle)
  {
    super.onConnected(paramBundle);
    g.a(a, 2347);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSGoogleWalletPreAuthFragment
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */