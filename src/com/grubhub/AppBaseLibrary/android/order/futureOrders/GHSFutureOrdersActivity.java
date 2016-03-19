package com.grubhub.AppBaseLibrary.android.order.futureOrders;

import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import android.view.MenuItem;
import android.view.View;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptFragment;
import com.grubhub.AppBaseLibrary.android.order.receipt.a;

public class GHSFutureOrdersActivity
  extends GHSBaseActivity
  implements c, com.grubhub.AppBaseLibrary.android.order.receipt.b
{
  private String d;
  private View e;
  
  public static Intent a(Context paramContext)
  {
    return new Intent(paramContext, GHSFutureOrdersActivity.class);
  }
  
  private void k()
  {
    Object localObject = GHSApplication.a().b();
    ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).b(null);
    ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).c(null);
    e.setVisibility(0);
    d = GHSFutureOrdersFragment.class.getSimpleName();
    localObject = getSupportFragmentManager();
    Fragment localFragment = ((w)localObject).a(GHSReceiptFragment.class.getSimpleName());
    if (localFragment != null) {
      ((w)localObject).a().a(localFragment).a();
    }
  }
  
  public void a(GHSICartDataModel paramGHSICartDataModel, GHSIRestaurantDataModel paramGHSIRestaurantDataModel)
  {
    Object localObject = GHSApplication.a().b();
    ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).b(paramGHSICartDataModel);
    ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).c(paramGHSIRestaurantDataModel);
    paramGHSIRestaurantDataModel = paramGHSICartDataModel.getDinerName();
    localObject = paramGHSICartDataModel.getCustomerContactPhone();
    if (paramGHSICartDataModel.getOrderType() == g.DELIVERY) {}
    for (boolean bool = true;; bool = false)
    {
      paramGHSICartDataModel = GHSReceiptFragment.a(null, paramGHSIRestaurantDataModel, null, (String)localObject, bool, GHSICartPaymentDataModel.PaymentTypes.fromString(paramGHSICartDataModel.getOrderPaymentType()), a.LAUNCHED_BY_FUTURE_ORDER);
      d = GHSReceiptFragment.class.getSimpleName();
      getSupportFragmentManager().a().b(2131689604, paramGHSICartDataModel, d).a();
      e.setVisibility(8);
      return;
    }
  }
  
  public void c(String paramString)
  {
    ((GHSFutureOrdersFragment)getSupportFragmentManager().a(GHSFutureOrdersFragment.class.getSimpleName())).a(paramString);
  }
  
  public void h()
  {
    finish();
  }
  
  public void i()
  {
    k();
  }
  
  public void j()
  {
    setResult(19);
    h();
  }
  
  public void onBackPressed()
  {
    if (GHSReceiptFragment.class.getSimpleName().equals(d))
    {
      k();
      return;
    }
    super.onBackPressed();
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    setContentView(2130903067);
    c = findViewById(2131690253);
    e = findViewById(2131689605);
    d = GHSFutureOrdersFragment.class.getSimpleName();
    getSupportFragmentManager().a().b(2131689605, GHSFutureOrdersFragment.a(), d).a();
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if ((paramMenuItem.getItemId() == 16908332) && (GHSReceiptFragment.class.getSimpleName().equals(d)))
    {
      k();
      return true;
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.futureOrders.GHSFutureOrdersActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */