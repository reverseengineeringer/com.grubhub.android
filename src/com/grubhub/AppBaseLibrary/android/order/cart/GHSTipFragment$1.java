package com.grubhub.AppBaseLibrary.android.order.cart;

import android.content.Context;
import android.graphics.Typeface;
import android.support.v4.app.w;
import android.text.SpannableString;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import com.grubhub.AppBaseLibrary.android.dataServices.interfaces.GHSIRestaurantDataModel;
import com.grubhub.AppBaseLibrary.android.views.GHSTypefaceSpan;
import com.grubhub.AppBaseLibrary.android.views.h;

class GHSTipFragment$1
  implements View.OnClickListener
{
  GHSTipFragment$1(GHSTipFragment paramGHSTipFragment) {}
  
  public void onClick(View paramView)
  {
    if (paramView.getId() == 2131690126)
    {
      paramView = (Float)paramView.getTag(2131232029);
      localObject = a.getChildFragmentManager();
      if (((w)localObject).a(GHSCustomTipDialogFragment.class.getSimpleName()) == null) {
        GHSCustomTipDialogFragment.a(paramView).show((w)localObject, GHSCustomTipDialogFragment.class.getSimpleName());
      }
      return;
    }
    Object localObject = h.a(GHSTipFragment.a(a).getContext(), a.getString(2131231647));
    String str = GHSTipFragment.a(a).getContext().getString(2131232034);
    SpannableString localSpannableString = new SpannableString(str);
    localSpannableString.setSpan(new GHSTypefaceSpan(null, (Typeface)localObject, (int)GHSTipFragment.a(a).getTextSize()), 0, str.length(), 33);
    GHSTipFragment.a(a).setText(localSpannableString);
    GHSTipFragment.a(a).setTag(2131232029, null);
    if ((paramView.getId() == 2131690122) && (GHSTipFragment.b(a) != null) && (GHSTipFragment.b(a).isCashTipAllowed()))
    {
      GHSTipFragment.a(a, 0.0F);
      GHSTipFragment.a(a, true);
    }
    for (;;)
    {
      GHSTipFragment.a(a, paramView.getTag(2131232030).toString());
      GHSTipFragment.a(a, paramView.getId());
      GHSTipFragment.c(a);
      GHSTipFragment.d(a);
      return;
      if (paramView.getId() != 2131690126)
      {
        GHSTipFragment.a(a, ((Float)paramView.getTag(2131232029)).floatValue());
        GHSTipFragment.a(a, false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.order.cart.GHSTipFragment.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */