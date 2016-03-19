package com.paypal.android.sdk.payments;

import android.os.Bundle;
import com.paypal.android.sdk.bN;
import java.util.Iterator;
import java.util.Set;

class cj
{
  private static final String a = cj.class.getSimpleName();
  
  public static ch a(Bundle paramBundle)
  {
    String str1 = paramBundle.getString("authAccount");
    String str2 = paramBundle.getString("code");
    String str3 = paramBundle.getString("nonce");
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str4 = (String)localIterator.next();
      Object localObject = paramBundle.get(str4);
      if (localObject == null) {
        String.format("%s:null", new Object[] { str4 });
      } else {
        String.format("%s:%s (%s)", new Object[] { str4, localObject.toString(), localObject.getClass().getName() });
      }
    }
    return new ch(str3, new bN(str2, null), str1);
  }
}

/* Location:
 * Qualified Name:     com.paypal.android.sdk.payments.cj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */