package com.braintreepayments.api.dropin;

import java.util.concurrent.atomic.AtomicBoolean;

class BraintreePaymentActivity$2
  implements Runnable
{
  BraintreePaymentActivity$2(BraintreePaymentActivity paramBraintreePaymentActivity) {}
  
  public void run()
  {
    if (!BraintreePaymentActivity.a(a).get()) {
      a.runOnUiThread(new Runnable()
      {
        public void run()
        {
          BraintreePaymentActivity.a(a).set(true);
          a.a();
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     com.braintreepayments.api.dropin.BraintreePaymentActivity.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */