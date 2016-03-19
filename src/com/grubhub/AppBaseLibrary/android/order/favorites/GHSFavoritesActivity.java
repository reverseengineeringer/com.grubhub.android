package com.grubhub.AppBaseLibrary.android.order.favorites;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

public class GHSFavoritesActivity
  extends GHSBaseActivity
  implements b, com.grubhub.AppBaseLibrary.android.order.search.g
{
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, GHSFavoritesActivity.class);
  }
  
  public void a(String paramString, boolean paramBoolean)
  {
    GHSIAddressDataModel localGHSIAddressDataModel = null;
    h.a().a(new c("favorites", "view restaurant menu_cta", ""));
    Object localObject = GHSApplication.a().b().z();
    if (localObject != null) {
      if (paramBoolean) {}
    }
    for (localGHSIAddressDataModel = ((GHSFilterSortCriteria)localObject).getAddress();; localGHSIAddressDataModel = null)
    {
      if (paramBoolean) {}
      for (localObject = com.grubhub.AppBaseLibrary.android.order.g.PICKUP;; localObject = com.grubhub.AppBaseLibrary.android.order.g.DELIVERY)
      {
        startActivity(GHSMainActivity.a(this, paramString, localGHSIAddressDataModel, (com.grubhub.AppBaseLibrary.android.order.g)localObject));
        finish();
        return;
      }
    }
  }
  
  public void h()
  {
    finish();
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903066);
    c = findViewById(2131690253);
    paramBundle = getSupportFragmentManager();
    if (paramBundle.a(2131689602) == null)
    {
      GHSFavoritesFragment localGHSFavoritesFragment = GHSFavoritesFragment.a();
      paramBundle.a().a(2131689602, localGHSFavoritesFragment, GHSFavoritesFragment.class.getSimpleName()).a();
    }
  }
  
  protected void onResume()
  {
    super.onResume();
    invalidateOptionsMenu();
  }
  
  public void y()
  {
    Fragment localFragment = getSupportFragmentManager().a(GHSFavoritesFragment.class.getSimpleName());
    if ((localFragment != null) && ((localFragment instanceof GHSFavoritesFragment))) {
      ((GHSFavoritesFragment)localFragment).a(false);
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.favorites.GHSFavoritesActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */