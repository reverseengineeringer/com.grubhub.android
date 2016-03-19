package com.google.android.gms.wallet;

import android.os.Bundle;
import com.google.android.gms.common.internal.aq;

public final class e
{
  private e(PaymentMethodTokenizationParameters paramPaymentMethodTokenizationParameters) {}
  
  public PaymentMethodTokenizationParameters a()
  {
    return a;
  }
  
  public e a(int paramInt)
  {
    a.a = paramInt;
    return this;
  }
  
  public e a(String paramString1, String paramString2)
  {
    aq.a(paramString1, "Tokenization parameter name must not be empty");
    aq.a(paramString2, "Tokenization parameter value must not be empty");
    a.b.putString(paramString1, paramString2);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.wallet.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */