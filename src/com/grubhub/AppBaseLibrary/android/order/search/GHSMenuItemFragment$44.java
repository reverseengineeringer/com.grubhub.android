package com.grubhub.AppBaseLibrary.android.order.search;

import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.inputmethod.InputMethodManager;
import com.grubhub.AppBaseLibrary.android.b;
import com.grubhub.AppBaseLibrary.android.c;
import com.grubhub.AppBaseLibrary.android.dataServices.dto.GHSFilterSortCriteria;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSICartDataModel;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.order.cart.GHSUpdateCartTimeDialogFragment;
import com.grubhub.AppBaseLibrary.android.order.g;
import com.grubhub.AppBaseLibrary.android.order.l;

class GHSMenuItemFragment$44
  implements View.OnClickListener
{
  GHSMenuItemFragment$44(GHSMenuItemFragment paramGHSMenuItemFragment) {}
  
  public void onClick(View paramView)
  {
    final Object localObject = paramView.getContext();
    ((InputMethodManager)((Context)localObject).getSystemService("input_method")).hideSoftInputFromWindow(paramView.getWindowToken(), 2);
    if (GHSMenuItemFragment.h(a)) {
      if (GHSMenuItemFragment.i(a) != null)
      {
        paramView = "tel: " + GHSMenuItemFragment.i(a);
        localObject = new Intent("android.intent.action.DIAL");
        ((Intent)localObject).setData(Uri.parse(paramView));
        a.startActivity((Intent)localObject);
      }
    }
    do
    {
      return;
      if (GHSMenuItemFragment.j(a))
      {
        c.a((Context)localObject, 2131231671, 2131231670, 2131232071, 2131231711, 0, new b()
        {
          public void a(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            GHSMenuItemFragment.a(a, localObject, true);
          }
          
          public void b(DialogInterface paramAnonymousDialogInterface, int paramAnonymousInt)
          {
            paramAnonymousDialogInterface.dismiss();
          }
        });
        return;
      }
      if (!a.d()) {
        break;
      }
    } while (GHSMenuItemFragment.k(a) == null);
    long l2 = 0L;
    long l1 = l2;
    if (GHSMenuItemFragment.l(a) != null)
    {
      l1 = l2;
      if (GHSMenuItemFragment.l(a).getSubOrderType() == l.FUTURE) {
        l1 = GHSMenuItemFragment.l(a).getWhenFor();
      }
    }
    localObject = GHSMenuItemFragment.k(a).getRestaurantId();
    String str1 = GHSMenuItemFragment.k(a).getLatitude();
    String str2 = GHSMenuItemFragment.k(a).getLongitude();
    String str3 = GHSMenuItemFragment.m(a).getCartId();
    boolean bool = GHSMenuItemFragment.m(a).isAsapOrder();
    l2 = GHSMenuItemFragment.m(a).getExpectedTimeInMillis();
    if (GHSMenuItemFragment.l(a) == null) {}
    for (paramView = g.DELIVERY;; paramView = GHSMenuItemFragment.l(a).getOrderType())
    {
      GHSUpdateCartTimeDialogFragment.a((String)localObject, str1, str2, str3, bool, l2, l1, paramView).show(a.getChildFragmentManager(), GHSUpdateCartTimeDialogFragment.class.getSimpleName());
      return;
    }
    GHSMenuItemFragment.a(a, (Context)localObject, GHSMenuItemFragment.n(a));
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.search.GHSMenuItemFragment.44
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */