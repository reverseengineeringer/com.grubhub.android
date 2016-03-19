package com.paypal.android.sdk.payments;

import android.content.Intent;
import com.paypal.android.sdk.v;
import java.util.Iterator;
import java.util.List;

final class av
  extends bw
{
  av(Intent paramIntent, PayPalConfiguration paramPayPalConfiguration)
  {
    super(paramIntent, paramPayPalConfiguration, true);
  }
  
  protected final String a()
  {
    return PayPalTouchActivity.class.getSimpleName();
  }
  
  final boolean e()
  {
    if (super.e())
    {
      Object localObject = (PayPalOAuthScopes)b().getParcelableExtra("com.paypal.android.sdk.requested_scopes");
      new v();
      localObject = ((PayPalOAuthScopes)localObject).a().iterator();
      do
      {
        if (!((Iterator)localObject).hasNext()) {
          break;
        }
      } while (!v.a((String)((Iterator)localObject).next()));
      for (int i = 0; i != 0; i = 1) {
        return true;
      }
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */