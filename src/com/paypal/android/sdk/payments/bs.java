package com.paypal.android.sdk.payments;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

final class bs
  implements DialogInterface.OnClickListener
{
  bs(PayPalProfileSharingActivity paramPayPalProfileSharingActivity) {}
  
  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    PayPalProfileSharingActivity.b(a).a(PayPalProfileSharingActivity.a(a), true);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.bs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */