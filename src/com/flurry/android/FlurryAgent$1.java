package com.flurry.android;

import com.flurry.sdk.hn;
import com.flurry.sdk.hw;
import com.flurry.sdk.ja;

final class FlurryAgent$1
  implements hw<ja>
{
  public void a(final ja paramja)
  {
    hn.a().a(new Runnable()
    {
      public void run()
      {
        switch (FlurryAgent.2.a[paramjac.ordinal()])
        {
        }
        do
        {
          return;
        } while (FlurryAgent.a() == null);
        FlurryAgent.a().onSessionStarted();
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.flurry.android.FlurryAgent.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */