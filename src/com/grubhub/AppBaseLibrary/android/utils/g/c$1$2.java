package com.grubhub.AppBaseLibrary.android.utils.g;

import com.braintreepayments.api.e;
import com.braintreepayments.api.exceptions.ErrorWithResponse;
import com.grubhub.AppBaseLibrary.android.b.b;

class c$1$2
  implements e
{
  c$1$2(c.1 param1) {}
  
  public void a(ErrorWithResponse paramErrorWithResponse)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "BrainTree Error: " + paramErrorWithResponse.getMessage());
    if (a.b.c != null) {
      a.b.c.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
    }
  }
  
  public void a(Throwable paramThrowable)
  {
    com.grubhub.AppBaseLibrary.android.utils.e.a.b("Unable to retrieve PayPal payment nonce.", "BrainTree Error: " + paramThrowable.getMessage());
    if (a.b.c != null) {
      a.b.c.a(new b(com.grubhub.AppBaseLibrary.android.b.a.ERROR_CODE_UNKNOWN));
    }
  }
}

/* Location:
 * Qualified Name:     com.grubhub.AppBaseLibrary.android.utils.g.c.1.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */