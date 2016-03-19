package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import com.grubhub.AppBaseLibrary.android.b;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.utils.c.c;
import com.grubhub.AppBaseLibrary.android.utils.c.h;

class GHSReviewOrderFragment$36
  extends b
{
  GHSReviewOrderFragment$36(GHSReviewOrderFragment paramGHSReviewOrderFragment) {}
  
  public void a(DialogInterface paramDialogInterface)
  {
    h.a().a(new c("exit links", "unable to process orders modal_cta", "dismiss"));
  }
  
  public void a(DialogInterface paramDialogInterface, int paramInt)
  {
    paramDialogInterface = "tel: " + GHSReviewOrderFragment.q(a).getRestaurantPhoneNumber();
    Intent localIntent = new Intent("android.intent.action.DIAL");
    localIntent.setData(Uri.parse(paramDialogInterface));
    a.startActivity(localIntent);
    h.a().a(new c("exit links", "unable to process orders modal_cta", "call"));
  }
  
  public void b(DialogInterface paramDialogInterface, int paramInt)
  {
    h.a().a(new c("exit links", "unable to process orders modal_cta", "dismiss"));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSReviewOrderFragment.36
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */