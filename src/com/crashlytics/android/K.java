package com.crashlytics.android;

import com.crashlytics.android.internal.aG;
import java.io.InputStream;

final class k
  implements aG
{
  k(PinningInfoProvider paramPinningInfoProvider) {}
  
  public final InputStream a()
  {
    return a.getKeyStoreStream();
  }
  
  public final String b()
  {
    return a.getKeyStorePassword();
  }
  
  public final String[] c()
  {
    return a.getPins();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */