package com.paypal.android.sdk.payments;

import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.view.View;
import android.view.View.OnClickListener;
import com.paypal.android.sdk.ek;
import com.paypal.android.sdk.em;
import com.paypal.android.sdk.eq;
import java.util.List;

final class u
  implements View.OnClickListener
{
  u(LoginActivity paramLoginActivity, eq parameq, List paramList) {}
  
  public final void onClick(View paramView)
  {
    paramView = new AlertDialog.Builder(paramView.getContext());
    paramView.setTitle(ek.a(em.aX)).setAdapter(a, new v(this));
    paramView.create().show();
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */