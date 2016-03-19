package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.DialogInterface;
import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.ag;
import android.support.v4.app.w;
import com.grubhub.AppBaseLibrary.android.GHSApplication;
import com.grubhub.AppBaseLibrary.android.GHSBaseActivity;
import com.grubhub.AppBaseLibrary.android.account.GHSAddressInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSPaymentInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSSavedAddressListFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSSavedPaymentListFragment;
import com.grubhub.AppBaseLibrary.android.account.GHSYourInfoFragment;
import com.grubhub.AppBaseLibrary.android.account.m;
import com.grubhub.AppBaseLibrary.android.account.r;
import com.grubhub.AppBaseLibrary.android.account.s;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.o;
import com.grubhub.AppBaseLibrary.android.dataServices.a.b.p;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSDeliveryInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSPickupInfoDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIAddressDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartPaymentDataModel.PaymentTypes;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIUserAuthDataModel;
import com.grubhub.AppBaseLibrary.android.login.GHSLoginActivity;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.receipt.GHSReceiptActivity;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Set;

public class GHSCartActivity
  extends GHSBaseActivity
  implements com.grubhub.AppBaseLibrary.android.account.b, com.grubhub.AppBaseLibrary.android.account.f, com.grubhub.AppBaseLibrary.android.account.i, m, s, a, h, k, com.grubhub.AppBaseLibrary.android.order.h
{
  private w d;
  private com.grubhub.AppBaseLibrary.android.dataServices.a.a<GHSICartDataModel> e;
  
  private void a(final g paramg, final String paramString1, final String paramString2)
  {
    Object localObject = GHSApplication.a().b();
    GHSIRestaurantDataModel localGHSIRestaurantDataModel = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).U();
    final boolean bool;
    if ((localGHSIRestaurantDataModel != null) && (localGHSIRestaurantDataModel.isCrossStreetRequired()))
    {
      bool = true;
      localObject = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).t();
      if (paramg != g.DELIVERY) {
        break label145;
      }
    }
    label145:
    for (e = new o(this, false, new GHSDeliveryInfoDataModel((GHSIAddressDataModel)localObject), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
        {
          public void a()
          {
            a(true);
          }
        }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
        {
          public void a()
          {
            a(false);
            GHSCartActivity.a(GHSCartActivity.this, null);
          }
        });; e = new p(this, false, new GHSPickupInfoDataModel(), new com.grubhub.AppBaseLibrary.android.dataServices.a.i()new com.grubhub.AppBaseLibrary.android.dataServices.a.i
        {
          public void a()
          {
            a(true);
          }
        }, new com.grubhub.AppBaseLibrary.android.dataServices.a.i()
        {
          public void a()
          {
            a(false);
            GHSCartActivity.a(GHSCartActivity.this, null);
          }
        }))
    {
      e.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.e()
      {
        public void a(GHSICartDataModel paramAnonymousGHSICartDataModel)
        {
          GHSCartActivity.a(GHSCartActivity.this).a().b(2131689599, GHSReviewOrderFragment.a(paramg, paramString1, paramString2), GHSReviewOrderFragment.class.getSimpleName()).a(GHSReviewOrderFragment.class.getSimpleName()).b();
        }
      });
      paramString1 = e;
      e.a(new com.grubhub.AppBaseLibrary.android.dataServices.net.d()
      {
        public void a(final com.grubhub.AppBaseLibrary.android.b.b paramAnonymousb)
        {
          if (paramAnonymousb.c() == com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_ADDRESS_INVALID_PHONE)
          {
            if (paramg == g.PICKUP)
            {
              GHSCartActivity.a(GHSCartActivity.this, g.PICKUP, true, false, false, false, false, false);
              return;
            }
            GHSCartActivity.a(GHSCartActivity.this, g.DELIVERY, false, false, false, true, false, bool);
            return;
          }
          com.grubhub.AppBaseLibrary.android.c.a(GHSCartActivity.this, paramAnonymousb.f(), paramAnonymousb.getLocalizedMessage(), paramAnonymousb.g(), paramAnonymousb.h(), paramAnonymousb.i(), new com.grubhub.AppBaseLibrary.android.b()
          {
            public void a(DialogInterface paramAnonymous2DialogInterface, int paramAnonymous2Int)
            {
              if (paramAnonymousb.d()) {
                c.a();
              }
            }
          });
        }
      });
      e.a();
      return;
      bool = false;
      break;
    }
  }
  
  private void a(g paramg, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5, boolean paramBoolean6)
  {
    w localw = getSupportFragmentManager();
    paramg = GHSAccountInfoCheckoutFragment.a(paramg, paramBoolean1, paramBoolean2, paramBoolean3, paramBoolean4, paramBoolean5, paramBoolean6);
    localw.a().b(2131689599, paramg, GHSAccountInfoCheckoutFragment.class.getSimpleName()).a(GHSAccountInfoCheckoutFragment.class.getSimpleName()).a();
  }
  
  private void c(g paramg)
  {
    a(paramg, null, null);
  }
  
  private void l()
  {
    d.b(GHSAccountInfoCheckoutFragment.class.getSimpleName(), 1);
    d.b(GHSAddressInfoFragment.class.getSimpleName(), 1);
    d.b(GHSReviewOrderFragment.class.getSimpleName(), 1);
  }
  
  private boolean m()
  {
    Set localSet = com.grubhub.AppBaseLibrary.android.utils.c.a(GHSApplication.a().b(), true);
    if (localSet == null) {
      return true;
    }
    Iterator localIterator = new ArrayList() {}.iterator();
    while (localIterator.hasNext())
    {
      com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d locald = (com.grubhub.AppBaseLibrary.android.order.cart.paymentSelection.b.d)localIterator.next();
      if ((localSet.contains(locald.c())) && (locald.a())) {
        return false;
      }
    }
    return true;
  }
  
  private void n()
  {
    GHSCartFragment localGHSCartFragment = (GHSCartFragment)d.a(GHSCartFragment.class.getSimpleName());
    if (localGHSCartFragment != null) {
      localGHSCartFragment.a(true);
    }
  }
  
  public void a(GHSIAddressDataModel paramGHSIAddressDataModel, boolean paramBoolean1, boolean paramBoolean2, String paramString)
  {
    paramString = GHSAddressInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.a.EDIT, paramBoolean1, paramBoolean2, true, false);
    paramString.a(paramGHSIAddressDataModel);
    d.a().b(2131689599, paramString, GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  public void a(GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, String paramString)
  {
    if (paramString == null)
    {
      i();
      return;
    }
    d.a().b(2131689599, GHSSavedPaymentListFragment.a(paramString, true, paramPaymentTypes), GHSSavedPaymentListFragment.class.getSimpleName()).a(GHSSavedPaymentListFragment.class.getSimpleName()).a();
  }
  
  public void a(g paramg)
  {
    n();
    b(GHSAccountInfoCheckoutFragment.class.getSimpleName());
    c(paramg);
  }
  
  public void a(String paramString, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes, boolean paramBoolean)
  {
    GHSSavedPaymentListFragment localGHSSavedPaymentListFragment = (GHSSavedPaymentListFragment)d.a(GHSSavedPaymentListFragment.class.getSimpleName());
    if (localGHSSavedPaymentListFragment != null) {
      localGHSSavedPaymentListFragment.a(paramString, paramPaymentTypes);
    }
    onBackPressed();
  }
  
  public void a(String paramString1, String paramString2, GHSIAddressDataModel paramGHSIAddressDataModel) {}
  
  public void a(String paramString1, String paramString2, String paramString3)
  {
    d.a().b(2131689599, GHSYourInfoFragment.a(r.EDIT, g.PICKUP, paramString1, paramString2, paramString3), GHSYourInfoFragment.class.getSimpleName()).a(GHSYourInfoFragment.class.getSimpleName()).a();
  }
  
  public void a(String paramString1, String paramString2, String paramString3, String paramString4, boolean paramBoolean, GHSIAddressDataModel paramGHSIAddressDataModel, GHSICartPaymentDataModel.PaymentTypes paramPaymentTypes)
  {
    startActivity(GHSReceiptActivity.a(this, paramString1, paramString2, paramString3, paramString4, paramBoolean, paramPaymentTypes, com.grubhub.AppBaseLibrary.android.order.receipt.a.LAUNCHED_BY_CART));
    i.a();
    if (paramGHSIAddressDataModel != null)
    {
      paramString3 = GHSApplication.a().b();
      paramString2 = paramString3.z();
      paramString1 = paramString2;
      if (paramString2 == null) {
        paramString1 = new GHSFilterSortCriteria();
      }
      paramString1.setOrderType(g.DELIVERY);
      paramString1.setAddress(paramGHSIAddressDataModel, com.grubhub.AppBaseLibrary.android.order.a.b(paramGHSIAddressDataModel));
      paramString3.a(paramString1);
    }
    setResult(23, new Intent());
    finish();
  }
  
  public void a(String paramString1, String paramString2, String paramString3, boolean paramBoolean)
  {
    GHSReviewOrderFragment localGHSReviewOrderFragment = (GHSReviewOrderFragment)d.a(GHSReviewOrderFragment.class.getSimpleName());
    if (localGHSReviewOrderFragment != null)
    {
      GHSApplication.a().b().h(paramString3);
      localGHSReviewOrderFragment.a(paramString1, paramString2, paramString3);
      d.b(GHSYourInfoFragment.class.getSimpleName(), 1);
    }
  }
  
  public void a(boolean paramBoolean, String paramString)
  {
    d.a().b(2131689599, GHSAddressInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.a.ADD, paramBoolean, false, true, false), GHSAddressInfoFragment.class.getSimpleName()).a(GHSAddressInfoFragment.class.getSimpleName()).a();
  }
  
  public void b(g paramg)
  {
    Object localObject = GHSApplication.a().b();
    GHSIUserAuthDataModel localGHSIUserAuthDataModel = GHSApplication.d(this);
    GHSIRestaurantDataModel localGHSIRestaurantDataModel = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).U();
    GHSIAddressDataModel localGHSIAddressDataModel = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).t();
    Date localDate = new Date();
    if ((localGHSIUserAuthDataModel != null) && ((!com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), localDate, true)) || (com.grubhub.AppBaseLibrary.android.utils.a.a.a(localGHSIUserAuthDataModel.getSession(), localDate))))
    {
      boolean bool1;
      boolean bool6;
      if ((localGHSIUserAuthDataModel == null) || (com.grubhub.AppBaseLibrary.android.utils.f.a(localGHSIUserAuthDataModel.getFirstName())) || (com.grubhub.AppBaseLibrary.android.utils.f.a(localGHSIUserAuthDataModel.getLastName())))
      {
        bool1 = true;
        bool6 = m();
        if (paramg != g.PICKUP) {
          break label200;
        }
        localObject = ((com.grubhub.AppBaseLibrary.android.dataServices.b.b)localObject).B();
        if ((!bool1) && (com.grubhub.AppBaseLibrary.android.utils.h.a.b((String)localObject))) {
          break label180;
        }
        bool1 = true;
        label146:
        if ((bool1) || (bool6)) {
          break label185;
        }
        c(g.PICKUP);
      }
      for (;;)
      {
        paramg = null;
        if (paramg != null) {
          startActivityForResult(paramg, 0);
        }
        return;
        bool1 = false;
        break;
        label180:
        bool1 = false;
        break label146;
        label185:
        a(paramg, bool1, bool6, false, false, false, false);
        continue;
        label200:
        boolean bool2;
        label217:
        boolean bool3;
        label238:
        boolean bool4;
        if ((localGHSIAddressDataModel == null) || (!localGHSIAddressDataModel.getIsSavedAddress()))
        {
          bool2 = true;
          if ((localGHSIAddressDataModel != null) && (com.grubhub.AppBaseLibrary.android.utils.h.a.b(localGHSIAddressDataModel.getPhone()))) {
            break label320;
          }
          bool3 = true;
          if ((localGHSIRestaurantDataModel == null) || (!localGHSIRestaurantDataModel.isCrossStreetRequired())) {
            break label326;
          }
          bool4 = true;
          label256:
          if ((!bool4) || ((localGHSIAddressDataModel != null) && (!com.grubhub.AppBaseLibrary.android.utils.f.a(localGHSIAddressDataModel.getCrossStreet())))) {
            break label332;
          }
        }
        label320:
        label326:
        label332:
        for (boolean bool5 = true;; bool5 = false)
        {
          if ((bool1) || (bool6) || (bool2) || (bool5) || (bool3)) {
            break label338;
          }
          c(g.DELIVERY);
          break;
          bool2 = false;
          break label217;
          bool3 = false;
          break label238;
          bool4 = false;
          break label256;
        }
        label338:
        a(paramg, bool1, bool6, bool2, bool3, bool5, bool4);
      }
    }
    if (paramg == g.PICKUP) {}
    for (paramg = com.grubhub.AppBaseLibrary.android.login.a.CHECKOUT_PICKUP;; paramg = com.grubhub.AppBaseLibrary.android.login.a.CHECKOUT_DELIVERY)
    {
      paramg = GHSLoginActivity.a(this, paramg, true);
      break;
    }
  }
  
  public void b(String paramString)
  {
    if ((com.grubhub.AppBaseLibrary.android.utils.f.b(paramString)) && (!paramString.equals(GHSCartFragment.class.getSimpleName())) && (d != null))
    {
      d.b(paramString, 1);
      return;
    }
    onBackPressed();
  }
  
  public void c(String paramString)
  {
    GHSReviewOrderFragment localGHSReviewOrderFragment = (GHSReviewOrderFragment)d.a(GHSReviewOrderFragment.class.getSimpleName());
    if (localGHSReviewOrderFragment != null) {
      localGHSReviewOrderFragment.a(paramString);
    }
  }
  
  public void d(String paramString)
  {
    GHSSavedAddressListFragment localGHSSavedAddressListFragment = (GHSSavedAddressListFragment)d.a(GHSSavedAddressListFragment.class.getSimpleName());
    if (localGHSSavedAddressListFragment != null) {
      localGHSSavedAddressListFragment.a(paramString);
    }
    b(GHSAddressInfoFragment.class.getSimpleName());
  }
  
  public void d(boolean paramBoolean)
  {
    GHSSavedPaymentListFragment localGHSSavedPaymentListFragment = (GHSSavedPaymentListFragment)d.a(GHSSavedPaymentListFragment.class.getSimpleName());
    if (localGHSSavedPaymentListFragment != null) {
      localGHSSavedPaymentListFragment.b();
    }
  }
  
  public void e(String paramString)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("restaurant_name", paramString);
    setResult(-1, localIntent);
    finish();
  }
  
  public void f(String paramString)
  {
    GHSIRestaurantDataModel localGHSIRestaurantDataModel = GHSApplication.a().b().U();
    if ((localGHSIRestaurantDataModel != null) && (localGHSIRestaurantDataModel.isCrossStreetRequired())) {}
    for (boolean bool = true;; bool = false)
    {
      d.a().b(2131689599, GHSSavedAddressListFragment.a(paramString, true, bool), GHSSavedAddressListFragment.class.getSimpleName()).a(GHSSavedAddressListFragment.class.getSimpleName()).a();
      return;
    }
  }
  
  public void g_() {}
  
  public void h() {}
  
  public void i()
  {
    d.a().b(2131689599, GHSPaymentInfoFragment.a(com.grubhub.AppBaseLibrary.android.account.e.ADD, true), GHSPaymentInfoFragment.class.getSimpleName()).a(GHSPaymentInfoFragment.class.getSimpleName()).a();
  }
  
  public void j()
  {
    getSupportFragmentManager().a().b(2131689600, GHSGoogleWalletPreAuthFragment.a(), GHSGoogleWalletPreAuthFragment.class.getSimpleName()).a();
  }
  
  public void k()
  {
    s();
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if (paramInt1 == 0)
    {
      switch (paramInt2)
      {
      default: 
        return;
      }
      n();
      if ((paramIntent != null) && (paramIntent.getSerializableExtra("login_type") == com.grubhub.AppBaseLibrary.android.login.a.CHECKOUT_PICKUP)) {}
      for (paramIntent = g.PICKUP;; paramIntent = g.DELIVERY)
      {
        b(paramIntent);
        return;
      }
    }
    if (paramInt1 == 2347)
    {
      d.a(2131689600).onActivityResult(paramInt1, paramInt2, paramIntent);
      return;
    }
    d.a(2131689599).onActivityResult(paramInt1, paramInt2, paramIntent);
  }
  
  public void onBackPressed()
  {
    Fragment localFragment = getSupportFragmentManager().a(2131689599);
    if ((localFragment != null) && ((localFragment instanceof com.grubhub.AppBaseLibrary.android.a))) {}
    for (boolean bool = ((com.grubhub.AppBaseLibrary.android.a)localFragment).f_();; bool = false)
    {
      if (!bool) {
        super.onBackPressed();
      }
      return;
    }
  }
  
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    j();
    setContentView(2130903065);
    c = findViewById(2131690253);
    d = getSupportFragmentManager();
    if (d.a(2131689599) == null)
    {
      paramBundle = GHSCartFragment.d();
      d.a().b(2131689599, paramBundle, GHSCartFragment.class.getSimpleName()).a();
    }
  }
  
  protected void onStop()
  {
    super.onStop();
    if (e != null)
    {
      e.g();
      e = null;
      a(false);
    }
  }
  
  public void r()
  {
    n();
    l();
    Fragment localFragment = d.a(GHSCartFragment.class.getSimpleName());
    if ((localFragment != null) && ((localFragment instanceof GHSCartFragment)))
    {
      ((GHSCartFragment)localFragment).e();
      return;
    }
    b(g.PICKUP);
  }
  
  public void s()
  {
    setResult(22, new Intent());
    finish();
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSCartActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */