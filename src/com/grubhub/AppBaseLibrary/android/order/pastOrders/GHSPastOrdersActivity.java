package com.grubhub.AppBaseLibrary.android.order.pastOrders;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.support.v4.app.x;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.GHSMainActivity;
import com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment;
import com.grubhub.AppBaseLibrary.android.account.i;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.order.cart.GHSCartActivity;
import com.grubhub.AppBaseLibrary.android.order.cart.c;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.h;

public class GHSPastOrdersActivity
  extends GHSBaseActivity
  implements com.grubhub.AppBaseLibrary.android.account.b, i, c, h, a, f
{
  private String d;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, GHSPastOrdersActivity.class);
  }
  
  private void k()
  {
    w localw = getSupportFragmentManager();
    Object localObject = localw.a(2131689615);
    if ((d == null) || (localObject == null))
    {
      localObject = GHSPastOrdersFragment.a();
      d = GHSPastOrdersFragment.class.getSimpleName();
      localw.b(d, 1);
      localw.a().b(2131689615, (Fragment)localObject, d).a(d).a();
    }
  }
  
  public void a()
  {
    startActivityForResult(new Intent(this, GHSCartActivity.class), 1);
  }
  
  public void a(Parcelable paramParcelable)
  {
    w localw = getSupportFragmentManager();
    d = GHSPastOrdersViewFragment.class.getSimpleName();
    localw.b(d, 1);
    paramParcelable = localw.a().b(2131689615, GHSPastOrdersViewFragment.a(paramParcelable), d);
    paramParcelable.a(d);
    paramParcelable.a();
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    paramString = GHSAddressInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.a.EDIT, paramBoolean1, paramBoolean2, paramString);
    paramString.a(paramGHSIAddressDataModel);
    getSupportFragmentManager().a().b(2131689615, paramString, GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  public void a(String paramString, g paramg, GHSIAddressDataModel paramGHSIAddressDataModel)
  {
    startActivity(GHSMainActivity.a(this, paramString, paramGHSIAddressDataModel, paramg));
    finish();
  }
  
  public void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(final String paramString, final boolean paramBoolean)
  {
    new Handler().postDelayed(new Runnable()
    {
      public void run()
      {
        w localw = getSupportFragmentManager();
        GHSSavedAddressListFragment localGHSSavedAddressListFragment = GHSSavedAddressListFragment.a(null, true, paramBoolean, paramString, true, false);
        if (localGHSSavedAddressListFragment != null)
        {
          localGHSSavedAddressListFragment.setAllowReturnTransitionOverlap(true);
          localGHSSavedAddressListFragment.setAllowEnterTransitionOverlap(true);
          localw.a().b(2131689615, localGHSSavedAddressListFragment, GHSSavedAddressListFragment.class.getSimpleName()).a(GHSSavedAddressListFragment.class.getSimpleName()).a();
          GHSPastOrdersActivity.a(GHSPastOrdersActivity.this, GHSSavedAddressListFragment.class.getSimpleName());
        }
      }
    }, 0L);
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    getSupportFragmentManager().a().b(2131689615, GHSAddressInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.a.ADD, paramBoolean, false, paramString), GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  public void b(String paramString)
  {
    w localw = getSupportFragmentManager();
    if ((com.grubhub.AppBaseLibrary.android.utils.f.b(paramString)) && (localw != null))
    {
      localw.a(paramString, 1);
      return;
    }
    onBackPressed();
  }
  
  public void c(String paramString)
  {
    invalidateOptionsMenu();
    GHSPastOrdersViewFragment localGHSPastOrdersViewFragment = (GHSPastOrdersViewFragment)getSupportFragmentManager().a(GHSPastOrdersViewFragment.class.getSimpleName());
    if (localGHSPastOrdersViewFragment != null) {
      localGHSPastOrdersViewFragment.a(paramString);
    }
  }
  
  public void d(String paramString)
  {
    Object localObject = getSupportFragmentManager();
    ((w)localObject).a(GHSAddressInfoFragment.class.getSimpleName(), 1);
    localObject = (GHSSavedAddressListFragment)((w)localObject).a(GHSSavedAddressListFragment.class.getSimpleName());
    if (localObject != null) {
      ((GHSSavedAddressListFragment)localObject).a(paramString);
    }
  }
  
  public void g_() {}
  
  public void h() {}
  
  public void i()
  {
    w localw = getSupportFragmentManager();
    if ((localw != null) && (!localw.b(GHSSavedAddressListFragment.class.getSimpleName(), 1))) {
      localw.d();
    }
  }
  
  public void j()
  {
    finish();
  }
  
  public void l()
  {
    startActivityForResult(new Intent(this, GHSCartActivity.class), 1);
  }
  
  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 1)
    {
      if (paramInt2 != 0) {
        break label36;
      }
      if (GHSSavedAddressListFragment.class.getSimpleName().equals(d)) {
        i();
      }
    }
    label36:
    do
    {
      GHSICartDataModel localGHSICartDataModel;
      do
      {
        return;
        if (paramInt2 != -1) {
          break;
        }
        paramIntent = paramIntent.getStringExtra("restaurant_name");
        localGHSICartDataModel = GHSApplication.a().b().X();
      } while (localGHSICartDataModel == null);
      a(paramIntent, localGHSICartDataModel.getOrderType(), localGHSICartDataModel.getDeliveryAddress());
      return;
      if (paramInt2 == 23)
      {
        s();
        return;
      }
    } while (paramInt2 != 22);
    s();
  }
  
  public void onBackPressed()
  {
    w localw = getSupportFragmentManager();
    Object localObject;
    boolean bool;
    if (d != null)
    {
      localObject = localw.a(d);
      if (localObject != null) {
        if ((localObject instanceof com.grubhub.AppBaseLibrary.android.a)) {
          bool = ((com.grubhub.AppBaseLibrary.android.a)localObject).f_();
        }
      }
    }
    for (;;)
    {
      if (!bool)
      {
        super.onBackPressed();
        int i = localw.e();
        localObject = null;
        if (i > 0) {
          localObject = localw.b(i - 1);
        }
        if (localObject != null) {
          d = ((x)localObject).c();
        }
      }
      else
      {
        return;
        if ((!(localObject instanceof GHSAddressInfoFragment)) && (!(localObject instanceof GHSSavedAddressListFragment))) {
          break label118;
        }
        localw.d();
        bool = true;
        continue;
      }
      j();
      return;
      label118:
      bool = false;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    if (paramBundle != null) {
      d = paramBundle.getString("current_fragment");
    }
    setContentView(2130903070);
    c = findViewById(2131690253);
    k();
  }
  
  protected void onResume()
  {
    super.onResume();
    invalidateOptionsMenu();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putString("current_fragment", d);
  }
  
  public void r()
  {
    a();
    getSupportFragmentManager().a(GHSSavedAddressListFragment.class.getSimpleName(), 1);
  }
  
  public void s()
  {
    startActivity(GHSMainActivity.a(this));
    j();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.pastOrders.GHSPastOrdersActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */